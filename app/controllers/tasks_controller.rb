class TasksController < ApplicationController
  #before_action :authenticate_user!
  before_action :listatareas
  before_action :buscatarea, only: [:show]

  #def index
  #  @tasks = Task.all
  #  @hechas = Listask.where(user_id: current_user, done: true)
  #  #@Okeys = current_user..count
  #  @okeys = @hechas.count
  #end

  def index
    @tasks = Task.all
  end

  def show

    ##Traigo las tareas realizadas por el usuario
    @listasks =  Listask.where(task: @task.id).where( done: true)

    #ranking
    @ranking = User.joins(:tasks, :listasks)
               .select('users.photo, tasks.name, users.email, listasks.created_at')
               .distinct.where("listasks.done = true and tasks.id = ?", @task.id)
               .order('created_at ASC').limit(5)
  end


  private

  def buscatarea
    @task = Task.find(params[:id])
  end

  def listatareas
    @okeys = Listask.where(user: current_user).where(done: true).count
    @totaltareas = Task.all.count
  end

  #def index
  #  # para ver solo las ordenes del usuario activo
  #  @listasks = current_user.listasks
  #  @okeys = @listasks.count
  #  @totaltask = Task.all.count
  #end


  end
