# Methods defined in the helpers block are available in templates
module CustomTemplateHelpers
  def page_title
    current_page.data.title || data.site.title
  end

  def page_description
    current_page.data.description || data.site.description
  end

  def page_url
    "#{data.site.url}#{current_page.url}"
  end

  def page_twitter_card_type
    current_page.data.twitter_card_type || 'summary'
  end

  # Social share URLs
  # def twitter_url
  #   "https://twitter.com/share?text=“#{current_page.data.title}”" +
  #                              "&url=#{current_article_url}" +
  #                              "&via=SecretSauceHQ"
  # end
  #
  # def facebook_url
  #   "https://www.facebook.com/dialog/feed?app_id=952268334783316" +
  #                                         "&caption=Secret Sauce Marketing Blog." +
  #                                         "&picture=http://www.secretsaucehq.com#{image_path 'secret-sauce-logo.png'}" +
  #                                         "&name=“#{current_article.title}”" +
  #                                         "&description=Learn about all things digital marketing and SEO - how to use these channels to acquire customers and get traction for your business." +
  #                                         "&display=popup" +
  #                                         "&link=#{current_article_url}" +
  #                                         "&redirect_uri=#{current_article_url}"
  # end
  #
  # def google_plus_url
  #   "https://plus.google.com/share?url=#{current_article_url}"
  # end
  #
  # def linkedin_url
  #   "http://www.linkedin.com/shareArticle?mini=true" +
  #                                         "&url=#{current_article_url}" +
  #                                         "&title=#{current_article.title}" +
  #                                         "&summary=Learn about all things digital marketing and SEO - how to use these channels to acquire customers and get traction for your business." +
  #                                         "&source=http://SecretSauceHQ.com/blog"
  # end
end
