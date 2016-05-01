require 'lib/page_helpers'
helpers PageHelpers

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/sitemap.html', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# activate :blog do |blog|
#   # This will add a prefix to all links, template references and source paths
#   blog.name = 'blog'
#   # blog.prefix = 'blog'

#   blog.permalink = '{title}.html'
#   blog.sources = 'articles/{year}-{month}-{day}-{title}.html'
#   blog.default_extension = ".md"

#   blog.tag_template = "tag.html"

#   blog.paginate = true
#   blog.per_page = 10
#   blog.page_link = 'page/{num}'

#   # blog.taglink = "tags/{tag}.html"
#   # blog.layout = "layout"
#   # blog.summary_separator = /(READMORE)/
#   # blog.summary_length = 250
# end


configure :development do
  activate :livereload
end

ignore "*.sass"

activate :external_pipeline,
  name: :gulp,
  command: build? ? './node_modules/gulp/bin/gulp.js default' : './node_modules/gulp/bin/gulp.js watch',
  source: "./gulp_dist",
  latency: 1

set :relative_links, true
activate :directory_indexes

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# Build-specific configuration
configure :build do
  activate :asset_hash
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
  activate :robots, rules: [
    { user_agent: '*', allow: ['/']  }
  ],
  sitemap: "#{data.site.url}/sitemap.xml"
end
