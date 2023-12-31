package Servlet;

import DB.DBManager;
import Nodels.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value ="/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Task> tasks = DBManager.getTaskList();
        req.setAttribute("zadanya", DBManager.getTaskList());
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
