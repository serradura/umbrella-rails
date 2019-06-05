module Blog::Posts::ViewsHelper
  def red_h1(content)
    "<h1 style=\"color: red\">#{content}</h1>".html_safe
  end
end
