package com.it_academy.servlet.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;
import org.jetbrains.annotations.NotNull;

/**
 * @author Anastasia Melnikova.
 */
@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    @SneakyThrows
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        if (email == null || password == null || "".equals(email) || "".equals(password)) {
            req.getRequestDispatcher("html/login.html").include(req, resp);
        } else {
            req.getSession().setAttribute("email", email);
            resp.sendRedirect("/portfolio");
        }
    }
}
