class TTSWatson
    include HTTParty
    base_uri 'https://watson-api-explorer.mybluemix.net'
    
    
  def initialize(voice = 'en-US_MichaelVoice', input)
    @options = { query: { voice: voice, text: input } }
  end

  def synthesize
    self.class.get("/text-to-speech/api/v1/synthesize", @options)
  end

end
