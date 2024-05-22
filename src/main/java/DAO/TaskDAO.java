package DAO;

import Model.Project;
import Model.Task;

import java.sql.SQLException;
import java.util.List;

public interface TaskDAO {
    List<Task> getAllTasks() throws SQLException;
    void addTask(Task task) throws SQLException;
    void deleteTask(int taskId) throws SQLException;
    Task getTaskById(int taskId) throws SQLException;
    void updateTask(Task task) throws SQLException;
}
