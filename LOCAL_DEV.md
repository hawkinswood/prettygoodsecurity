# Local Development Commands

## Basic local server
hugo server -D

## Local server with network access (for viewing from other devices)
hugo server -D --bind=0.0.0.0 --baseURL=http://$(hostname -I | awk '{print $1}'):1313/

## Local server with drafts and future posts
hugo server -D -F

## Local server with live reload disabled
hugo server -D --disableLiveReload

## Build site locally (output to public/ directory)
hugo --minify

## Troubleshooting Tips

### If site doesn't build:
- Check config.toml syntax for errors
- Ensure theme is correctly installed as a submodule
- Verify content files have proper front matter

### If CSS is missing:
- Make sure you're using the extended version of Hugo

### If changes don't appear:
- Clear your browser cache
- Try with --disableFastRender flag
- Check for syntax errors in your markdown
