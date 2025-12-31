# The Boovan Website

Official website for The Boovan (不晚) - a North American Chinese band based in North Texas.

**Never Too Late** - Playing for fun, love, and the people we care about.

## 🎵 About

This is a static website built with Hugo using the Blowfish theme. The site features:

- **Bilingual Support**: English primary with Chinese translation for About page
- **Music Demos**: SoundCloud and YouTube embeds
- **Service Offerings**: Band performances, equipment rental, DJ services, production
- **Contact Form**: Service booking via Formspree
- **Blog/News**: Bi-weekly updates and announcements
- **Dark Theme**: Custom color scheme matching our brand

## 🚀 Quick Start

### Prerequisites
- Hugo Extended v0.141.0+ ([install guide](https://gohugo.io/installation/))
- Git with submodules support

### Local Development

```bash
# Clone with submodules
git clone --recursive https://github.com/[username]/boovan.org.git
cd boovan.org

# Or if already cloned
git submodule update --init --recursive

# Start development server
hugo server --buildDrafts

# Visit http://localhost:1313
```

### Build for Production

```bash
hugo --minify
```

## 📁 Project Structure

```
boovan.org/
├── content/          # Markdown content
│   ├── about/        # About page (EN + ZH-CN)
│   ├── music/        # Music and demos
│   ├── services/     # Service offerings
│   ├── news/         # Blog posts
│   └── contact/      # Contact form
├── config/_default/  # Hugo configuration
├── assets/           # Custom CSS (color scheme)
├── themes/blowfish/  # Blowfish theme (submodule)
└── static/images/    # Images and media
```

## 🎨 Customization

### Color Scheme
Edit `assets/css/schemes/boovan.css` to modify the dark blue theme.

### Navigation
Edit `config/_default/menus.en.toml` to update menu items.

### Site Settings
Edit `config/_default/params.toml` for theme configuration.

## 📝 Content Management

### Add a Blog Post
```bash
hugo new news/my-post-title.md
```

### Add a Page
```bash
hugo new [section]/page-name.md
```

### Embed Media
```markdown
{{< soundcloud "username/track-name" >}}
{{< youtube "video-id" >}}
```

## 📧 Contact Form Setup

The contact form requires Formspree setup:

1. Create account at [formspree.io](https://formspree.io/)
2. Create a new form
3. Replace `YOUR_FORM_ID` in `content/contact/_index.md`

See [FORMSPREE_SETUP.md](FORMSPREE_SETUP.md) for detailed instructions.

## 🚢 Deployment

The site auto-deploys to GitHub Pages via GitHub Actions when pushed to `main` branch.

### Manual Deployment
```bash
make deploy  # Builds and runs Docker container locally
```

## 📚 Documentation

- [AGENTS.md](AGENTS.md) - Complete guidelines for developers
- [FORMSPREE_SETUP.md](FORMSPREE_SETUP.md) - Contact form setup
- [Blowfish Docs](https://blowfish.page/docs/) - Theme documentation

## 🎯 Features

- ✅ Responsive design
- ✅ Dark mode (default)
- ✅ Bilingual (EN + ZH-CN)
- ✅ SoundCloud/YouTube embeds
- ✅ Contact form with Formspree
- ✅ Blog with RSS
- ✅ SEO optimized
- ✅ Fast static site

## 🛠 Tech Stack

- **Framework**: Hugo Extended v0.141.0+
- **Theme**: Blowfish v2
- **CSS**: Tailwind CSS (via theme)
- **Hosting**: GitHub Pages
- **CI/CD**: GitHub Actions
- **Forms**: Formspree

## 📄 License

Content © 2025 The Boovan. All rights reserved.

Blowfish theme: [MIT License](https://github.com/nunocoracao/blowfish/blob/main/LICENSE)

---

**不晚 · Never Too Late** 🎸🎵
