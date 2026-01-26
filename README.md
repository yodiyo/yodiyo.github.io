# Yorick Brown - Portfolio Website

A GitHub Pages portfolio website built with Jekyll, showcasing full-stack development projects across WordPress, WooCommerce, React, PHP, and modern web technologies.

🌐 **Live Site:** [https://yodiyo.github.io](https://yodiyo.github.io)

---

## 📋 Overview

This is a custom Jekyll-based portfolio website featuring:

- 📂 **Code Demos** - Live examples and GitHub repositories
- 💼 **Portfolio** - Professional project case studies with custom card-based grid layout
- 🎨 **Custom Styling** - Extended Jekyll theme with responsive grid system
- 📱 **Responsive Design** - Mobile-first approach with dark mode support
- 🚀 **GitHub Pages** - Automated deployment on push to `master`

---

## 🛠️ Tech Stack

- **Static Site Generator:** Jekyll 3.x
- **Theme:** `jekyll-theme-minimal` (with custom overrides)
- **Templating:** Liquid
- **Styling:** SCSS with custom grid system
- **Hosting:** GitHub Pages
- **Ruby Version:** 3.x (with compatibility gems for 3.4+)

---

## 🏗️ Project Structure

```
yodiyo.github.io/
├── _config.yml              # Jekyll configuration
├── Gemfile                  # Ruby dependencies
├── demos.md                 # Code demos page (home)
├── portfolio.md             # Portfolio showcase page
├── README.md                # This file
├── _projects/               # Portfolio project collection
│   ├── sage-advice.md
│   ├── lindy-electronics.md
│   ├── bonnet-multisite.md
│   └── ...                  # 15 project case studies
├── _layouts/                # Custom layouts
│   ├── default.html
│   └── post.html
├── assets/
│   ├── css/
│   │   └── style.scss       # Custom styles with grid system
│   └── images/              # Site assets
└── _site/                   # Generated site (git-ignored)
```

---

## ✨ Key Features

### 1. **Portfolio Grid System**
Custom CSS grid layout for portfolio cards:
- Responsive 3-column → 2-column → 1-column layout
- Hover effects with image scaling
- Badge system for technologies
- Dark mode support

### 2. **Jekyll Collections**
Projects are managed as a collection for:
- Clean URLs (`/projects/project-name`)
- Frontmatter-based metadata
- Easy content management

### 3. **Custom Theme Extension**
The site uses `jekyll-theme-minimal` as a base and extends it with:
```scss
@import "{{ site.theme }}";
/* Custom overrides */
```

### 4. **Responsive & Accessible**
- Mobile-first design
- System dark mode detection
- Semantic HTML structure
- SEO-friendly meta tags

---

## 🚀 Getting Started

### Prerequisites

- Ruby 3.x
- Bundler (`gem install bundler`)
- Git

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yodiyo/yodiyo.github.io.git
   cd yodiyo.github.io
   ```

2. **Install dependencies:**
   ```bash
   bundle install
   ```

3. **Serve locally:**
   ```bash
   bundle exec jekyll serve --port 4000
   ```

4. **View in browser:**
   ```
   http://localhost:4000
   ```

### Hot Reloading

Jekyll watches for changes automatically. Edit markdown or SCSS files and refresh the browser to see updates.

---

## 📝 Content Management

### Adding a New Portfolio Project

1. **Create a new markdown file** in `_projects/`:
   ```bash
   touch _projects/new-project.md
   ```

2. **Add frontmatter and content:**
   ```markdown
   ---
   title: "Project Name"
   description: "Brief description"
   image: "https://example.com/image.png"
   technologies:
     - WordPress
     - React
     - PHP
   ---

   # Project Name

   Detailed project description...
   ```

3. **Add to portfolio.md** grid:
   ```html
   <div class="portfolio-card">
     <a href="projects/new-project">
       <div class="card-image">
         <img src="..." alt="...">
       </div>
       <div class="card-content">
         <h3>Project Name</h3>
         <p>Brief description</p>
         <div class="card-badges">
           <span class="badge">WordPress</span>
           <span class="badge">React</span>
         </div>
       </div>
     </a>
   </div>
   ```

### Updating Site Configuration

Edit `_config.yml` to update:
- Site title and description
- Author information
- Theme selection
- Contact details

---

## 🎨 Customization

### Changing the Theme

Update `_config.yml`:
```yaml
theme: jekyll-theme-minimal
# OR choose: cayman, slate, tactile, time-machine, leap-day,
# modernist, architect, dinky, minima
```

Available GitHub Pages themes: [pages.github.com/themes](https://pages.github.com/themes/)

### Modifying Styles

Edit `assets/css/style.scss`:
- Grid system: `.portfolio-grid`
- Card styles: `.portfolio-card`
- Responsive breakpoints: `@media` queries
- Dark mode: `@media (prefers-color-scheme: dark)`

---

## 🌍 Deployment

### GitHub Pages (Automatic)

The site auto-deploys when you push to `master`:

```bash
git add .
git commit -m "Update portfolio"
git push origin master
```

GitHub Pages builds and publishes to: `https://yodiyo.github.io`

### Manual Build

Generate static files locally:
```bash
bundle exec jekyll build
```

Output: `_site/` directory

---

## 📦 Dependencies

Key gems in `Gemfile`:

```ruby
gem "github-pages"           # GitHub Pages compatibility
gem "jekyll-relative-links"  # Relative link processing
gem "webrick"                # Local server (Ruby 3+)
gem "csv"                    # Ruby 3.4+ compatibility
gem "base64"                 # Ruby 3.4+ compatibility
gem "logger"                 # Ruby 3.4+ compatibility
```

---

## 🔧 Troubleshooting

### Local Server Won't Start

**Issue:** `cannot load such file -- webrick`

**Fix:**
```bash
bundle add webrick
bundle install
```

### Ruby 3.4+ Compatibility

**Issue:** Missing `csv`, `base64`, or `logger`

**Fix:** Already included in `Gemfile`. Run:
```bash
bundle install
```

### Theme Styles Not Loading

**Issue:** Custom styles in `style.scss` not applying

**Fix:** Ensure Jekyll front matter is present:
```scss
---
---
@import "{{ site.theme }}";
```

### Changes Not Reflecting

**Fix:**
```bash
# Clear Jekyll cache
bundle exec jekyll clean

# Rebuild
bundle exec jekyll serve
```

---

## 📚 Resources

- **Jekyll Documentation:** [jekyllrb.com/docs](https://jekyllrb.com/docs/)
- **GitHub Pages:** [pages.github.com](https://pages.github.com/)
- **Jekyll Themes:** [jekyllthemes.io](https://jekyllthemes.io/)
- **Liquid Templating:** [shopify.github.io/liquid](https://shopify.github.io/liquid/)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE.md).

---

## 👤 Author

**Yorick Brown**
Full-Stack Developer | WordPress, WooCommerce & React Specialist

- 🌐 Website: [theyoricktouch.com](https://theyoricktouch.com)
- 💼 LinkedIn: [linkedin.com/in/theyoricktouch](https://linkedin.com/in/theyoricktouch)
- ✉️ Email: info@theyoricktouch.com
- 🐙 GitHub: [@yodiyo](https://github.com/yodiyo)

---

## 🤝 Contributing

While this is a personal portfolio, suggestions and feedback are welcome! Feel free to:

1. Open an issue for bugs or suggestions
2. Fork the repo for your own portfolio
3. Submit a pull request with improvements

---

## 🙏 Acknowledgments

- Jekyll theme: [jekyll-theme-minimal](https://github.com/pages-themes/minimal)
- Hosted on: [GitHub Pages](https://pages.github.com/)
- Inspired by the developer community

---

**Built with ❤️ using Jekyll & GitHub Pages**
