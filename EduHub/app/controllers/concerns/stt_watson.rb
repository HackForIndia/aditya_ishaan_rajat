class SttWatson
  include HTTParty
  base_uri 'https://watson-api-explorer.mybluemix.net'

  def initialize(input)
    @query = {
      user: ENV["IBM_USER_STT"],
      password: ENV["IBM_PASS_STT"],
      accept: 'audio/flac',
      model: 'en-US_BroadbandModel',
      continuous: false,
      inactivity_timeout: 4,
      max_alternatives: 1,
      word_confidence: false,
      timestamps: false
      profanity_filter: true
    }
  end

  def synthesize
    self.class.get("/speech-to-text/api/v1/recognize", query: @query)
  end

end