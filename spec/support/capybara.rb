Capybara.app_host = 'http://localhost'
Capybara.always_include_port = true
Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
                                      js_errors: false,
                                      timeout: 30,
                                      phantomjs_options: [
                                        '--load-images=no',
                                        '--ignore-ssl-errors=yes',
                                        '--ssl-protocol=any']
                                      }
                                    )
end
Capybara.configure do |config|
  config.match = :one
  config.exact_options = true
  config.ignore_hidden_elements = true
  config.visible_text_only = true
end