#!/bin/zsh

# Add all files to git
git add .

# Commit with initial message
git commit -m "Initial commit for Pretty Good Security website"

# Instructions for creating and connecting to a GitHub repository
echo "To complete the GitHub repository setup:"
echo ""
echo "1. Create a new GitHub repository named 'prettygoodsecurity' at https://github.com/new"
echo ""
echo "2. Add the remote and push using these commands:"
echo "   git remote add origin https://github.com/hawkinswood/prettygoodsecurity.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. After pushing, enable GitHub Pages in your repository settings"
echo "   Go to Settings > Pages > Source and select 'GitHub Actions'"
