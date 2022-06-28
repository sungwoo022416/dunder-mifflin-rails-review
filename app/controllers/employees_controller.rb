class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :destory]



    private 
    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit!
    end
end
