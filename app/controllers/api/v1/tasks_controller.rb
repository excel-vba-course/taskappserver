class Api::V1::TasksController < Api::V1::ApplicationController

	# before_action :set_deal_note, only: [:destroy]

	def create
		Task.create(file: params[:file], tags: params[:tags], description: params[:description])
		render json: {
			success: true
		}
	end

	private
	# Use callbacks to share common setup or constraints between actions.
    # def set_deal_note
      # @deal_note = DealNote.where(id: params[:id]).first
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def deal_source_params
    #   params.require(:deal_source).permit(:title, :cp_title, :cp_name, :company_name, :state)
    # end

end