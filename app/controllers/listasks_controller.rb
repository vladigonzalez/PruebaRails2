class ListasksController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @listask = Listask.create(task: @task, user: current_user)
    if @listask.save
      redirect_to tasks_path, notice: 'La tarea fue realizada'
    else
      redirect_to tasks_path, alert: 'La tarea esta pendiente'
    end
  end

  def show
    
  end

  def destroy
    #byebug
    @listask = Listask.find(params[:id])
    if @listask.destroy
      redirect_to tasks_path, notice: 'La tarea fue eliminada'
    else
      redirect_to tasks_path, alert: 'No se ha eliminado la tarea'
    end
  end

  # definimos la vista index, para mostrar las ordenes procesadas (el listado)
  def index
    # para ver solo las ordenes del usuario activo
    @listasks = current_user.listasks
    #@okeys = @listasks.count

    @okeys = Listask.where(user_id: current_user, done: true).count
    @totaltareas = Task.all.count


    #if user_signed_in?
  	#	@tasks_made = Task.where("user_id=#{current_user.id}").count
  	#	@histories_total = Historie.count
  	#end
  	#@historias = Historie.all
  end
end
