class PeopleController < ApplicationController
  def index
  	@people = Person.all
  end

  def new
  	@person = Person.new
  end

  def create
  	@person = Person.new(person_params)

  	if @person.save
  		redirect_to @person
  		flash[:notice] = "#{params[:firstname]} #{params[:surname]} saved ok !"
  	else
  		flash[:alert] = "Error saving new person"
  	end
  end

  def show
  	@person = Person.find(params[:id])
  end


  private

  	def person_params
  		params.require(:person).permit(
		    :firstname,
		    :surname,
		    :dob,
		    :pps,
		    :address1,
		    :address2,
		    :email,
		    :telephone
		  )
  	end
end
