require './config/environment'
require_relative 'models/text_analyzer.rb'

post('/') {@analyzed_text = TextAnalyzer.new(params[:user_text]); erb :results} end

run App
