require 'sinatra/base'
require 'slim'

class Mobile < Sinatra::Base
  set :slim, :layout_engine => :erb, :layout => :layout

  get '/' do
    erb :index
  end

  get '/:path' do
    erb params[:path].to_sym rescue slim params[:path].to_sym
  end
end

