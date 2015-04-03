class ElementsController < ApplicationController
  before_action :set_element, only: [:show, :edit, :update, :destroy]
  before_action :force_user_to_be_connected
  before_action :redirect_if_not_allowed, only: [:destroy, :update, :edit]


  def index
    @elements = Element.all
  end


  def show
  end


  def new
    @element = Element.new

  end


  def edit
  end


  def create
    @element = Element.new(element_params)
    @element.user = @current_user
    uploaded_io = params[:element][:name]
    File.open(Rails.root.join('public', 'data', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    if @element.save
      flash[:success] = "Le Document a bien été ajouté."
      redirect_to @element
    else
      render :new
    end
  end

  # PATCH/PUT /elements/1
  # PATCH/PUT /elements/1.json
  def update
    if @element.update(element_params)
      redirect_to @element, notice: 'Element was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /elements/1
  # DELETE /elements/1.json
  def destroy
    @element.destroy
    respond_to do |format|
      format.html { redirect_to elements_url, notice: 'Element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_element
    @element = Element.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def element_params
    params.require(:element).permit(:type_element, :module, :promotion, :chemin_element, :user_id)
  end

  def redirect_if_not_allowed
    unless @element.is_this_user_allowed_to_edit_me?(user)
      flash[:error] = 'Vous ne possédez pas les autorisations nécessaires'
      redirect_to(:back)
    end
  end
end




