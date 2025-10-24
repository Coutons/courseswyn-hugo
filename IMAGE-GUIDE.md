<!-- PANDUAN LENGKAP MENAMBAHKAN IMAGE DI HUGO -->

## 4 Cara Menambahkan Image di Hugo Posts

### 1. FEATURED IMAGE (untuk SEO & Social Media)
```yaml
---
title: "Judul Artikel"
featured_image: "/images/nama-gambar.jpg"
image: "/images/nama-gambar.jpg"
thumbnail: "/images/nama-gambar-thumb.jpg"
---
```

### 2. INLINE IMAGES (dalam konten markdown)
```markdown
![Alt Text](https://courseswyn.com/images/nama-gambar.jpg "Judul Gambar")

<!-- Dengan ukuran dan style -->
![Alt Text](https://courseswyn.com/images/nama-gambar.jpg "Judul Gambar" =300x200)

<!-- Responsive image -->
{{< figure src="/images/nama-gambar.jpg" alt="Alt Text" caption="Caption gambar" >}}
```

### 3. BACKGROUND IMAGES (CSS)
```css
.hero-image {
  background-image: url('/images/hero-bg.jpg');
  background-size: cover;
  background-position: center;
}
```

### 4. HUGO FIGURE SHORTCODE
```markdown
{{< figure src="/images/screenshot.png" alt="Course Screenshot" caption="Screenshot dari kursus" class="my-custom-class" >}}
```

## 📁 Struktur Folder Gambar

```
static/
├── images/
│   ├── web-development-bootcamps-2025.jpg (1200x630px)
│   ├── web-development-bootcamps-2025-thumb.jpg (300x200px)
│   ├── angela-yu-web-dev.jpg (800x400px)
│   └── course-screenshots/
│       ├── course1-screenshot.png
│       └── course2-screenshot.png
```

## 🎨 Optimasi Gambar untuk SEO

### Dimensi yang Direkomendasikan:
- **Featured Image (OG):** 1200x630px
- **Thumbnail:** 300x200px
- **Content Images:** 800x400px
- **Icons:** 64x64px

### Format File:
- **WebP** (terbaik untuk web)
- **JPEG** (untuk foto)
- **PNG** (untuk gambar dengan transparansi)
- **SVG** (untuk icon dan logo)

### Alt Text & Caption:
```markdown
![Learn Web Development - Complete Guide to Modern Development](https://courseswyn.com/images/web-dev-guide.jpg "Best practices for learning web development in 2025")
```

## 🚀 Tools untuk Optimasi Gambar

1. **TinyPNG** - Kompresi PNG/JPEG
2. **Squoosh** - Google WebP converter
3. **ImageOptim** - Mac optimizer
4. **ShortPixel** - WordPress/Hugo plugin

## 📝 Contoh Lengkap Frontmatter dengan Image

```yaml
---
title: "Best Web Development Bootcamps 2025"
slug: "best-web-dev-bootcamps"
featured_image: "/images/web-dev-2025-hero.jpg"
image: "/images/web-dev-2025-social.jpg"
thumbnail: "/images/web-dev-2025-thumb.jpg"
images:
  - "/images/web-dev-screenshot1.png"
  - "/images/web-dev-screenshot2.png"
gallery:
  - src: "/images/gallery1.jpg"
    alt: "Web development workspace"
  - src: "/images/gallery2.jpg"
    alt: "Code editor screenshot"
---
```

## 🔍 SEO Benefits dari Gambar

1. **Rich Snippets** di Google Search
2. **Social Media Cards** yang menarik
3. **Better user engagement** dan dwell time
4. **Image search traffic** dari Google Images
5. **Accessibility** untuk screen readers

## 📱 Responsive Images

```markdown
<!-- Automatic responsive -->
![Responsive Image](https://courseswyn.com/images/responsive.jpg)

<!-- With Hugo responsive images -->
{{< figure src="/images/large-image.jpg" alt="Large Image" class="responsive-image" >}}
```

## 🎯 Best Practices

1. **Alt text** yang descriptive untuk SEO
2. **File names** dengan keyword (web-development-2025.jpg)
3. **Lazy loading** untuk performance
4. **WebP format** dengan JPEG fallback
5. **Consistent naming** convention
6. **Image sitemap** untuk search engines

## 🚨 Yang Harus Dihindari

❌ Gambar dengan nama acak (IMG_1234.jpg)
❌ Alt text kosong atau tidak descriptive
❌ Gambar terlalu besar (slow loading)
❌ Tidak menggunakan featured image
❌ Format file yang tidak dioptimasi
