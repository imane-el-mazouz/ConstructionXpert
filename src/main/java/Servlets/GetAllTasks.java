package Servlets;

import DAO.TaskDAO;
import DAO.TaskDAOI;
import Model.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "GetAllTasks", value = "/GetAllTasks")
public class GetAllTasks extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private TaskDAO taskDAO;

    public GetAllTasks() {
        super();
        this.taskDAO = new TaskDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Task> tasks = taskDAO.getAllTasks();
            request.setAttribute("tasks", tasks);
            request.getRequestDispatcher("/WEB-INF/getAllTasks.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain tasks from DB", e);
        }
    }
}
