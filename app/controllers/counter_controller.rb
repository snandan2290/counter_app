class CounterController < ApplicationController

    before_action :set_click

    def initialize
      @@clicks ||=0
    end

    
    def index
        @@clicks ||= 0
        # byebug
        Rails.logger.debug("@clicks::#{@@clicks}/#{params[:clicked]}")
        if params.has_key?("clicked") && "true" == params[:clicked]
            @@clicks += 1
        end
        Rails.logger.debug("@clicks::111:::#{@@clicks}")
    end

    def click
        # @@clicks +=1
    end

    private 
    def set_click
        @@clicks = 0 unless @@clicks
    end

end
