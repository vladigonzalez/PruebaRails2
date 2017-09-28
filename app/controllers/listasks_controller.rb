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

  # definimos la vista index, para mostrar las ordenes procesadas (el listado)
  def index
    # para ver solo las ordenes del usuario activo
    @listasks = current_user.listasks
    @okeys = @listasks.count
    @totaltask = Task.all


    #if user_signed_in?
  	#	@tasks_made = Task.where("user_id=#{current_user.id}").count
  	#	@histories_total = Historie.count
  	#end
  	#@historias = Historie.all
  end
end
