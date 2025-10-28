# 🚀 Complete Article Creation & Publishing Workflow
# CoursesWyn Content Creator SOP

## 📋 Overview
This guide provides the complete workflow for creating and publishing articles on CoursesWyn website using Hugo static site generator.

## 🎯 Phase 1: Article Creation

### Step 1: Create New Article
```bash
# Using archetype template
hugo new posts "Your Article Title Here"

# Example:
hugo new posts "Best React Courses on Udemy 2025"
```

**What happens:**
- ✅ Creates `content/posts/your-article-title/index.md`
- ✅ Pre-filled with complete frontmatter
- ✅ Includes SEO fields, categories, tags
- ✅ Has template content structure

### Step 2: Edit Article Content
```bash
# Edit the generated file
code content/posts/your-article-title/index.md

# Or use IDE directly to edit:
# content/posts/your-article-title/index.md
```

**Required Frontmatter Fields:**
```yaml
---
title: "Your Article Title"
slug: "your-article-slug"  # URL-friendly
date: 2025-10-25T14:00:00+07:00  # Use CURRENT date, not future!
lastmod: 2025-10-25T14:00:00+07:00
draft: false  # Set to false for publishing
layout: "post"
showReadingTime: true

description: "SEO description for article"
categories: ["programming", "education", "tech-courses"]
tags: ["relevant", "tags", "for", "article"]
author: "CoursesWyn Team"
keywords: ["keyword1", "keyword2", "keyword3"]
seo_title: "SEO Title | CoursesWyn"
seo_description: "SEO description"
---
```

### Step 3: Add Featured Image
```bash
# 1. Add image to static/images/
# File: static/images/article-slug.jpg

# 2. Add to article markdown:
![Alt Text](/images/article-slug.jpg "Image Caption")
*Image Caption*

# 3. Update frontmatter image if needed
```

## 🎨 Phase 2: Content Enhancement

### Step 4: Add Schema Markup (Optional)
```markdown
# Schema.org structured data
schema:
  "@context": "https://schema.org"
  "@type": "Article"
  "headline": "Your Article Title"
  "description": "Article description"
  "author": {
    "@type": "Organization",
    "name": "CoursesWyn Team"
  }
  "publisher": {
    "@type": "Organization",
    "name": "CoursesWyn"
  }
  "datePublished": "2025-10-25T14:00:00+07:00"
  "dateModified": "2025-10-25T14:00:00+07:00"
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://courseswyn.com/your-article-slug/"
  }
  "articleSection": "Programming Courses"
  "keywords": "keyword1, keyword2, keyword3"
```

### Step 5: Test Course Links
```bash
# Update all course affiliate links:
# https://trk.udemy.com/c/6564357/3193860/39854?u=https://www.udemy.com/course/...

# Ensure all links are working
# Test external links in browser
```

## 🧪 Phase 3: Local Testing

### Step 6: Start Local Server
```bash
# Start Hugo development server
hugo server -D

# Server will be available at:
# http://localhost:1313/
```

### Step 7: Test Article Locally
```bash
# Test URLs:
http://localhost:1313/posts/your-article-slug/
http://localhost:1313/posts/

# Verify:
# ✅ Article displays correctly
# ✅ Featured image loads
# ✅ Responsive design works
# ✅ All links work
# ✅ SEO meta tags present
```

### Step 8: Test Build
```bash
# Test production build
hugo --minify

# Should show: "Pages: XX" without errors
# Check for any warnings or errors
```

## 📤 Phase 4: Deployment

### Step 9: Commit Changes
```bash
# Add all changes
git add .

# Commit with descriptive message
git commit -m "feat: add new article - Your Article Title

- Add comprehensive article about topic
- Include featured image and course reviews
- Update SEO meta tags and schema markup
- Ensure responsive design and accessibility"

# Push to trigger deployment
git push origin main
```

### Step 10: Monitor Deployment
```bash
# Check GitHub Actions
https://github.com/Coutons/courseswyn-hugo/actions

# Look for workflow: "Deploy to GitHub Pages"
# Status should be: ✅ Success
# Check build logs for any errors
```

### Step 11: Verify Production
```bash
# Test production URLs:
https://courseswyn.com/posts/your-article-slug/
https://courseswyn.com/posts/

# Verify:
# ✅ Article loads correctly
# ✅ Featured image displays
# ✅ All links work
# ✅ SEO validation passes
# ✅ Mobile responsive
```

## 🔍 Phase 5: Quality Assurance

