package com.it_academy.servlet.service;

/**
 * Minimal in-memory authentication used by this educational servlet project.
 * The credentials are intentionally public demo credentials and must not be
 * treated as a production authentication mechanism.
 */
public final class AuthService {
    public static final String DEMO_EMAIL = "demo@example.com";
    public static final String DEMO_PASSWORD = "demo";

    public boolean isAuthenticated(String email, String password) {
        return DEMO_EMAIL.equals(email) && DEMO_PASSWORD.equals(password);
    }
}
