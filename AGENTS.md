# Agent Guidelines for boovan.org

This document provides guidelines for AI coding agents working on the boovan.org codebase.

## Project Overview

This is a static website for The Boovan (不晚), a North American Chinese band, built with Hugo using the Blowfish theme and deployed via GitHub Pages. The site features bilingual support (English + Chinese), contact forms, music demos, and service information.

## Build, Test, and Deployment Commands

### Hugo Site Building
```bash
# Build the Hugo site (generates to ./public)
hugo --minify

# Build with specific config
hugo --minify --config hugo.toml

# Local development server (if needed)
hugo server --buildDrafts --disableFastRender
```

### Docker Operations
```bash
# Build Docker image (includes Hugo build)
make docker-build

# Stop existing container
make stop

# Run container (exposes on port 28080)
make run

# Full deployment (build + stop + run)
make deploy
# or
make update
```

### CI/CD
- GitHub Actions automatically builds and deploys to GitHub Pages on push to `main`
- Uses Hugo v0.141.0 (extended version) - required for Blowfish theme
- Checks out submodules (Blowfish theme)
- Build command: `hugo --minify`
- Output directory: `./public`

### Testing
This project currently has no automated tests. When adding tests:
- Run single test: TBD (no test framework configured)
- Run all tests: TBD

## Project Structure

```
boovan.org/
├── themes/
│   └── blowfish/     # Blowfish Hugo theme (git submodule)
├── content/          # Markdown content files
│   ├── about/        # About page (EN + ZH)
│   ├── music/        # Music and demos
│   ├── services/     # Service offerings
│   ├── news/         # Blog posts and updates
│   ├── contact/      # Contact form page
│   └── _index.md     # Homepage content
├── config/
│   └── _default/     # Hugo configuration files
│       ├── hugo.toml        # Main site config
│       ├── params.toml      # Theme parameters
│       ├── languages.en.toml # English language config
│       └── menus.en.toml    # Navigation menus
├── assets/
│   └── css/
│       └── schemes/
│           └── boovan.css   # Custom color scheme
├── static/           # Static assets
│   └── images/       # Images and media
├── public/           # Generated site output (git-ignored)
├── .github/          # GitHub Actions workflows
├── Makefile          # Build automation
├── Dockerfile        # Caddy container for local testing
└── FORMSPREE_SETUP.md # Contact form setup guide
```

## Code Style Guidelines

### Content Files (Markdown)

**Front Matter:**
- Use YAML format (between `---` markers)
- Required fields: `title`, `description`
- Optional: `date`, `draft`, `tags`, `showTableOfContents`

**Structure:**
- Use Hugo shortcodes for enhanced functionality
- Keep content semantic and accessible
- Use proper heading hierarchy (h1, h2, h3)

**Blowfish Shortcodes:**
- `{{< lead >}}` - Emphasized introductory text
- `{{< button >}}` - Call-to-action buttons
- `{{< alert >}}` - Highlighted notices
- `{{< soundcloud >}}` - Embed SoundCloud tracks
- `{{< youtube >}}` - Embed YouTube videos

**Example:**
```markdown
---
title: "Page Title"
description: "Page description"
---

# Heading

{{< lead >}}
Introduction text
{{< /lead >}}

Content here...

{{< button href="/contact/" >}}
Button Text
{{< /button >}}
```

### Configuration Files

**Location:** `config/_default/`

**Main Files:**
- `hugo.toml` - Core Hugo settings
- `params.toml` - Blowfish theme parameters
- `languages.en.toml` - English language config
- `menus.en.toml` - Site navigation menus

**Format:**
- Use TOML format
- Keep settings minimal and purposeful
- Document non-obvious configuration choices

**Key Settings:**
- `baseURL`: Must be `https://boovan.org/`
- `theme`: Must be `"blowfish"`
- `colorScheme`: Set to `"boovan"` for custom dark theme
- `defaultAppearance`: Set to `"dark"`

### Theme Customization

