class TtsWatson
  include HTTParty
  base_uri 'https://watson-api-explorer.mybluemix.net'
    
  def initialize(input)
    @query = {
      user: "9c1a0c73-e75a-410a-9a21-027219514ade",
      password: "HxppkGOwuo35",
      accept: 'audio/flac',
      voice: 'en-US_MichaelVoice',
      text: input
    }
  end

  def synthesize
    self.class.get("/text-to-speech/api/v1/synthesize", query: @query)
  end

end