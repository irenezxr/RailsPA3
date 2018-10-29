class CourseSubject < ApplicationRecord
	belongs_to :course, primary_key: :code, foreign_key: :course_code
	belongs_to :subject
end
