/**
 * AND — Agent Not Detect — OpenCode Plugin
 * Auto-registers 7 AND agents. Resolves skills path correctly.
 */
import path from 'path';
import fs from 'fs';
import os from 'os';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// Find skills directory relative to this plugin
// Plugin is at: <opencode-config>/plugins/and.js
// Skills are at: <opencode-config>/and-skills/
function findSkillsDir() {
  // Priority 1: Same config directory (where plugin is installed)
  const configDir = path.dirname(__dirname);
  const localSkills = path.join(configDir, 'and-skills');
  if (fs.existsSync(localSkills)) return localSkills;

  // Priority 2: Home directory fallback
  const homeSkills = path.join(os.homedir(), '.opencode', 'and-skills');
  if (fs.existsSync(homeSkills)) return homeSkills;

  // Priority 3: XDG config on Linux
  const xdgSkills = path.join(os.homedir(), '.config', 'opencode', 'and-skills');
  if (fs.existsSync(xdgSkills)) return xdgSkills;

  // Priority 4: Repo-relative (development)
  const repoSkills = path.resolve(__dirname, '..', '..', 'skills');
  if (fs.existsSync(repoSkills)) return repoSkills;

  return null;
}

const extractFrontmatter = (content) => {
  const match = content.match(/^---\n([\s\S]*?)\n---/);
  if (!match) return { name: 'unknown', description: '' };
  const fm = {};
  for (const line of match[1].split('\n')) {
    const idx = line.indexOf(':');
    if (idx > 0) {
      const key = line.slice(0, idx).trim();
      const value = line.slice(idx + 1).trim().replace(/^["']|["']$/g, '');
      fm[key] = value;
    }
  }
  return fm;
};

const discoverSkills = (skillsDir) => {
  const skills = [];
  if (!skillsDir || !fs.existsSync(skillsDir)) return skills;

  const dirs = fs.readdirSync(skillsDir, { withFileTypes: true })
    .filter(d => d.isDirectory());

  for (const dir of dirs) {
    const skillPath = path.join(skillsDir, dir.name, 'SKILL.md');
    if (fs.existsSync(skillPath)) {
      const content = fs.readFileSync(skillPath, 'utf8');
      const fm = extractFrontmatter(content);
      skills.push({
        name: fm.name || dir.name,
        description: fm.description || '',
        path: skillPath,
        dir: path.join(skillsDir, dir.name)
      });
    }
  }
  return skills;
};

export default {
  name: 'agent-and',
  version: '2.0.1',
  description: 'AND — Agent Not Detect: 7 specialized agents',

  async init(api) {
    const skillsDir = findSkillsDir();
    if (!skillsDir) {
      console.warn('[AND] Skills directory not found. Run install.ps1 / install.sh first.');
      return { error: 'skills-not-found' };
    }

    const skills = discoverSkills(skillsDir);
    console.log(`[AND] Found ${skills.length} agents at ${skillsDir}:`);
    for (const s of skills) {
      console.log(`  - ${s.name}`);
    }

    if (api.config) {
      api.config.skillsDir = api.config.skillsDir || [];
      if (!api.config.skillsDir.includes(skillsDir)) {
        api.config.skillsDir.push(skillsDir);
      }
    }

    return { skills, skillsDir, agentCount: skills.length };
  }
};
