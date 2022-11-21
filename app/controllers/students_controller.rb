class StudentsController < ApplicationController

    def index 
        students = Student.all 
        render json: students
    end

    def grades
        student = Student.all.order(grade: :desc)
        render json: student
    end

    def highest_grade 
        top = Student.all.max_by{|s| s.grade}
        render json: top
    end
end
