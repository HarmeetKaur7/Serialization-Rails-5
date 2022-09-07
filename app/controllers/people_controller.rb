class PeopleController < ApplicationController
    def new
        @person=Person.new
    end

    def index
        @people=Person.all
        render json: PersonSerializer.new(@people)
    end
  

    def show
        @person= Person.find(params[:id])
        render json: PersonSerializer.new(@person)
    end
    
    def edit
        @person=Person.find(params[:id])
    end

    def create
        @person=Person.new(people_params)
        if @person.save
            # flash.now[:notice]="person was saved in database!"
            render json: PersonSerializer.new(@person)
        else
            render @person.errors.full_messages
        end
    end

   

    def update
        @person= Person.find(params[:id])
        if @person.update(people_params)
            # flash.now[:notice]="person was updated in database!"
            render json: PersonSerializer.new(@person)
        else
            render @person.errors.full_messages
        end
    end


    def destroy
        @person=Person.find(params[:id])
        @person.destroy
    end

    private
    def people_params
      params.require(:person).permit(:id,:name, :age)
    end

end
