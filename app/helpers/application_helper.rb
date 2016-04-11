module ApplicationHelper
  def default_meta_tags
    {
      site: 'Sorepo' ,
      reverse: true,
      title: "Sorepo #{params[:page] << 'ページ' if params[:page]}",
      description: 'それっぽいRails'  ,
      keywords: 'Rails,Sample',
      canonical: request.original_url,
      separator:   "&mdash;".html_safe,
      og: {
        title: :title,
        type: :article ,
        url: root_url,
        # image: image_url(Settings.site.meta.ogp.image_path),
        site_name: 'エロッシー Xvideosのオススメエロ動画を毎日あなたに' ,
        description: :description,
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary',
        site: '@soreporails',
        creator: '@soreporails'
      }
    }
  end
end
