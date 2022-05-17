class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end
  def show
    @pet = Pet.find(params[:id])
  end
  def new
    @pet = Pet.new
  end

  def create
    #create a new @pet with what comes from the params
    @pet = Pet.new(pet_params)
    #save
    if @pet.save
    #redirect
    redirect_to pets_path
    else
      #re render the form
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    #find the pet
    @pet = Pet.find(params[:id])
    #update it
    if @pet.update(pet_params)
    # if everything is working we redirect
      redirect_to pet_path(@pet)
    else
      render :edit
     #else we go back to the form
    end
  end

  def destroy
    #find the pet
    @pet = Pet.find(params[:id])
    #destroy it
    @pet.destroy
    #redirect
    redirect_to pets_path
  end




  private

  def pet_params
    params.require(:pet).permit(:name,:location,:date_found,:species)
  end





end
