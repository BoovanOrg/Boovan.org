# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static website for The Boovan (不晚) - a North American Chinese band. Built with Hugo using the Blowfish theme, deployed via GitHub Pages.

## Essential Commands

```bash
# Local development (requires Hugo Extended v0.141.0+)
hugo server --buildDrafts

# Production build
hugo --minify

# Docker local testing
make deploy    # Full: build + run on port 28080
make stop      # Stop container
```

## Architecture

- **Framework**: Hugo static site generator with Blowfish theme (git submodule)
- **Config**: TOML files in `config/_default/` (hugo.toml, params.toml, menus.en.toml)
- **Content**: Markdown files in `content/` with YAML front matter
- **Custom CSS**: `assets/css/schemes/boovan.css` (dark blue theme)
- **Custom shortcodes**: `layouts/shortcodes/` (e.g., soundcloud.html)
- **Deployment**: GitHub Actions auto-deploys to GitHub Pages on push to `main`

## Key Conventions

- Do not modify files in `themes/blowfish/` directly - override by placing files in site root
- Chinese translations use `.zh-cn.md` suffix (e.g., `about/index.zh-cn.md`)
- Static assets go in `static/images/`, referenced as `/images/file.jpg`
- Contact form uses Formspree - see FORMSPREE_SETUP.md for configuration

## Common Shortcodes

```markdown
{{< lead >}}Emphasized intro text{{< /lead >}}
{{< button href="/contact/" >}}Button Text{{< /button >}}
{{< soundcloud "username/track-name" >}}
{{< youtube "video-id" >}}
```

## Additional Documentation

See AGENTS.md for comprehensive developer guidelines including code style, naming conventions, and detailed task workflows.
