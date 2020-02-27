require './config/environment'
require_relative 'models/text_analyzer.rb'

post '/' do
  text_from_user = params[:user_text]
  @analyzed_text = TextAnalyzer.new(text_from_user)
  erb :results
end

run App
