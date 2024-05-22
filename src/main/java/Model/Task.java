
package Model;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

public class Task {

    private int taskId;
    private String taskName;
    private String taskDescription;
    private Date debutTask;
    private Date finTask;
    private TacheStatus status;
    private List<String> resources;

    private int id;

    public Task(int taskId, String taskName, String taskDescription, Date debutTask, Date finTask, TacheStatus status, List<String> resources, int id) {
        this.taskId = taskId;
        this.taskName = taskName;
        this.taskDescription = taskDescription;
        this.debutTask = debutTask;
        this.finTask = finTask;
        this.status = status;
        this.resources = resources;
        this.id = id;
    }

    public Task() {}

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskDescription() {
        return taskDescription;
    }

    public void setTaskDescription(String taskDescription) {
        this.taskDescription = taskDescription;
    }

    public Date getDebutTask() {
        return debutTask;
    }

    public void setDebutTask(Date debutTask) {
        this.debutTask = debutTask;
    }

    public Date getFinTask() {
        return finTask;
    }

    public void setFinTask(Date finTask) {
        this.finTask = finTask;
    }

    public TacheStatus getStatus() {
        return status;
    }

    public void setStatus(TacheStatus status) {
        this.status = status;
    }

    public List<String> getResources() {
        return resources;
    }

    public void setResources(List<String> resources) {
        this.resources = resources;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Task{" +
                "taskId=" + taskId +
                ", taskName='" + taskName + '\'' +
                ", taskDescription='" + taskDescription + '\'' +
                ", debutTask=" + debutTask +
                ", finTask=" + finTask +
                ", status=" + status +
                ", resources=" + resources +
                ", id=" + id +
                '}';
    }
}