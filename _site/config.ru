require 'yaml'
require 'rack/ssl'
require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

use Rack::SSL if ENV['USE_SSL']

map "/" do
  use Rack::TryStatic, root: "_site", urls: %w[/], try: %w(/index.html)
end

run Rack::NotFound.new('_site/404.html')
