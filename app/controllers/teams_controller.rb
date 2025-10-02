class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path, notice: "Time criado com sucesso!"
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
