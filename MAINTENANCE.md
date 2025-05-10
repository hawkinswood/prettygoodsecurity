# Maintenance Guide

This guide provides instructions for maintaining and updating your Pretty Good Security website.

## Updating Content

### Adding New Articles

1. **Create a new markdown file**:
   ```bash
   cd /path/to/prettygoodsecurity
   hugo new content section-name/article-name.md
   ```

2. **Edit the front matter** at the top of the file:
   ```yaml
   ---
   title: "Your Article Title"
   date: 2025-05-10T12:00:00-07:00
   draft: false
   description: "Brief description for SEO"
   tags: ["tag1", "tag2"]
   categories: ["category"]
   ---
   ```

3. **Add your content** using Markdown syntax.

4. **Add the article to git**:
   ```bash
   git add content/section-name/article-name.md
   git commit -m "Add new article: Your Article Title"
   git push
   ```

### Updating Existing Content

1. **Locate the markdown file** in the `content/` directory.

2. **Make your edits** to the file.

3. **Commit and push the changes**:
   ```bash
   git add content/section-name/article-name.md
   git commit -m "Update article: Your Article Title"
   git push
   ```

## Updating Hugo Version

1. **Check your current Hugo version**:
   ```bash
   hugo version
   ```

2. **Update Hugo using Homebrew**:
   ```bash
   brew update
   brew upgrade hugo
   ```

3. **Verify the update**:
   ```bash
   hugo version
   ```

4. **Test your site locally** to ensure compatibility:
   ```bash
   hugo server -D
   ```

5. **Update the Hugo version in GitHub Actions workflow**:
   - Edit `.github/workflows/hugo.yml`
   - Update the `HUGO_VERSION` environment variable
   - Update the version in the peaceiris/actions-hugo@v2 action

## Monitoring Site Performance

### PageSpeed Insights

1. Visit [PageSpeed Insights](https://pagespeed.web.dev/)
2. Enter your website URL
3. Analyze the results for both mobile and desktop

### Google Search Console

1. Set up [Google Search Console](https://search.google.com/search-console)
2. Monitor for:
   - Indexing issues
   - Mobile usability problems
   - Core Web Vitals metrics
   - Security issues

### Cloudflare Analytics

1. Log in to your Cloudflare dashboard
2. Navigate to the Analytics section
3. Monitor:
   - Traffic patterns
   - Cache performance
   - Firewall events
   - Bot activity

### Custom Performance Monitoring

Consider implementing:
- [Plausible Analytics](https://plausible.io/) (privacy-focused)
- Real User Monitoring (RUM)
- Simple status pings with [UptimeRobot](https://uptimerobot.com/)

## Backup Strategy

### Git Repository Backup

Your GitHub repository already serves as a primary backup. To enhance this:

1. **Create local backups**:
   ```bash
   git clone --mirror https://github.com/hawkinswood/prettygoodsecurity.git backup-prettygoodsecurity
   ```

2. **Regular content exports**:
   ```bash
   # Backup the content directory
   zip -r content-backup-$(date +%Y%m%d).zip content/
   ```

3. **Consider additional remote repositories**:
   ```bash
   # Add a secondary remote
   git remote add backup https://gitlab.com/yourusername/prettygoodsecurity.git
   git push backup --all
   ```

### Automated Backups

Set up a cron job or GitHub Action to automatically create and store backups:

1. **Create a backup script**:
   ```bash
   #!/bin/bash
   BACKUP_DIR="/path/to/backups"
   SITE_DIR="/path/to/prettygoodsecurity"
   DATE=$(date +%Y%m%d)
   
   # Clone the latest version
   cd $BACKUP_DIR
   git clone --mirror https://github.com/hawkinswood/prettygoodsecurity.git prettygoodsecurity-$DATE
   
   # Create content backup
   cd $SITE_DIR
   hugo
   zip -r $BACKUP_DIR/public-$DATE.zip public/
   ```

2. **Schedule the script** to run weekly.

### Off-Site Storage

Store critical backups in a separate location:
- Cloud storage (Google Drive, Dropbox, etc.)
- External hard drive in a different physical location
- Paid backup service with proper encryption

## Domain and Certificate Management

1. **Monitor domain expiration**:
   - Set calendar reminders
   - Enable auto-renewal if possible

2. **Check SSL certificate validity**:
   - Monitor expiration dates
   - Ensure Cloudflare's certificate is active
