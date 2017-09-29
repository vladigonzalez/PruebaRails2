module TasksHelper
  # para saber si la tarea esta realizada por el usuario
  def tarearealizada? user,task
    @listask = Listask.where("user_id=#{user.id}").where("task_id=#{task.id}")
    if @listask.count == 0
       false
    else
       true
     end
   end
end
