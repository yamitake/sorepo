module SocialButtonsHelper
  #
  # Pinterestボタン
  # layout:none , vertical , horizontal
  # </body>の手前に content_forで :javascriptとして埋め込む
  #
  def pin_button page_url , image_url , layout = 'none'
    content_for :javascript do
      '<script type="text/javascript" src="//assets.pinterest.com/js/pinit.js"></script>'.html_safe
    end

    params = {:url => page_url ,
      :media => image_url ,
    }
    link_to "http://pinterest.com/pin/create/button/?#{params.to_param}" , :"count-layout" => layout do
      image_tag '//assets.pinterest.com/images/PinExt.png' , :title => "Pin It"
    end
  end

  #
  # Tweetボタンを生成する
  #
  #
  def tweet_button(options = {})
    options.each{|k,v| options[k.to_sym] = v if k.is_a?String }
    params = {
              :"data-url" => request.url ,
              :"data-via" => "" ,
              :"data-text" => "" ,
              :"data-related" => "" ,
              :"data-count" => "none" ,
              :"data-lang" => "ja" ,
              :class => "twitter-share-button"
            }.merge(options)

    html = ''
    html << link_to("Tweet", 'https://twitter.com/share' , params)
    html << '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>'
    html.html_safe
  end

  #
  # likeボタンの生成,jsのコードは事前に埋めておく事
  # http://developers.facebook.com/docs/reference/plugins/like/
  #<div class="fb-like" data-href="http://yapr.jp" data-send="false" data-width="300" data-show-faces="true"></div>
  def like_button(options = {})
    options.each{|k,v| options[k.to_sym] = v if k.is_a?String }
    params = {
        :"data-href" => request.url ,
        :"data-send" => false ,
        :"data-show-faces" => false ,
        :"data-width" => 250 ,
        :"data-layout" => "button" ,
        :"data-action" => "like",
        :"data-size"   => "small",
        :"data-share"  => false
    }.merge(options).merge(:class => "fb-like")
    content_tag :div , '' , params
  end
end