**Color Scheme:**
- Custom scheme located at `assets/css/schemes/boovan.css`
- Dark blue theme matching original site design
- Primary color: Sky blue (#38bdf8)
- Background: Deep navy (#050816)

**Customization Options:**
- Override theme files by placing them in site root with same path
- Custom CSS in `assets/css/schemes/`
- Custom layouts in `layouts/`
- Custom shortcodes in `layouts/shortcodes/`

**Blowfish Theme:**
- Installed as git submodule in `themes/blowfish/`
- Do not modify theme files directly
- Requires Hugo v0.141.0+ (extended version)
- Full documentation: https://blowfish.page/docs/

### Asset Management

**Images:**
- Store in `static/images/`
- Use descriptive filenames (e.g., `band2025.jpg`)
- Optimize images before committing
- Use appropriate formats (JPEG for photos, PNG for graphics, WebP when supported)

**Paths:**
- Reference static assets with absolute paths: `/images/file.jpg`
- Hugo copies `static/` contents to root of `public/`

## Naming Conventions

### Files and Directories
- Lowercase with hyphens for multi-word names
- Templates: `index.html`, `single.html`, `list.html`
- Layouts follow Hugo conventions
- Static assets: descriptive, version-aware names when needed

### HTML/CSS
- Class names: kebab-case (e.g., `card`, `nav-menu`)
- IDs: kebab-case, use sparingly
- CSS variables: `--property-name` format

### Configuration
- TOML keys: camelCase (Hugo convention)
- Environment variables: SCREAMING_SNAKE_CASE

## Error Handling and Validation

### Hugo Templates
- Use `with` to check for existence: `{{ with .Site.Params.author }}{{ . }}{{ end }}`
- Provide fallbacks for optional content
- Test builds locally before pushing

### Docker
- Make targets use `-` prefix to ignore errors when appropriate (e.g., `- docker rm -f`)
- Check container logs: `docker logs boovan`

### CI/CD
- Monitor GitHub Actions for build failures
- Validate Hugo version compatibility
- Ensure all static assets are committed

## Git Workflow

### Commits
- Use conventional commit format when possible
- Clear, descriptive messages
- Keep commits atomic and focused

### Branches
- `main`: Production branch, auto-deploys to GitHub Pages
- Feature branches: Use descriptive names

### Files to Never Commit
- `.hugo_build.lock` (already ignored)
- `public/` directory (build artifact)
- Local environment files
- Large unoptimized images

## Common Tasks

### Adding a New Page
1. Create markdown file in `content/[section]/`
   ```bash
   hugo new [section]/page-name.md
   ```
2. Edit front matter (title, description, etc.)
3. Write content using markdown and shortcodes
4. Update `config/_default/menus.en.toml` if needed
5. Test locally and commit

### Adding a Blog Post
1. Create file in `content/news/`
   ```bash
   hugo new news/post-title.md
   ```
2. Set `draft: false` when ready to publish
3. Add tags for organization
4. Include date in front matter

### Adding Chinese Translation
1. Create file with `.zh-cn.md` suffix
   - Example: `about/index.zh-cn.md`
2. Translate content
3. Keep same front matter structure
4. Chinese content auto-displays when language toggled

### Embedding Media
**SoundCloud:**
```markdown
{{< soundcloud "username/track-name" >}}
```

**YouTube:**
```markdown
{{< youtube "video-id" >}}
```

### Updating Color Scheme
1. Edit `assets/css/schemes/boovan.css`
2. Modify CSS custom properties (--color-primary-*, etc.)
3. Test in light and dark modes
4. Rebuild and deploy

### Updating Contact Form
1. Create Formspree account (see FORMSPREE_SETUP.md)
2. Replace `YOUR_FORM_ID` in `content/contact/_index.md`
3. Test form submission after deployment

### Local Testing
```bash
hugo server --buildDrafts
# Visit http://localhost:1313
# Note: Requires Hugo v0.141.0+ extended
```

## Notes for AI Agents

### Theme & Framework
- Uses Blowfish Hugo theme (v2) - a powerful, Tailwind CSS-based theme
- Theme is installed as git submodule - do not modify theme files directly
- Custom overrides go in site root (assets/, layouts/, etc.)
- Requires Hugo Extended v0.141.0+

### Content Strategy
- English primary language with Chinese translation for About page
- Blog posts in `content/news/` for bi-weekly updates
- Services page lists: band performance, equipment rental, DJ, production
- Music page includes SoundCloud embeds for demos

### Bilingual Support
- Implemented via Hugo's multilingual features
- Chinese content uses `.zh-cn.md` suffix
- Language switcher in site navigation
- Currently: Full English site + Chinese About page

### Forms & Integrations
- Contact form uses Formspree (requires setup - see FORMSPREE_SETUP.md)
- Form ID placeholder needs replacement before production use
- Free tier: 50 submissions/month

### Deployment
- GitHub Actions auto-deploys to GitHub Pages on push to main
- Submodules must be checked out in CI/CD
- Build requires Hugo Extended v0.141.0+
- No Docker deployment to production (GitHub Pages only)

### Design Philosophy
- Dark theme matching original site aesthetic
- Community-focused non-profit band
- Emphasize Chinese American cultural identity
- "Never Too Late" tagline throughout
