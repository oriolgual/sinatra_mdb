require 'spotlite'

class MovieSearch
  def initialize(query)
    @query = query
  end

  def movies
    @movies ||= search.sort do |a,b|
      a.rating.to_f <=> b.rating.to_f
    end.select do |movie|
      movie.poster_url
    end.first(9)
  end

  def release_years
    @release_years ||= movies.map do |movie|
      movie.year
    end.uniq
  end

  private

  def search
    @search ||= Spotlite::Movie.find(@query)
  end
end
