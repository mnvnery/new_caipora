class ProgramsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        @programs = Program.all
    end
    
    def show
        @program = Program.find(params[:id])
    end

    def edit
        @program= Program.find(params[:id])
    end

    def update
        @program = Program.find(params[:id])
        if @program.update(program_params)
            redirect_to program_path(@program)
        else
            render :new
        end
    end

    private 

    def program_params
        params.require(:program).permit(:day, :summary, :description)
    end
end
