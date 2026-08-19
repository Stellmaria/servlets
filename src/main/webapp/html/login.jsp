<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Portfolio</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body class="text-center">
<div class="header" id="header">
    <main class="form-signin w-100 m-auto">
        <form method="post" action="${pageContext.request.contextPath}/login">
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
            <p>Demo account: demo@example.com / demo</p>
            <p class="login-error">${requestScope.error}</p>
            <div class="form-floating">
                <input type="email" name="email" class="form-control" id="floatingInput"
                       placeholder="name@example.com" autocomplete="email" required>
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <input type="password" name="password" class="form-control" id="floatingPassword"
                       placeholder="Password" autocomplete="current-password" required>
                <label for="floatingPassword">Password</label>
            </div>
            <button class="footer-button" type="submit">Sign in</button>
        </form>
    </main>
</div>
<script src="${pageContext.request.contextPath}/html/libs/jquery/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/html/libs/vide/jquery.vide.min.js"></script>
<script src="${pageContext.request.contextPath}/html/js/main.js"></script>
</body>
</html>
