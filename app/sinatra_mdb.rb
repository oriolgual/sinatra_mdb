require 'sinatra'
require "sinatra/reloader"
require_relative 'models/movie_search'

module SinatraMdb
  class Web < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
      erb :home, layout: :application
    end

    get '/contact' do
      erb :contact, layout: :application
    end

    post '/hola' do
      erb :hola, layout: :application, locals: {name: params[:name]}
    end

    get '/imdb' do
      erb :imdb_form, layout: :application
    end

    post '/imdb' do
      movies = MovieSearch.new(params[:query]).movies

      erb :imdb_movie, layout: :application, locals: {movies: movies}
    end
  end
end
