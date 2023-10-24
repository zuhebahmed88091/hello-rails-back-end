class GreetingsController < ApplicationController
    def index
        random_greeting = Greeting.order('RANDOM()').first
        render json: { text: random_greeting.text }
    end
end