### Step 12: SEO Validation
```bash
# Tools to use:
# ✅ Google Rich Results Test: https://search.google.com/test/rich-results
# ✅ Schema Markup Validator: https://validator.schema.org/
# ✅ PageSpeed Insights: https://pagespeed.web.dev/
# ✅ Mobile-Friendly Test: https://search.google.com/test/mobile-friendly
```

### Step 13: Performance Check
```bash
# Check loading speed:
# ✅ GTmetrix: https://gtmetrix.com/
# ✅ WebPageTest: https://www.webpagetest.org/
# ✅ Lighthouse (Chrome DevTools)

# Target scores:
# ✅ Performance: 90+
# ✅ Accessibility: 95+
# ✅ Best Practices: 90+
# ✅ SEO: 95+
```

## 📈 Phase 6: Post-Publishing

### Step 14: Social Media & Promotion
```bash
# Share on social platforms:
- Twitter: @CoursesGift
- LinkedIn: CoursesWyn Company Page
- Facebook: BestCouponPromo

# Update internal documentation
# Add to content calendar
```

### Step 15: Analytics Setup
```bash
# Ensure Google Analytics is tracking
# Set up Search Console for new URL
# Monitor traffic and engagement
```

## ⚡ Quick Reference Commands

### Daily Workflow:
```bash
# 1. Create article
hugo new posts "Article Title"

# 2. Edit content
code content/posts/article-title/index.md

# 3. Test locally
hugo server -D

# 4. Build test
hugo --minify

# 5. Deploy
git add . && git commit -m "feat: add article" && git push origin main
```

### Emergency Commands:
```bash
# Force rebuild
hugo --cleanDestinationDir --minify

# Check status
git status
git log --oneline -5

# Check deployment
https://github.com/Coutons/courseswyn-hugo/actions
```

## 🚨 Troubleshooting

### Common Issues:

#### **1. Article Not Publishing:**
```bash
# Check date (must not be future date)
grep "date:" content/posts/*/index.md

# Check draft status
grep "draft:" content/posts/*/index.md

# List published articles
hugo list published
```

#### **2. Build Errors:**
```bash
# Test build locally
hugo --minify

# Check for YAML errors
# Look for duplicate fields
# Check quotes and formatting
```

#### **3. Image Not Loading:**
```bash
# Check image path
ls static/images/

# Verify image format
# Test image URL directly
# Check file permissions
```

#### **4. SEO Issues:**
```bash
# Validate schema markup
# Check meta tags
# Test rich snippets
# Verify canonical URLs
```

## 🎯 Best Practices

### Content Quality:
- ✅ Use descriptive titles (50-60 characters)
- ✅ Write compelling descriptions (150-160 characters)
- ✅ Include relevant keywords naturally
- ✅ Add internal links to related articles
- ✅ Use proper heading hierarchy (H1, H2, H3)

### Technical Standards:
- ✅ Image size: < 500KB, 1200x630px recommended
- ✅ Use WebP format for better performance
- ✅ Add alt text for all images
- ✅ Ensure mobile responsiveness
- ✅ Validate HTML and schema markup

### SEO Optimization:
- ✅ Target 1 primary keyword per article
- ✅ Include 3-5 related keywords
- ✅ Use schema.org Article markup
- ✅ Set canonical URLs correctly
- ✅ Submit to Google Search Console

## 📞 Support & Documentation

### Resources:
- **Hugo Documentation:** https://gohugo.io/
- **GitHub Repository:** https://github.com/Coutons/courseswyn-hugo
- **Theme Documentation:** https://themes.gohugo.io/themes/terminal/
- **SEO Guidelines:** Internal SEO-optimize.sh script

### Emergency Contacts:
- **Development Issues:** Check GitHub Issues
- **Content Questions:** Team documentation
- **Urgent Deployments:** Use workflow_dispatch in GitHub Actions

---

## 📝 Workflow Checklist

- [ ] Article created with proper archetype
- [ ] Frontmatter completed (title, slug, date, tags, SEO)
- [ ] Featured image added and optimized
- [ ] Content written and proofread
- [ ] Schema markup added (if applicable)
- [ ] Local testing completed
- [ ] Build test passed
- [ ] Committed with descriptive message
- [ ] Pushed to main branch
- [ ] GitHub Actions deployment monitored
- [ ] Production verification completed
- [ ] SEO validation passed
- [ ] Social media promotion done

**🎉 Congratulations! Your article is now live and optimized for search engines!**
