/**
 * AND — Agent Not Detect — OpenCode Plugin
 * Registers 7 AND subagents as dispatchable skills.
 */
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const skillsDir = path.resolve(__dirname, '..', '..', 'skills');

// Extract YAML frontmatter from SKILL.md
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

// Discover all AND skills
const discoverSkills = () => {
  const skills = [];
  if (!fs.existsSync(skillsDir)) return skills;

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

// Plugin entry point
export default {
  name: 'agent-and',
  version: '2.0.1',
  description: 'AND — Agent Not Detect: 7 specialized subagents',
  
  async init(api) {
    const skills = discoverSkills();
    console.log(`[AND] Discovered ${skills.length} agents:`);
    
    for (const skill of skills) {
      console.log(`  - ${skill.name}: ${skill.description.substring(0, 60)}`);
    }

    // Register skills directory
    if (api.config) {
      api.config.skillsDir = api.config.skillsDir || [];
      if (!api.config.skillsDir.includes(skillsDir)) {
        api.config.skillsDir.push(skillsDir);
      }
    }

    return {
      skills,
      skillsDir,
      agentCount: skills.length
    };
  }
};
