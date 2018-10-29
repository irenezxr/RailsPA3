class StaticPagesController < ApplicationController
  def search
    puts "hahahahahahahah"

    puts "hahahahahahahah"
    if params[:subject].nil?&&params[:q].nil?
      @courses = []
    else
      @subject = params[:subject][:id]=='' ? nil : Subject.find(params[:subject][:id])
    	coursename = params[:q]
    	if @subject == nil
    		#@courses = Course.all
    		@courses = Course.where("name LIKE ?", "%#{coursename}%")


    	else
    		#@courses = @subject.courses
    		@courses = @subject.courses.where("name LIKE ?", "%#{coursename}%")
    	end
      puts "hahahahahahahah"
      puts @courses
    end
    respond_to do |f|
      f.js {render "search.js.erb"}
      f.html
    end
  end

  def results
  end

end
