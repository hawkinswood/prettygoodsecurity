# Pretty Good Security Website

This repository contains a Hugo-based static website focused on providing practical computer security advice and guidance for everyday users.

## Project Overview

Pretty Good Security is a website offering straightforward guidance on various security topics including:

- Tailscale configuration and usage
- Network security best practices
- Router security hardening
- iPhone security optimization
- General security best practices
- Security resources and tools

The website is built with Hugo and uses the PaperMod theme for a clean, fast, and responsive user experience.

## Setup Instructions

### Prerequisites

- Hugo Extended (v0.147.2 or later) - optimized for Apple Silicon
- Git
- GitHub account

### Local Development

1. Clone this repository:
   ```
   git clone https://github.com/hawkinswood/prettygoodsecurity.git
   cd prettygoodsecurity
   ```

2. Initialize and update the theme submodule:
   ```
   git submodule update --init --recursive
   ```

3. Start the local development server:
   ```
   hugo server -D
   ```

4. View the site at http://localhost:1313/prettygoodsecurity/

### Build for Production

To build the site for production:

```
hugo --minify
```

The output will be in the `public` directory.

## Content Management Workflow

### Adding New Content

1. Create new content files in the appropriate section directories:
   ```
   hugo new content <section-name>/<filename>.md
   ```

2. Edit the markdown file with your content.

3. Set `draft: false` in the front matter when ready to publish.

### Updating Existing Content

1. Navigate to the content file in the `content/` directory.
2. Edit the markdown file as needed.
3. Preview changes locally with `hugo server -D`.
4. Commit and push changes to GitHub to deploy.

## Site Structure

The site is organized into the following main sections:

- **Home** (`content/_index.md`) - Main landing page
- **Tailscale** (`content/tailscale/_index.md`) - Tailscale VPN guidance
- **Network** (`content/network/_index.md`) - Network security information
- **Router** (`content/router/_index.md`) - Router security configuration
- **iPhone** (`content/iphone/_index.md`) - iPhone security settings
- **Best Practices** (`content/best-practices/_index.md`) - General security practices
- **Resources** (`content/resources/_index.md`) - Additional security resources

## Deployment

The site is automatically deployed to GitHub Pages using GitHub Actions whenever changes are pushed to the main branch.

The live site is available at: https://hawkinswood.github.io/prettygoodsecurity/

## Configuration

The main site configuration is in `config.toml`. This file includes:

- Site metadata
- Menu structure
- Theme configuration
- Performance optimization settings
- Security headers

Security headers are configured in `static/_headers` and will be applied by Cloudflare.

## License

[MIT License](LICENSE)
