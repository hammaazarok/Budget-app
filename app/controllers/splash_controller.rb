class SplashController < ApplicationController
    def index
        if(current_user == nil)
            render 'index'
        else
            redirect_to groups_path
        end
    end
end
