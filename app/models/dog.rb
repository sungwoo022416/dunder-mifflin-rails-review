class Dog < ApplicationRecord
    has_many :employees

    def number_of_employees
        self.employees.size
    end
end
