package DAO;

import Connection.DatabaseManager;
import Model.Task;
import Model.TacheStatus;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TaskDAOI implements TaskDAO {
    private static final String INSERT_TASK_SQL = "INSERT INTO tasks (taskId, taskName, taskDescription, debutTask, finTask, status, resources, id) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String DELETE_TASK_SQL = "DELETE FROM tasks WHERE taskId = ?;";
    private static final String SELECT_TASK_BY_ID_SQL = "SELECT * FROM tasks WHERE taskId = ?;";
    private static final String UPDATE_TASK_SQL = "UPDATE tasks SET taskName = ?, taskDescription = ?, debutTask = ?, finTask = ?, status = ?, resources = ?, id = ? WHERE taskId = ?;";
    private static final String SELECT_ALL_TASKS_SQL = "SELECT * FROM tasks;";

    @Override
    public List<Task> getAllTasks() throws SQLException {
        List<Task> tasks = new ArrayList<>();
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_ALL_TASKS_SQL);
             ResultSet rs = statement.executeQuery()) {

            while (rs.next()) {
                int taskId = rs.getInt("task_id");
                String taskName = rs.getString("task_name");
                String taskDescription = rs.getString("task_description");
                Date debutTask = rs.getDate("debutTask");
                Date finTask = rs.getDate("finTask");
                TacheStatus status = TacheStatus.valueOf(rs.getString("status")); // Make sure the status matches your enum values
                List<String> resources = Arrays.asList(rs.getString("resources").split(",")); // Convert comma-separated string to list
                int id = rs.getInt("id");
                // Create a new Task object and add it to the list
                Task task = new Task(taskId, taskName, taskDescription, debutTask, finTask, status, resources, id);
                tasks.add(task);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return tasks;
    }

    @Override
    public void addTask(Task task) throws SQLException {
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(INSERT_TASK_SQL)) {

            statement.setInt(1, task.getTaskId());
            statement.setString(2, task.getTaskName());
            statement.setString(3, task.getTaskDescription());

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            statement.setString(4, sdf.format(task.getDebutTask()));
            statement.setString(5, sdf.format(task.getFinTask()));

            statement.setString(6, task.getStatus().name());
            statement.setString(7, String.join(",", task.getResources()));
            statement.setInt(8, task.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public void deleteTask(int taskId) throws SQLException {

    }

    @Override
    public Task getTaskById(int taskId) throws SQLException {
        return null;
    }

    @Override
    public void updateTask(Task task) throws SQLException {

    }

    // Other methods...

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
