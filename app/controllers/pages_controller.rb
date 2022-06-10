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


    

    def createUserExpense
        theUser = User.find_by(params[:userId])
        Expense.create(date:params[:date], paymentType:params[:paymentType], description:params[:description], amount:params[amount],user:theUser)

        # data = User.new(params.permit(:date , :paymentType ,:description, :amount))
        # puts data
        # data.save()
        render json:status: :created
    end 

    def ExpenseAll 
        theUser = User.find_by(params[:userId])
        render json: Expense.find_by(params[:theUser])
    end

    def date
        render html: date
        
    end
    # skip_before_action :verify_authenticity_token
    def paymenttype
        # render html: 'hello world'
        render json: paymenttype
    end

    def amount
        render html: amount
    end
    def description
        render html: description
    end

end
