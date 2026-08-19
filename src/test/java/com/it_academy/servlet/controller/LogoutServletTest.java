package com.it_academy.servlet.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class LogoutServletTest {
    private final LogoutServlet servlet = new LogoutServlet();

    @Test
    void invalidatesSessionAndRedirectsToLogin() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        HttpSession session = mock(HttpSession.class);

        when(request.getSession(false)).thenReturn(session);
        when(request.getContextPath()).thenReturn("/servlet");

        servlet.doPost(request, response);

        verify(session).invalidate();
        verify(response).sendRedirect("/servlet/login");
    }
}
