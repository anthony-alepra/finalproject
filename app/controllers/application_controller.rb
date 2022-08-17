class ApplicationController < ActionController::Base
    def home

        render("general_views/index.html.erb")
    end
end
