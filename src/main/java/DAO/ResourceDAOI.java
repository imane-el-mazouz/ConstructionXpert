package DAO;

import Connection.DatabaseManager;
import Model.Resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


    public class ResourceDAOI implements ResourceDAO {
        private static final String INSERT_RESOURCE_SQL = "INSERT INTO resources (resourceName, resourceType, quantity, supplier, task_id) VALUES (?, ?, ?, ?, ?);";
        private static final String DELETE_RESOURCE_SQL = "DELETE FROM resources WHERE resourceId = ?;";
        private static final String UPDATE_RESOURCE_SQL = "UPDATE resources SET resourceName = ?, resourceType = ?, quantity = ?, supplier = ?, task_id = ? WHERE resourceId = ?;";
        private static final String SELECT_RESOURCES_BY_TASK_ID_SQL = "SELECT * FROM resources WHERE task_id = ?;";

        @Override
        public void addResource(Resource resource) throws SQLException {
            try (Connection connection = DatabaseManager.getConnection();
                 PreparedStatement statement = ((Connection) connection).prepareStatement(INSERT_RESOURCE_SQL)) {

                statement.setString(1, resource.getResourceName());
                statement.setString(2, resource.getResourceType());
                statement.setInt(3, resource.getQuantity());
                statement.setString(4, resource.getSupplier());
                statement.setInt(5, resource.getTask_id());

                statement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        }

        @Override
        public void updateResource(Resource resource) throws SQLException {
            try (Connection connection = DatabaseManager.getConnection();
                 PreparedStatement statement = connection.prepareStatement(UPDATE_RESOURCE_SQL)) {

                statement.setString(1, resource.getResourceName());
                statement.setString(2, resource.getResourceType());
                statement.setInt(3, resource.getQuantity());
                statement.setString(4, resource.getSupplier());
                statement.setInt(5, resource.getTask_id());
                statement.setInt(6, resource.getResourceId());

                statement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        }

        @Override
        public void deleteResource(int resourceId) throws SQLException {
            try (Connection connection = DatabaseManager.getConnection();
                 PreparedStatement statement = connection.prepareStatement(DELETE_RESOURCE_SQL)) {

                statement.setInt(1, resourceId);
                statement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            }
        }

        @Override
        public List<Resource> getResourcesByTaskId(int taskId) throws SQLException {
            List<Resource> resources = new ArrayList<>();
            try (Connection connection = DatabaseManager.getConnection();
                 PreparedStatement statement = connection.prepareStatement(SELECT_RESOURCES_BY_TASK_ID_SQL)) {
                statement.setInt(1, taskId);
                try (ResultSet rs = statement.executeQuery()) {
                    while (rs.next()) {
                        int resourceId = rs.getInt("resourceId");
                        String resourceName = rs.getString("resourceName");
                        String resourceType = rs.getString("resourceType");
                        int quantity = rs.getInt("quantity");
                        String supplier = rs.getString("supplier");
                        resources.add(new Resource(resourceId, resourceName, resourceType, quantity, supplier, taskId));
                    }
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return resources;
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


