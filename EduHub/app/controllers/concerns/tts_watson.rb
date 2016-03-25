class TtsWatson
  include HTTParty
  base_uri 'https://watson-api-explorer.mybluemix.net'
    
  def initialize(input)
    @query = {
      user: ENV["TTS_USER"],
      password: ENV["TTS_PASS"],
      accept: 'audio/flac',
      voice: 'en-US_MichaelVoice',
      text: input
    }
  end

  def synthesize
    self.class.get("/text-to-speech/api/v1/synthesize", query: @query)
  end

end