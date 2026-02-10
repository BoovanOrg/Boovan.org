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
git clone --recursive git@github.com:BoovanOrg/Boovan.org.git
cd Boovan.org

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

### GitHub Pages (Production)

The site is hosted on GitHub Pages and auto-deploys via GitHub Actions on every push to `main`.

#### First-Time Setup

1. **Go to repo Settings** on GitHub: https://github.com/BoovanOrg/Boovan.org/settings/pages

2. **Set Pages source** to **GitHub Actions** (not "Deploy from a branch")

3. **Configure custom domain**:
   - In the Pages settings, enter `boovan.org` as the custom domain
   - Check **Enforce HTTPS**

4. **Set up DNS** at your domain registrar. Add these records:

   | Type  | Name | Value |
   |-------|------|-------|
   | A     | @    | 185.199.108.153 |
   | A     | @    | 185.199.109.153 |
   | A     | @    | 185.199.110.153 |
   | A     | @    | 185.199.111.153 |
   | CNAME | www  | BoovanOrg.github.io |

5. **Add CNAME file** (already handled automatically by GitHub when you set the custom domain, but you can also add `static/CNAME` containing `boovan.org` to ensure it persists across deploys)

6. **Push to main** and the GitHub Actions workflow (`.github/workflows/hugo-pages.yml`) will automatically:
   - Check out the code with submodules
   - Build the site with Hugo v0.141.0 Extended
   - Deploy to GitHub Pages

7. **Verify** the site is live at https://boovan.org/

#### How It Works

```
Push to main → GitHub Actions → Hugo builds site → Deploys to GitHub Pages
```

The workflow file `.github/workflows/hugo-pages.yml` handles everything. No manual build or upload is needed.

#### Troubleshooting

- **Build fails**: Check the Actions tab at https://github.com/BoovanOrg/Boovan.org/actions for error details
- **404 after deploy**: Ensure Pages source is set to "GitHub Actions", not "Deploy from a branch"
- **Custom domain not working**: DNS propagation can take up to 48 hours. Verify DNS with `dig boovan.org`
- **HTTPS not available**: Wait for GitHub to provision the SSL certificate (can take a few minutes after DNS is configured)

### Local Development (Docker)

```bash
make deploy  # Builds Hugo site and runs in Docker on port 28080
make stop    # Stop the container
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

Content © 2026 The Boovan. All rights reserved.

Blowfish theme: [MIT License](https://github.com/nunocoracao/blowfish/blob/main/LICENSE)

---

**不晚 · Never Too Late** 🎸🎵
