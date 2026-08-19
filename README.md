# Servlets portfolio demo

Small educational Jakarta Servlet application that demonstrates:

- servlet mappings with annotations;
- GET and POST request handling;
- session-based access control;
- JSP views and Expression Language;
- logout with session invalidation;
- Maven packaging as a WAR;
- JUnit 5 and Mockito tests.

## Demo credentials

This repository intentionally uses a public in-memory demo account:

- email: `demo@example.com`
- password: `demo`

These credentials are for learning purposes only. The project does not contain a database-backed or production authentication system.

## Application flow

1. Open the application root and follow the **Log in** link.
2. Submit the login form with the demo credentials.
3. `LoginServlet` validates the credentials, creates a fresh HTTP session and redirects to `/portfolio`.
4. `PortfolioServlet` allows access only when the session contains the authenticated email.
5. **Log out** invalidates the session and redirects back to `/login`.

## Build and test

```bash
./mvnw clean test
./mvnw clean package
```

The packaged WAR is created under `target/` and can be deployed to a Jakarta Servlet 5 compatible container.

## Project structure

```text
src/main/java/com/it_academy/servlet/
├── controller/
│   ├── LoginServlet.java
│   ├── LogoutServlet.java
│   └── PortfolioServlet.java
└── service/
    └── AuthService.java

src/main/webapp/
├── index.jsp
└── html/
    ├── login.jsp
    └── portfolio.jsp

src/test/java/com/it_academy/servlet/
├── controller/
└── service/
```

## Notes

This remains a learning project. For a production application, authentication should use a persistent user store, password hashing, CSRF protection, secure cookie settings and a mature security framework rather than public demo credentials.
