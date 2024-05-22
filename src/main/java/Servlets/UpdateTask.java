package Servlets;

import DAO.TaskDAO;
import DAO.TaskDAOI;
import Model.Task;
import Model.TacheStatus;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

@WebServlet(name = "UpdateTask", value = "/UpdateTask")
public class UpdateTask extends HttpServlet {
    private TaskDAO taskDAO;

    public UpdateTask() {
        this.taskDAO = new TaskDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("task_id"));
        Task task = null;
        try {
            task = taskDAO.getTaskById(taskId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("task", task);
        request.getRequestDispatcher("/WEB-INF/updateTask.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("task_id"));
        String taskName = request.getParameter("task_name");
        String taskDescription = request.getParameter("task_description");
        Date debutTask = Date.valueOf(request.getParameter("debutTask"));
        Date finTask = Date.valueOf(request.getParameter("finTask"));
        TacheStatus status = TacheStatus.valueOf(request.getParameter("status").toUpperCase());
//        String[] resourcesArray = request.getParameter("resources").split(",");
//        int id = Integer.parseInt(request.getParameter("id"));

        Task task = new Task(taskId, taskName, taskDescription, debutTask, finTask, status);

        try {
            taskDAO.updateTask(task);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("GetAllTasks");
    }
}
