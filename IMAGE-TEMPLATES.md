{{/* Image Template Examples */}}

<!-- 1. Featured Image di Header -->
<!-- Ditampilkan otomatis jika ada featured_image di frontmatter -->

<!-- 2. Inline Image dalam Konten -->
![Alt Text SEO-friendly](https://courseswyn.com/images/nama-gambar.jpg "Judul Gambar yang Descriptive")

<!-- 3. Figure dengan Caption -->
{{< figure src="/images/course-screenshot.png" alt="Course Screenshot" caption="Screenshot dari kursus web development terbaik" class="course-image" >}}

<!-- 4. Responsive Image -->
{{< figure src="/images/web-dev-tutorial.png" alt="Web Development Tutorial" caption="Step-by-step web development tutorial" loading="lazy" style="max-width: 800px; margin: 0 auto;" >}}

<!-- 5. Image dengan Link -->
{{< figure src="/images/udemy-course.jpg" alt="Udemy Course" caption="Lihat kursus lengkap di Udemy" link="https://udemy.com/course/example" class="clickable-image" >}}

<!-- 6. Gallery Multiple Images -->
{{< gallery caption="Web Development Learning Resources" >}}
  {{< figure src="/images/html-guide.png" alt="HTML Guide" caption="Complete HTML tutorial" >}}
  {{< figure src="/images/css-mastery.png" alt="CSS Mastery" caption="Advanced CSS techniques" >}}
  {{< figure src="/images/js-projects.png" alt="JavaScript Projects" caption="Hands-on JavaScript projects" >}}
{{< /gallery >}}

<!-- 7. Background Image dengan CSS -->
<div class="hero-section" style="background-image: url('/images/web-dev-hero.jpg'); background-size: cover; background-position: center; height: 400px; display: flex; align-items: center; justify-content: center;">
  <h1 style="color: white; text-shadow: 2px 2px 4px rgba(0,0,0,0.7); font-size: 3rem; text-align: center;">
    Master Web Development in 2025
  </h1>
</div>

<!-- 8. Image dengan Custom Styling -->
<figure style="text-align: center; margin: 2rem 0;">
  <img src="/images/web-dev-roadmap-2025.png" alt="Web Development Learning Roadmap 2025" style="max-width: 100%; height: auto; border-radius: 12px; box-shadow: 0 8px 32px rgba(0,0,0,0.1);" />
  <figcaption style="margin-top: 1rem; font-size: 0.9rem; color: #6b7280; font-style: italic;">
    Complete roadmap for learning web development in 2025
  </figcaption>
</figure>

<!-- 9. Responsive Picture Element -->
<picture>
  <source media="(max-width: 768px)" srcset="/images/web-dev-mobile.webp">
  <source media="(max-width: 1200px)" srcset="/images/web-dev-tablet.webp">
  <img src="/images/web-dev-desktop.jpg" alt="Web Development Course Preview" style="width: 100%; height: auto; border-radius: 8px;">
</picture>

<!-- 10. Image dengan Lazy Loading dan Loading Placeholder -->
<img
  src="/images/web-dev-course-preview.jpg"
  alt="Web Development Course Preview"
  loading="lazy"
  width="800"
  height="450"
  style="width: 100%; height: auto; border-radius: 8px;"
  onload="this.style.opacity = '1'"
  style="opacity: 0; transition: opacity 0.3s;"
>
