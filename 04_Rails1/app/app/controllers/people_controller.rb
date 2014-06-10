class PeopleController < ApplicationController

  # GET /people
  # GET /people.json
  def index
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    if @person.valid?
      session[:first_name] = @person.first_name
      session[:last_name] = @person.last_name
      session[:description] = @person.description

      redirect_to people_path
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :description)
    end
end
