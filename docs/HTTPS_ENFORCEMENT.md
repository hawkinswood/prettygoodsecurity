# HTTPS Enforcement Documentation

This document explains the HTTPS enforcement mechanisms implemented on the Pretty Good Security website.

## Overview

The site enforces HTTPS connections through multiple layers of protection:

1. HTTP to HTTPS redirection
2. HTTP Strict Transport Security (HSTS) headers
3. Cloudflare SSL/TLS settings

## HSTS Configuration

The site uses the following HSTS header configuration:

```
Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
```

This configuration:

- **max-age=31536000**: Instructs browsers to remember to use HTTPS for this domain for one year (31,536,000 seconds)
- **includeSubDomains**: Applies the HSTS policy to all subdomains
- **preload**: Indicates this domain is eligible for inclusion in browser preload lists (Chrome, Firefox, etc.)

## HSTS Preload List

For maximum security, consider submitting the domain to the HSTS preload list at [hstspreload.org](https://hstspreload.org). 

**Important notes about preloading:**
- Once added, it's difficult to remove a domain from the preload list
- Preloading applies to all subdomains, so ensure all are HTTPS-ready
- Allow several months for the preload to propagate to all browser versions

## Implementation Details

HSTS is implemented through:

1. The `_headers` file in the `static` directory
2. The `netlify.toml` configuration file (for redundancy)
3. Cloudflare SSL/TLS settings

## Testing HTTPS Enforcement

You can verify proper HTTPS enforcement using:

1. [SSL Labs](https://www.ssllabs.com/ssltest/)
2. [Security Headers](https://securityheaders.com/)
3. [hstspreload.org](https://hstspreload.org/)

## Browser Compatibility

HSTS is supported by all modern browsers including:
- Chrome/Chromium (version 4+)
- Firefox (version 4+)
- Safari (version 7+)
- Edge (all versions)
- Opera (version 12+)
