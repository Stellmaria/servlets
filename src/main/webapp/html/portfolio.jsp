<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Portfolio</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/html/css/portfolio.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
<div class="header" id="header">
    <h1 class="header-title">Welcome!</h1>
    <h2 class="header-subtitle">${sessionScope.email}</h2>
    <form action="${pageContext.request.contextPath}/logout" method="post">
        <button class="footer-button" type="submit">Log out</button>
    </form>
    <a href="#portfolio" class="header-arrow">
        <img src="${pageContext.request.contextPath}/html/img/header/chevron-down.svg" alt="arrow">
    </a>
</div>
<div class="portfolio" id="portfolio">
    <div class="container">
        <h2 class="skills">Skills</h2>
        <div class="portfolio-class-wrapper">
            <div class="card">
                <img class="card-img" src="${pageContext.request.contextPath}/html/img/skills/java.jpg" alt="Java">
                <h3 class="card-title">Java</h3>
                <p>Java Programming</p>
            </div>
            <div class="card">
                <img class="card-img" src="${pageContext.request.contextPath}/html/img/skills/git.jpg" alt="Git">
                <h3 class="card-title">Git</h3>
                <p>Tracking changes in project files</p>
            </div>
            <div class="card">
                <img class="card-img" src="${pageContext.request.contextPath}/html/img/skills/junit.jpg" alt="JUnit 5">
                <h3 class="card-title">JUnit 5</h3>
                <p>Software testing</p>
            </div>
            <div class="card">
                <img class="card-img" src="${pageContext.request.contextPath}/html/img/skills/maven.jpg" alt="Maven">
                <h3 class="card-title">Maven</h3>
                <p>Automating project builds</p>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <div class="footer-row">
                <div class="footer-copyright footer-col">
                    <div class="footer-copyright-name">&#169; Anastasia Melnikova</div>
                    <p>Software development</p>
                </div>
                <div class="footer-icons footer-col">
                    <p>GitHub profile:</p>
                    <a href="https://github.com/Stellmaria" target="_blank" rel="noopener noreferrer">
                        <img src="${pageContext.request.contextPath}/html/img/footer/github.svg" alt="GitHub">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/html/libs/jquery/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/html/libs/vide/jquery.vide.min.js"></script>
<script src="${pageContext.request.contextPath}/html/js/main.js"></script>
</body>
</html>
