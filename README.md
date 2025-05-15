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

- Hugo Extended v0.95.0 or later
- Git

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/hawkinswood/prettygoodsecurity.git
   cd prettygoodsecurity
   ```

2. Install Hugo Extended version:
   ```bash
   # macOS with Homebrew
   brew install hugo

   # Windows with Chocolatey
   choco install hugo-extended
   ```

3. Start the development server:
   ```bash
   hugo server -D
   ```

4. View the site at `http://localhost:1313/prettygoodsecurity/`

### Building the Site

```bash
hugo --minify
```

The static files will be generated in the `public/` directory.

## 📝 Content Management

### Adding New Content

1. Create a new post:
   ```bash
   hugo new posts/my-new-post.md
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
