require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #VVVVVVVV

    #text_from_user = params[:user_text]
      # @analyzed_text = TextAnalyzer.new(text_from_user) #setting an instance variable to the a new instance of TextAnalyzer so we can use the controller to send it to the results erb. The instance takes in an argument of "text" as stated in the initialize of the TextAnalyzer class. The text arguement is provided by the form inputed by the user and then taken from the params

    erb :results
  end
end
