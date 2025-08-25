website
![License](https://img.shields.io/github/license/hqnna/website?labelColor=334155&color=3b82f6)
![Activity](https://img.shields.io/github/last-commit/hqnna/website?labelColor=334155&color=3b82f6)
===============================================================================

My personal website and blog, made using the [Zine](https://zine-ssg.io/) static
site generator.

## Deploying To Cloudflare

I do not deploy the website manually for multiple reasons, instead I have CI
setup with Cloudflare's Wrangler CLI to automatically build and deploy any
changes. If for whatever reason you want to do it manually however, you will
need the two software I use for building and deployment:

- [Zine](https://zine-ssg.io/), which is the static site generator I use for the website.
- [Wrangler](https://github.com/cloudflare/workers-sdk/tree/main/packages/wrangler), which is used to deploy the website to Cloudflare Pages.

After installing and setting up these two things you can build and deploy in
two commands with ease:

```sh
zine release # builds the website for release / deployment
wrangler pages deploy public --project=website # deploy to cloudflare
```

This will build and deploy the website to a Cloudflare Pages project.

## Licensing Of Content

Everything under this repository is licensed under two different licenses,
depending on content:

- Source code is all licensed under the [BSD-3-Clause-Clear](LICENSE.txt) license.
- Blog posts are all licensed under the [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/) license.
- All fonts are licensed under their respective licenses.

I would recommend reading the licenses before forking this repo.
