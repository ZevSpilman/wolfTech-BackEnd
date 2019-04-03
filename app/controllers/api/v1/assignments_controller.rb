class Api::V1::AssignmentsController < ApplicationController

  def index
      @assignments=Assignment.all
      render json: @assignments
    end

    def show
      @assignment = get_assignment
    end

    def create
      @assignment = Assignment.create(assignment_params)
      render json: @assignment
    end

    def update
      @assignment = get_assignment.update(assignment_params)
      render json: @assignment
    end

    private
    def get_assignment
      @assignment = Assignment.find(params[:id])
    end

    def assignment_params
      params.require(:assignment).permit(:resident_id, :time)
    end



end
