package DAO;

import Connection.DatabaseManager;
import Model.Task;
import Model.TacheStatus;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class TaskDAOI implements TaskDAO {
    private static final String INSERT_TASK_SQL = "INSERT INTO tasks (task_name, task_description, debutTask, finTask, status) VALUES (?, ?, ?, ?, ?);";
    private static final String DELETE_TASK_SQL = "DELETE FROM tasks WHERE task_id = ?;";
    private static final String SELECT_TASK_BY_ID_SQL = "SELECT * FROM tasks WHERE task_id = ?;";
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
                TacheStatus status;
                try {
                    status = TacheStatus.valueOf(rs.getString("status").toUpperCase());
                } catch (IllegalArgumentException e) {
                    status = TacheStatus.TO_DO;
                }
                //List<String> resources = Arrays.asList(rs.getString("resources").split(","));
                Task task = new Task(taskId, taskName, taskDescription, debutTask, finTask, status);
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
            System.out.println("-------------ok");
//            statement.setInt(1, task.getTaskId());
            statement.setString(1, task.getTaskName());
            statement.setString(2, task.getTaskDescription());

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            statement.setString(3, sdf.format(task.getDebutTask()));
            statement.setString(4, sdf.format(task.getFinTask()));

            statement.setString(5, task.getStatus().name());
//            statement.setString(7, String.join(",", task.getResources()));

            statement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }


    @Override
    public void deleteTask(int taskId) throws SQLException {
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_TASK_SQL)) {

            statement.setInt(1, taskId);
            statement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Task getTaskById(int taskId) throws SQLException {
        Task task = null;
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_TASK_BY_ID_SQL)) {

            statement.setInt(1, taskId);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                String taskName = rs.getString("task_name");
                String taskDescription = rs.getString("task_description");
                Date debutTask = rs.getDate("debutTask");
                Date finTask = rs.getDate("finTask");
                TacheStatus status = TacheStatus.valueOf(rs.getString("status").toUpperCase());
//                List<String> resources = Arrays.asList(rs.getString("resources").split(","));

                task = new Task(taskId, taskName, taskDescription, debutTask, finTask, status);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return task;
    }


    @Override
    public void updateTask(Task task) throws SQLException {
        try (Connection connection = DatabaseManager.getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_TASK_BY_ID_SQL)) {

            statement.setInt(1, task.getTaskId());

            statement.setString(2, task.getTaskName());
            statement.setString(3, task.getTaskDescription());

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            statement.setString(4, sdf.format(task.getDebutTask()));
            statement.setString(5, sdf.format(task.getFinTask()));

            statement.setString(6, task.getStatus().name());
//            statement.setString(7, String.join(",", task.getResources()));

            statement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }



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