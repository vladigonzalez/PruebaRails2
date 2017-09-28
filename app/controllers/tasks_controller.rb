class TasksController < ApplicationController
  #def index
  #  @tasks = Task.all
  #  @hechas = Listask.where(user_id: current_user, done: true)
  #  #@Okeys = current_user..count
  #  @okeys = @hechas.count
  #end

  def index
    @tasks = Task.all
    @okeys = Listask.where(user_id: current_user, done: true).count
  end

  #def index
  #  # para ver solo las ordenes del usuario activo
  #  @listasks = current_user.listasks
  #  @okeys = @listasks.count
  #  @totaltask = Task.all.count
  #end
end
