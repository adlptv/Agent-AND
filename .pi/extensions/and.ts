/**
 * AND — Agent Not Detect — Pi Code Extension
 */
import { readFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

const extensionDir = dirname(fileURLToPath(import.meta.url));
const packageRoot = resolve(extensionDir, "../..");
const skillsDir = resolve(packageRoot, "skills");

export default function andPiExtension(pi: ExtensionAPI) {
  let injectBootstrap = true;

  pi.on("resources_discover", async () => ({
    skillPaths: [skillsDir],
  }));

  pi.on("session_start", async () => { injectBootstrap = true; });
  pi.on("session_compact", async () => { injectBootstrap = true; });
  pi.on("agent_end", async () => { injectBootstrap = false; });

  pi.on("context", async (event) => {
    if (!injectBootstrap) return;
    // Inject AND bootstrap on session start
  });
}
