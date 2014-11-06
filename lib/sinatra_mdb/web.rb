require 'sinatra'
require "sinatra/reloader"

module SinatraMdb
  class Web < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
      "Hello World"
    end
  end
end
