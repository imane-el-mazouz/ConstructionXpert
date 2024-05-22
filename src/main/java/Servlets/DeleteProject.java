package Servlets;

import DAO.ProjectDAO;
import DAO.ProjectDAOI;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteProject", value = "/delete")

public class DeleteProject extends HttpServlet {
    private ProjectDAO projectDAO;

    @Override
    public void init() throws ServletException {

        projectDAO = new ProjectDAOI();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("projectId");

        if (idStr != null) {
            try {
                int id = Integer.parseInt(idStr);
                projectDAO.deleteProject(id);
                resp.sendRedirect(req.getContextPath() + "/display");
            } catch (NumberFormatException | SQLException e) {
                throw new ServletException(e);
            }
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing project ID");
        }
    }
}

