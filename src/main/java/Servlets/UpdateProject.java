package Servlets;

import DAO.ProjectDAO;
import DAO.ProjectDAOI;
import Model.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet(name = "UpdateProject", value = "/update")
public class UpdateProject extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public UpdateProject() {
        super();
        this.projectDAO = new ProjectDAOI();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("projectId");
        if (idStr != null) {
            int id = Integer.parseInt(idStr);
            Project project;
            try {
                project = projectDAO.getProjectById(id);
                if (project != null) {
                    request.setAttribute("project", project);
                    request.getRequestDispatcher("/WEB-INF/updateProject.jsp").forward(request, response);
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND);
                }
            } catch (SQLException e) {
                throw new ServletException("Error retrieving project", e);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String description = request.getParameter("description");
        Date debut = Date.valueOf(request.getParameter("debut"));
        Date fin = Date.valueOf(request.getParameter("fin"));
        int budget = Integer.parseInt(request.getParameter("budget"));

        Project project = new Project(id, nom, description, debut, fin, budget);

        try {
            projectDAO.updateProject(project);
            response.sendRedirect(request.getContextPath() + "/display");
        } catch (SQLException e) {
            throw new ServletException("Error updating project", e);
        }
    }
}