# Cloudflare Integration Guide

This guide explains how to properly set up your Pretty Good Security website with Cloudflare for enhanced security, performance, and reliability.

## DNS Configuration

1. **Create a Cloudflare account** if you don't already have one.

2. **Add your domain to Cloudflare**:
   - After logging in, click "Add a Site" and enter your domain name
   - Select the Free plan and follow the initial setup wizard
   - Cloudflare will scan your existing DNS records

3. **Update nameservers at your domain registrar**:
   - Cloudflare will provide you with nameservers (e.g., `lola.ns.cloudflare.com` and `rico.ns.cloudflare.com`)
   - Log in to your domain registrar and replace the current nameservers with Cloudflare's

4. **Configure DNS Records for GitHub Pages**:
   - Type: `CNAME`
   - Name: `www` (or `@` for root domain)
   - Content: `hawkinswood.github.io`
   - Proxy status: Proxied (toggle the cloud icon to orange)

## Page Rules

Set up these recommended Page Rules for optimal security:

1. **Cache Everything Rule**:
   - URL Pattern: `yourdomain.com/*`
   - Setting: Cache Level → Cache Everything
   - Setting: Edge Cache TTL → 1 day

2. **Security Level for Admin URLs** (if applicable):
   - URL Pattern: `yourdomain.com/admin/*`
   - Setting: Security Level → High

## CDN and Caching Settings

1. **Go to Caching settings in your Cloudflare dashboard**

2. **Configure Browser Cache TTL**:
   - Set to "4 hours"

3. **Configure Edge Cache TTL**:
   - Set to "2 days"

4. **Enable Cloudflare's Auto Minify**:
   - Go to Speed → Optimization
   - Check the boxes for HTML, CSS, and JavaScript

5. **Enable Brotli Compression**:
   - Go to Speed → Optimization
   - Enable Brotli compression

## Free SSL/TLS Setup

1. **Go to SSL/TLS in your Cloudflare dashboard**

2. **Set SSL/TLS Encryption Mode**:
   - Select "Full" (or "Full (strict)" if you have a valid certificate installed on your origin)

3. **Enable Automatic HTTPS Rewrites**:
   - Go to SSL/TLS → Edge Certificates
   - Enable "Automatic HTTPS Rewrites"

4. **Enable Always Use HTTPS**:
   - Go to SSL/TLS → Edge Certificates
   - Enable "Always Use HTTPS"

## Security Settings Optimization

1. **Enable WAF (Web Application Firewall)**:
   - Go to Security → WAF
   - Enable "Managed Rulesets"

2. **Configure Security Level**:
   - Go to Security → Settings
   - Set Security Level to "Medium"

3. **Enable Bot Fight Mode**:
   - Go to Security → Bots
   - Enable "Bot Fight Mode"

4. **Configure Firewall Rules**:
   - Block high-risk countries (if needed)
   - Block suspicious user agents
   - Example rule: Challenge requests with threat score >= 14

5. **Enable Email Address Obfuscation**:
   - Go to Scrape Shield
   - Enable "Email Address Obfuscation"

6. **Enable Server-side Excludes**:
   - Go to Scrape Shield
   - Enable "Server-side Excludes"

## Verifying Setup

1. **Check SSL Certificate**:
   - Visit your website with HTTPS and check for the secure padlock

2. **Test Page Speed**:
   - Use tools like PageSpeed Insights or GTmetrix to verify improvement

3. **Verify Security Headers**:
   - Use [securityheaders.com](https://securityheaders.com) to test your security headers

4. **Check Cloudflare Status**:
   - Verify the orange cloud is active in your DNS settings

## Troubleshooting

- **Content not updating**: Purge cache in Cloudflare dashboard
- **SSL errors**: Verify SSL/TLS settings and make sure GitHub Pages is properly configured
- **Redirect loops**: Check your page rules for conflicting redirects
