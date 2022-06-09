class PagesController < ApplicationController
    
    
    def checkId
        testId = User.find_by(userId: params[:userId])
        render json: testId 
    end

    skip_before_action :verify_authenticity_token
    def createNewUser
        data = User.new(params.permit(:userId , :password))
        puts data
        data.save()
        render json: data, status: :created
    end 

    def userAll 
        render json: User.all
    end

    
    def userDelete
        task=User.find(params[:userId])
        task.destroy()
        render html: 'done'
    end


    def home 
        render html: 'Hello World'
    end

    def office 
        render html: "Hey i'm in office"
    end

    # skip_before_action :verify_authenticity_token
    # def about 
    #     render json: Task.all
    # end

    def task
        render json: Task.find(params[:id])
    end

    def delete
        task=Task.find(params[:id])
        task.destroy()
        render html: 'done'
    end
    
    def create_table
        test1=Task.create(params.permit(:title, :status, :archive))
        test1.save()
        render json: test1, status: :created
    end

    def number 
        render html: "Phone Number"
    end

    def showAll 
        render json: User.all()

    end

    def Letshow
        task10 = Task.find_by(title: params[:title])
        # task10.headers.add('Access-Control-Allow-Origin','*')
        render json: task10 
    end
end
