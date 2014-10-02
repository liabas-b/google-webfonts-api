module GoogleWebfonts
  class API
    include HTTParty
    BASE_URI = 'https://www.googleapis.com/webfonts/v1/webfonts?key=' + (ENV['GOOGLE_API_KEY'].present? ? ENV['GOOGLE_API_KEY'] : '')

    def initialize(sort, fields)
      @options = { sort: sort, fields: fields }
    end

    def index
      JSON.parse(self.class.get(BASE_URI, @options).response.body)
    end
  end
end
