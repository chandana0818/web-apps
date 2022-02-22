class DiceController < ApplicationController

    def index
      if params["name"]
        @die1 = rand(1..6)
        @die2 = rand(1..6)
        @total = @die1 + @die2
        @name = params["name"]
      end
    end
  
  end