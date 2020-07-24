require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text]
    # @analyzed_text = TextAnalyzer.new(text_from_user)
    # NOTES:
    # new inst variable analyzed text
    # controller creating new instance of text analyzer
    # using the new input of the user text put into get / index page
   
    # shortened
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
