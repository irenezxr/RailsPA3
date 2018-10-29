# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "activerecord-import"

coursesujects = []
course = []

courses = JSON.parse(open('db/jsonfiles/course.json').read)
courses.each do|c|
	course << Course.new(c.except('independent_study','subjects','credits','requirements'))
	
	coursesujects += c["subjects"].map do |s|
		CourseSubject.new(course_code: c["code"], subject_id: s["id"])
	end
end

Course.import(course)
CourseSubject.import(coursesujects)

subjects = JSON.parse(open('db/jsonfiles/subject.json').read)
subject = subjects.map do|s|
  Subject.new(s.except('segments'))
end

Subject.import(subject)
