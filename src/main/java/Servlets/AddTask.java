package Servlets;

import DAO.TaskDAO;
import DAO.TaskDAOI;
import Model.TacheStatus;
import Model.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@WebServlet(name = "AddTask", value = "/AddTask")
public class AddTask extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TaskDAO taskDAO;

    public AddTask() {
        super();
        this.taskDAO = new TaskDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/addTask.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieving parameters from the request
//            int taskId = Integer.parseInt(request.getParameter("taskId"));
            String taskName = request.getParameter("taskName");
            String taskDescription = request.getParameter("taskDescription");
            String debutTaskStr = request.getParameter("debutTask");
            String finTaskStr = request.getParameter("finTask");
            TacheStatus status = TacheStatus.valueOf(request.getParameter("status").toUpperCase());

            // Parsing dates
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date debutTask = sdf.parse(debutTaskStr);
            Date finTask = sdf.parse(finTaskStr);

            // Creating Task object
            Task task = new Task(taskName, taskDescription, debutTask, finTask, status);
            // Calling TaskDAO to add the task
            taskDAO.addTask(task);

            // Redirecting after successful addition
            response.sendRedirect(request.getContextPath() + "/GetAllTasks");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }}