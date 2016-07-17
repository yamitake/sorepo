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

    link_to("Tweet", 'https://twitter.com/share' , params)
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

  #
  # LINEボタン
  # https://media.line.me/howto/ja/
  #

  #
  # poketボタン
  #
  def pocket_button options = {}
    options.each{|k,v| options[k.to_sym] = v if k.is_a?String }
    params = {
      :"data-pocket-label" => 'pocket',
      :"data-pocket-count" => 'none',
      :"data-lang" => 'en',
      :class => 'pocket-btn'
    }.merge(options)
    link_to '' , '' , params
  end
end
