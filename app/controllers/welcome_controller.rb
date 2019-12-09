class WelcomeController < ApplicationController

    def index
        render json: "Funciona 'index'", status: :ok
    end
end
