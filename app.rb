require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    analyze = PigLatinizer.new
    @analyzed_text = analiyze.piglatinize(params[:user_text])
    erb :results
  end 
end
