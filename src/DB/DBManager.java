package DB;

import Nodels.Task;

import java.util.ArrayList;

public class DBManager {

    private static ArrayList<Task> taskList= new ArrayList<>();

    static Long id=1L;

    public static void addTask(Task task){
        task.setId(id);
        id++;
        taskList.add(task);
    }
     public static ArrayList<Task> getTaskList(){
        return taskList;
     }

     public static Task getTaskById(Long id) {
        return  taskList.stream()
                .filter(task -> task.getId() == id)
                .findFirst()
                .orElseThrow(null);
     }

     public static void deleteTask(Long id){


         Task taskToRemove = null;
         for (Task task : taskList) {
             if (task.getId().equals(id)) {
                 taskToRemove = task;
                 break;
             }
         }
         if (taskToRemove != null) {
             taskList.remove(taskToRemove);
         }
     }
}
