import { execa } from 'execa';
import { writeFile, rm, mkdir } from 'node:fs/promises';

const { stdout } = await execa('vivid', ['themes']);
const themes = stdout.split('\n').filter(Boolean);

await rm('plugins', { recursive: true, force: true });
await mkdir('plugins');

for (const theme of themes) {
  const { stdout: lsColors } = await execa('vivid', ['generate', theme]);
  await writeFile(
    `plugins/vivid-${theme.replaceAll('_', '-')}.zsh`,
    `export LS_COLORS="${lsColors}"\n`
  );
}
