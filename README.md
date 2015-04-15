# middleman-seo
A SEO-optimized project template for [Middleman](http://middlemanapp.com), the amazing static site building tool.

## Design goals
- Simple
- Grokkable
- Out of the box search engine and social media optimizations

## Features
__SEO Features__
- Comprehensive [meta tags](http://secretsaucehq.com/blog/social-media/the-ultimate-guide-to-social-media-meta-tags/) for search engines and social media platforms
- Easily manage critical site-wide information in `data/site.yml`
- Customizable page-level title, description, and image via [Frontmatter](https://middlemanapp.com/basics/frontmatter/)
- Sitemaps generated in both `HTML` and `XML`
- Accurate social share URL template helpers
- Customizable `robots.txt` generation via [middleman-robots](http://github.com/yterajima/middleman-robots)

__Other Features__
- Optionally manage frontend dependencies via [Bower](http://bower.io)

## Dependencies

- [Middleman](http://middlemanapp.com)
- [Slim](http://slim-lang.com/) templates
- [Sass](http://sass-lang.com/) with [Bourbon](http://bourbon.io/)

## Usage
Clone this repo into your `~/.middleman` directory as "seo"

`git clone git@github.com:secretsaucehq/middleman-seo.git ~/.middleman/seo`

Now you can simply init new projects with the "seo" template:

`middleman init my-project --template=seo `

Just don't forget to update `~/.middleman/seo` every now and then.

## TODO's
- SEO optimize the Middleman blog extension.
