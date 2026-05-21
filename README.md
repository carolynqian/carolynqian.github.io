# carolynqian.github.io

Personal site built with [Quartz 4](https://quartz.jzhao.xyz/) — live at <https://carolynqian.github.io>.

## How it works

- **Content lives in the Obsidian vault, not here** — in the vault's `Published/` folder.
- `publish.sh` copies `Published/` → `content/`, commits, and pushes.
- The GitHub Action in `.github/workflows/deploy.yml` builds the site and deploys it to GitHub Pages on every push to `main`.

## Commands

- `./preview.sh` — live local preview at <http://localhost:8080> (reads the vault directly, publishes nothing)
- `./publish.sh` — publish: sync content from the vault, commit, push, deploy

## Notes

- A note appears on the site only with `publish: true` in its frontmatter (the `ExplicitPublish` filter).
- Attachments for published notes go in `Published/attachments/`.
- To update Quartz itself: `git fetch upstream && git merge upstream/v4`.
