package Servlet;

import DB.DBManager;
import Nodels.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/taskDetails")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        Task task = DBManager.getTaskById(id);
        req.setAttribute("detali",task);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
