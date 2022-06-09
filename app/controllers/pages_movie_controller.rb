class MovieController < ApplicationController
    def Letshow
        task10 = Task.find(params[:id])
        render json: task10 
    end
end