module GoogleWebfonts
  class API
    include HTTParty
    BASE_URI = 'https://www.googleapis.com/webfonts/v1/webfonts?key=' + ENV['GOOGLE_API_KEY']

    def initialize(sort, fields)
      @options = { sort: sort, fields: fields }
    end

    def index
      self.class.get(BASE_URI, @options)
    end
  end
end
