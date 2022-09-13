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
@WebServlet(name = "portfolio", value = "/portfolio")
public class PortfolioServlet extends HttpServlet {
    @Override
    @SneakyThrows
    public void doGet(@NotNull HttpServletRequest req, HttpServletResponse res) {
        String attribute = "email";
        if (req.getSession().getAttribute(attribute) == null) {
            res.sendRedirect("/login");
        } else {
            req.getRequestDispatcher("html/portfolio.jsp").include(req, res);
        }
    }
}