class PersonalityInsights
  include HTTParty
  base_uri 'https://watson-api-explorer.mybluemix.net'
    
  def initialize(input)
    @query = {
      user: ENV["PI_USER"],
      password: ENV["PI_PASS"],
      include_raw: false,
      headers: false,
      body: input
    }
  end

  def profile
    self.class.get("/personality-insights/api/v2/profile", query: @query)
  end

end