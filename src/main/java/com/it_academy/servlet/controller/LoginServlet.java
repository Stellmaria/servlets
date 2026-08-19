package com.it_academy.servlet.controller;

import com.it_academy.servlet.service.AuthService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Handles demo authentication for the servlet sample application.
 *
 * @author Anastasia Melnikova.
 */
@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    private final AuthService authService = new AuthService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/html/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = normalize(req.getParameter("email"));
        String password = req.getParameter("password");

        if (!authService.isAuthenticated(email, password)) {
            resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            req.setAttribute("error", "Invalid email or password");
            req.getRequestDispatcher("/html/login.jsp").forward(req, resp);
            return;
        }

        HttpSession currentSession = req.getSession(false);
        if (currentSession != null) {
            currentSession.invalidate();
        }

        HttpSession session = req.getSession(true);
        session.setAttribute("email", email);
        resp.sendRedirect(req.getContextPath() + "/portfolio");
    }

    private String normalize(String value) {
        return value == null ? null : value.trim();
    }
}
