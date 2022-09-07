class DogsController < ApplicationController

    def new
        @dog=Dog.new
    end

    def index
        @dogs=Dog.all
        render json: DogSerializer.new(@dogs) 
    end
  

    def show
        @dog= Dog.find(params[:id])
        render json: DogSerializer.new(@dog) #include: [:person]
    end
    
    def edit
        @dog=Dog.find(params[:id])
    end

    def create
        @dog=Dog.new(dogs_params)
        if @dog.save 
            # flash.now[:notice]="dog was saved in database!"
            render json: DogSerializer.new(@dog)
        else
            render @dog.errors.full_messages
        end
    end

    def update
        @dog= Dog.find(params[:id])
        if @dog.update(dogs_params)
            # flash.now[:notice]="dog was updated in database!"
            render json: DogSerializer.new(@dog)
        else
          render @dog.errors.full_messages
        end
    end 

    def destroy
            @dog=Dog.find(params[:id])
            @dog.destroy
    end
    
    private
    def dogs_params
        params.require(:dog).permit(:name,:age,:person_id)
    end
end

# # options = {
#     include: [:person]
#   }