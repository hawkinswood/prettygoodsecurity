# Pretty Good Security

[![Built with Hugo](https://img.shields.io/badge/Built_with-Hugo-FF4088?logo=hugo)](https://gohugo.io/)
[![Theme - PaperMod](https://img.shields.io/badge/Theme-PaperMod-blue)](https://github.com/adityatelange/hugo-PaperMod)
[![Hosted on GitHub Pages](https://img.shields.io/badge/Hosted_on-GitHub_Pages-181717?logo=github)](https://pages.github.com/)

A modern blog dedicated to security best practices, featuring comprehensive guides on network security, device security, and more. Visit the live site at [https://hawkinswood.github.io/prettygoodsecurity](https://hawkinswood.github.io/prettygoodsecurity)

## 🚀 Features

- Comprehensive security guides
- Modern, responsive design using PaperMod theme
- Fast and efficient static site generation with Hugo
- Full-text search functionality
- Category and tag organization
- Mobile-friendly layout
- Security headers implementation
- Content organization by topics

## 🛠️ Technical Stack

- **Static Site Generator**: [Hugo](https://gohugo.io/)
- **Theme**: [PaperMod](https://github.com/adityatelange/hugo-PaperMod)
- **Hosting**: GitHub Pages
- **Search**: Built-in JSON-based search
- **Content Format**: Markdown

## 📁 Project Structure

```
content/
├── _index.md              # Homepage content
├── posts/                 # Blog posts
├── pages/                 # Main guide sections
    ├── tailscale/        # Tailscale documentation
    ├── network/          # Network security guides
    ├── router/           # Router security guides
    ├── iphone/           # iOS security guides
    ├── mac/              # macOS security guides
    ├── windows/          # Windows security guides
    └── resources/        # Security resources and tools
```

## 🔒 Security Features

- **Content Security Policy (CSP)** implementation
- **HTTP Security Headers**:
  - X-Frame-Options
  - X-Content-Type-Options
  - Referrer-Policy
  - Strict-Transport-Security
  - Permissions-Policy
- Secure asset handling
- No external dependencies in core functionality

## 🚀 Getting Started

### Prerequisites

- Hugo Extended v0.112.4 or later (required by PaperMod theme)
- Git
- Go 1.18 or later (optional, for advanced usage)

### Installation

#### macOS

Using Homebrew:
```bash
brew install hugo
```

Using MacPorts:
```bash
sudo port install hugo
```

#### Windows

Using Chocolatey:
```bash
choco install hugo-extended
```

Using Scoop:
```bash
scoop install hugo-extended
```

#### Linux

Using Snap:
```bash
snap install hugo
```

Using apt (Debian/Ubuntu):
```bash
sudo apt update
sudo apt install hugo
```

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/hawkinswood/prettygoodsecurity.git
   cd prettygoodsecurity
   ```

2. Update submodules (to get the PaperMod theme):
   ```bash
   git submodule update --init --recursive
   ```

3. Start the development server:
   ```bash
   hugo server --buildDrafts --buildFuture --disableFastRender
   ```
   - `--buildDrafts`: Include content marked as draft
   - `--buildFuture`: Include content with future dates
   - `--disableFastRender`: Ensure all changes are reflected

4. View the site at:
   - Local: `http://localhost:1313/prettygoodsecurity/`
   - Network: `http://[your-ip]:1313/prettygoodsecurity/`

### Building for Production

1. Build the site:
   ```bash
   hugo --minify
   ```
   This will:
   - Generate optimized static files in `public/`
   - Minify HTML, CSS, JS, JSON, and SVG files
   - Create all necessary assets

2. Test the production build:
   ```bash
   hugo server --renderToDisk --minify --disableFastRender
   ```

### Deploying to GitHub Pages

The site is automatically deployed to GitHub Pages using GitHub Actions when changes are pushed to the main branch. The workflow is defined in `.github/workflows/hugo.yaml`.

## 📝 Content Management

### Adding New Content

1. Create a new post:
   ```bash
   hugo new posts/my-new-post.md
   ```

2. Create a new guide page:
   ```bash
   hugo new pages/guide-name/index.md
   ```

### Content Guidelines

1. Front Matter Requirements:
   ```yaml
   ---
   title: "Your Title"
   date: YYYY-MM-DDT12:00:00+00:00
   description: "Brief description"
   tags: ["relevant", "tags"]
   categories: ["category"]
   author: "Your Name"
   weight: 1  # For ordering
   ShowReadingTime: true
   ShowBreadCrumbs: true
   ShowPostNavLinks: true
   ShowWordCount: true
   UseHugoToc: true
   ---
   ```

2. Images:
   - Place images in `static/images/`
   - Reference in content: `/images/filename.png`
   - Optimize images before committing
   - Include alt text for accessibility

3. Code Blocks:
   - Use fenced code blocks with language
   - Example:
     ````markdown
     ```python
     def hello():
         print("Hello, World!")
     ```
     ````

## 🧪 Testing

1. Check for broken links:
   ```bash
   hugo server --navigateToChanged --buildDrafts
   ```

2. Validate production build:
   ```bash
   hugo --minify --debug
   ```

## 📦 Updating Dependencies

1. Update Hugo:
   ```bash
   # macOS
   brew upgrade hugo

   # Windows
   choco upgrade hugo-extended
   ```

2. Update theme:
   ```bash
   git submodule update --remote --merge
   ```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/name`
3. Commit changes: `git commit -am 'Add feature'`
4. Push to branch: `git push origin feature/name`
5. Submit a Pull Request
   ```

2. Create a new guide:
   ```bash
   hugo new pages/guide-name/index.md
   ```

### Front Matter Template

```yaml
---
title: "Your Title"
date: YYYY-MM-DDT12:00:00+00:00
description: "Brief description"
tags: ["relevant", "tags"]
categories: ["category"]
author: "Your Name"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
---
```

## 🎨 Theme Customization

The site uses the PaperMod theme with custom configurations in `hugo.yaml`:

- Custom color schemes
- Responsive design
- Navigation menu customization
- Security headers
- Asset caching
- Search functionality

## 🔍 Search Implementation

The site includes a full-text search feature:
- JSON-based index
- Client-side search functionality
- No external dependencies
- Covers all content including posts and guides

## 📊 Performance

The site is optimized for performance:
- Minified assets
- Optimized images
- Efficient caching
- No external JavaScript dependencies
- Fast loading times

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/new-feature`
3. Commit your changes: `git commit -am 'Add new feature'`
4. Push to the branch: `git push origin feature/new-feature`
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🔄 Updates and Maintenance

The site is automatically built and deployed using GitHub Actions when changes are pushed to the main branch.

### Regular Maintenance Tasks

1. Update Hugo version
2. Check for theme updates
3. Verify security headers
4. Update content
5. Test across different devices and browsers

## 📞 Support

For support, please open an issue in the GitHub repository.
