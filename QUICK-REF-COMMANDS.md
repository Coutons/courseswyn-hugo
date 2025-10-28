# ⚡ Quick Reference Commands
# Daily Content Creation Workflow

## 🚀 Article Creation
```bash
# Create new article
hugo new posts "Article Title Here"

# Edit article
code content/posts/article-title/index.md
```

## 🖼️ Image Management
```bash
# Add featured image
# Copy image to: static/images/article-name.jpg
# Add markdown: ![Alt](/images/article-name.jpg "Caption")

# Check images
ls static/images/
```

## 🧪 Local Testing
```bash
# Start development server
hugo server -D

# Test URLs:
# http://localhost:1313/posts/article-slug/
# http://localhost:1313/posts/

# Test build
hugo --minify
```

## 📤 Deployment
```bash
# Commit all changes
git add .

# Commit with message
git commit -m "feat: add article - Title"

# Push to deploy
git push origin main
```

## 🔍 Monitoring
```bash
# Check deployment status
https://github.com/Coutons/courseswyn-hugo/actions

# Check recent commits
git log --oneline -5

# Check article status
hugo list published | grep "article-title"
```

## 🛠️ Troubleshooting
```bash
# Check for duplicate fields
grep "keywords:" content/posts/*/index.md

# Test specific article
hugo --minify --disableLiveReload

# Check workflow runs
https://github.com/Coutons/courseswyn-hugo/actions
```

## 📊 Production URLs
```bash
# Article URL
https://courseswyn.com/posts/article-slug/

# Posts list
https://courseswyn.com/posts/

# Sitemap
https://courseswyn.com/sitemap.xml
```

## 🔗 Important Links
```bash
# GitHub Actions
https://github.com/Coutons/courseswyn-hugo/actions

# Live Website
https://courseswyn.com/

# Repository
https://github.com/Coutons/courseswyn-hugo
```

## 📋 Daily Checklist
- [ ] Create article with archetype
- [ ] Fill frontmatter completely
- [ ] Add featured image
- [ ] Test locally with hugo server
- [ ] Test production build
- [ ] Commit with descriptive message
- [ ] Push to main branch
- [ ] Monitor GitHub Actions
- [ ] Verify production deployment
- [ ] Test SEO and performance

---

**💡 Pro Tip:** Use `hugo server -D` while writing for instant preview!
