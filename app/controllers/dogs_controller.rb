class DogsController < ApplicationController
    before_action :set_dog, only: [:show, :edit, :update, :destory]

    def index
        @dogs = Dog.all
    end

    private 
    def set_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit!
    end
end
