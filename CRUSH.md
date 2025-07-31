# Zine Static Site Project

## Build Commands
- `zine` - Run development server with hot reload capabilities
- `zine release` - Build site for production (outputs to public/)
- `wrangler pages deploy public --project=website` - Deploy to Cloudflare Pages

## Project Structure
- `/layouts/` - SHTML templates (base templates in `/layouts/templates/`)
- `/content/` - SMD content files (structured markdown)
- `/assets/` - Static assets (css/, img/, fonts/)
- `/public/` - Build output (gitignored)

## Code Style Guidelines

### SHTML Templates
- Use `<extend template="base.shtml">` for template inheritance
- Variable interpolation: `$site.title`, `$page.property`
- Attribute binding: `:text="expression"`, `:html="expression"`
- Loops: `:loop="$page.subpages()"`
- Content slots: `<super>` for injection

### SMD Content Files
- Front matter properties: `.title`, `.author`, `.description`, `.layout`, `.date`
- Date format: "YYYY-MM-DD"
- Markdown content after `---` separator

### CSS Conventions
- Lowercase with hyphens: `navbar`, `container`, `socials`
- Semantic naming for components
- Keep styles in `/assets/css/`

### General
- No JavaScript framework - pure HTML/CSS site
- Zine v0.11.1 static site generator
- Nix flake for development environment
