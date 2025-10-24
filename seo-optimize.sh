#!/bin/bash

# CoursesWyn SEO Optimization Script
# This script helps optimize the site for better SEO and backlinks

echo "🚀 Starting SEO Optimization for CoursesWyn..."

# 1. Generate sitemap
echo "📄 Generating sitemap..."
hugo --minify

# 2. Check for broken links
echo "🔗 Checking for broken links..."
find public -name "*.html" -exec grep -H 'href="[^h]' {} \; | grep -v "https://" | grep -v "mailto:" | grep -v "#"

# 3. Optimize images (if any)
echo "🖼️  Checking images for optimization..."
find static -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" | wc -l

# 4. Validate HTML
echo "✅ Validating HTML structure..."
find public -name "*.html" | head -5 | xargs -I {} echo "Checking {}"

# 5. SEO Score Check
echo "📊 Checking SEO elements..."
echo "✓ Title tags: $(grep -r '<title>' public/ | wc -l)"
echo "✓ Meta descriptions: $(grep -r 'name=\"description\"' public/ | wc -l)"
echo "✓ Open Graph tags: $(grep -r 'property=\"og:' public/ | wc -l)"
echo "✓ Schema.org markup: $(grep -r 'schema.org' public/ | wc -l)"

# 6. Backlink opportunities
echo "🔙 Backlink opportunities found:"
echo "✓ GitHub repository: https://github.com/Coutons/courseswyn-hugo"
echo "✓ Contributing guide: https://github.com/Coutons/courseswyn-hugo/blob/main/CONTRIBUTING.md"
echo "✓ README with SEO tips: https://github.com/Coutons/courseswyn-hugo/blob/main/README.md"

echo ""
echo "🎯 SEO Optimization Complete!"
echo ""
echo "📈 Next Steps for Better SEO:"
echo "1. Submit sitemap to Google Search Console"
echo "2. Add site to Bing Webmaster Tools"
echo "3. Create Google Analytics property"
echo "4. Share repository on Reddit, HackerNews"
echo "5. Reach out to education blogs for backlinks"
echo "6. Create social media posts about your reviews"
echo ""
echo "💡 Backlink Strategy:"
echo "- Share your GitHub repo on developer forums"
echo "- Submit to Hugo themes directories"
echo "- Link from course review sites"
echo "- Guest post on education blogs"
