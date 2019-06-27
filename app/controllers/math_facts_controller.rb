class MathFactsController < ApplicationController

  before_action :authenticate_user!
  before_action :get_math_fact, only: [:show, :edit, :update]
  
  def index
    @math_facts = current_user.math_facts.order(:first_number, :second_number)
  end
  
  def show
  end
  
  def edit
  end
  
  def update 
    if @math_fact.update(math_fact_params)
      redirect_to @math_fact
    else
      render 'edit'
    end
  end

  private
  
  def get_math_fact
    @math_fact = current_user.math_facts.where(id: params[:id]).first
    if @math_fact.blank?
      redirect_to authenticated_root_path, alert: "The requested item does not exist"
    end
  end
  
  def math_fact_params
    params.require(:math_fact).permit(:selected_answer, :status)
  end

end
