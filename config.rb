page "*", :layout => "/_layouts/main"

helpers do
  def is_page_current(page)
    current_page.url.index(page) != nil
  end

  def is_page_current_exact(page)
    current_page.url == page
  end
end

config[:css_dir] = 'css'
config[:js_dir] = 'js'
config[:images_dir] = 'img'

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript

  # Append a hash to asset urls (make sure to use the url helpers)
  #activate :asset_hash
end


activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end