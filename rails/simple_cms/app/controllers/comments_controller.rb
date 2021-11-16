class CommentsController < ApplicationController
    def comments
        @employees = Employee.all
      end
end
