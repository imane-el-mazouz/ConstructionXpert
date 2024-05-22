package Servlets;

import DAO.TaskDAO;
import DAO.TaskDAOI;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteTask", value = "/DeleteTask")
public class DeleteTask extends HttpServlet {
    private TaskDAO taskDAO;

    public DeleteTask() {
        this.taskDAO = new TaskDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("task_id"));
        try {
            taskDAO.deleteTask(taskId);
        } catch (SQLException e) {
            throw new ServletException("Cannot delete task", e);
        }
        response.sendRedirect("GetAllTasks");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
