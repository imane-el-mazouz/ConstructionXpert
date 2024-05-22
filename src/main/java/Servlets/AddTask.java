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
            int taskId = Integer.parseInt(request.getParameter("task_id"));
            String taskName = request.getParameter("task_name");
            String taskDescription = request.getParameter("task_description");
            String debutTaskStr = request.getParameter("debutTask");
            String finTaskStr = request.getParameter("finTask");
            TacheStatus status = TacheStatus.valueOf(request.getParameter("status").toUpperCase());
            String[] resourcesArr = request.getParameterValues("resources");
            List<String> resources = resourcesArr != null ? Arrays.asList(resourcesArr) : null;
            int id = Integer.parseInt(request.getParameter("project_id"));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date debutTask = sdf.parse(debutTaskStr);
            Date finTask = sdf.parse(finTaskStr);
            Task task = new Task(taskId, taskName, taskDescription, debutTask, finTask, status, resources, id);
            taskDAO.addTask(task);
            response.sendRedirect(request.getContextPath() + "/GetAllTasks");
        } catch (NumberFormatException | ParseException | SQLException e) {
            throw new ServletException("Error processing task addition", e);
        }
    }
}
