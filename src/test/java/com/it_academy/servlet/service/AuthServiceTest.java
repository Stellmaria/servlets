package com.it_academy.servlet.service;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

class AuthServiceTest {
    private final AuthService authService = new AuthService();

    @Test
    void authenticatesDemoCredentials() {
        assertTrue(authService.isAuthenticated(AuthService.DEMO_EMAIL, AuthService.DEMO_PASSWORD));
    }

    @Test
    void rejectsInvalidCredentials() {
        assertFalse(authService.isAuthenticated(AuthService.DEMO_EMAIL, "wrong-password"));
        assertFalse(authService.isAuthenticated("wrong@example.com", AuthService.DEMO_PASSWORD));
        assertFalse(authService.isAuthenticated(null, null));
    }
}
