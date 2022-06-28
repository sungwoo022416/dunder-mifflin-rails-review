class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update, :destory]

    def index
        if params[:sorted] == "true"
            @dogs = Dog.all.sort_by {|dog| dog.employees.count}.reverse
        else
            @dogs = Dog.all
        end
    end

    def show
    end

    private 
    def set_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit!
    end
end
