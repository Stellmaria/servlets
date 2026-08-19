package com.it_academy.servlet.controller;

import com.it_academy.servlet.service.AuthService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class LoginServletTest {
    private final LoginServlet servlet = new LoginServlet();

    @Test
    void getShowsLoginPage() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = mock(RequestDispatcher.class);
        when(request.getRequestDispatcher("/html/login.jsp")).thenReturn(dispatcher);

        servlet.doGet(request, response);

        verify(dispatcher).forward(request, response);
    }

    @Test
    void validCredentialsCreateFreshSessionAndRedirect() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        HttpSession oldSession = mock(HttpSession.class);
        HttpSession newSession = mock(HttpSession.class);

        when(request.getParameter("email")).thenReturn("  " + AuthService.DEMO_EMAIL + "  ");
        when(request.getParameter("password")).thenReturn(AuthService.DEMO_PASSWORD);
        when(request.getSession(false)).thenReturn(oldSession);
        when(request.getSession(true)).thenReturn(newSession);
        when(request.getContextPath()).thenReturn("/servlet");

        servlet.doPost(request, response);

        verify(oldSession).invalidate();
        verify(newSession).setAttribute("email", AuthService.DEMO_EMAIL);
        verify(response).sendRedirect("/servlet/portfolio");
    }

    @Test
    void invalidCredentialsReturnUnauthorizedAndShowLoginPage() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = mock(RequestDispatcher.class);

        when(request.getParameter("email")).thenReturn(AuthService.DEMO_EMAIL);
        when(request.getParameter("password")).thenReturn("wrong");
        when(request.getRequestDispatcher("/html/login.jsp")).thenReturn(dispatcher);

        servlet.doPost(request, response);

        verify(response).setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        verify(request).setAttribute("error", "Invalid email or password");
        verify(dispatcher).forward(request, response);
        verify(request, never()).getSession(true);
    }
}
