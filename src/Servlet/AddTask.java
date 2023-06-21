package Servlet;

import DB.DBManager;
import Nodels.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/add-task")
public class AddTask extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("t_name");
        String desciption = req.getParameter("t_desc");
        String deadLine = req.getParameter("t_deadline");

        Task task = new Task();
        task.setName(name);
        task.setDesciption(desciption);
        task.setDeallineDate(deadLine);
        DBManager.addTask(task);

        resp.sendRedirect("/home");
    }
}
