require 'haml'
require 'sinatra/base'
require 'sinatra/asset_pipeline'

class Metris < Sinatra::Base
  set :public_folder, File.dirname(__FILE__)
  set :assets_precompile, %w(application.js application.css)
  set :assets_prefix, %w(assets)

  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end

  run! if app_file == $0
end
