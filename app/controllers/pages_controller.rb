class PagesController < ApplicationController
    
    
    def checkId
        testId = User.find_by(userId: params[:userId])
        render json: testId 
    end

    skip_before_action :verify_authenticity_token
    def createNewUser
        data = User.new(params.permit(:username , :password))
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


    

    def createExpense
        theUser = User.find(params[:id])
        # Price.create(date:params[:date], paymentType:params[:paymentType], description:params[:description], amount:params[:amount],user:theUser)
        data = Price.new(date:params[:date], paymentType:params[:paymentType], description:params[:description], amount:params[:amount],user:theUser)
        puts data
        data.save()
        render json: data
    end 

    def expenseShowAll
        # render html: "hello"
        theUser = User.find(params[:user_id])
        puts params
        thePrice = Price.where(date: params[:date],user_id: params[:user_id])
        render json: thePrice
    end

    def priceDelete
        theUser=User.find(params[:userId])
        theUser.destroy()
        render html: 'done'
    end
    # def expenses 
    #     theUser = User.find(params[:id])
    #     theDate = Price.find_by((user_id: params[:user_id]) && (date: params[:date]))
    #     render json: theDate
    # end

    # def date
    #     render html: "date"
        
    # end
    # skip_before_action :verify_authenticity_token
    def paymenttype
        # render html: 'hello world'
        render json: paymenttype
    end

    def amount
        render html: "amount"
    end
    def description
        render html: "description"
    end


end
