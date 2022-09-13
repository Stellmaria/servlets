<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Portfolio</title>
</head>
<link rel="stylesheet" href="html/css/main.css">
<link rel="stylesheet" href="html/css/header.css">
<link rel="stylesheet" href="html/css/footer.css">
<link rel="stylesheet" href="html/css/portfolio.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
<body>
<div class="header" id="header">
    <h1 class="header-title">Welcome!</h1>
    <h2 class="header-subtitle">${sessionScope.email}</h2>
    <a href="#portfolio" class="header-arrow">
        <img src="html/img/header/chevron-down.svg" alt="arrow"></a>
</div>
<div class="portfolio" id="portfolio">
    <div class="container">
        <h2 class="skills"> Skills</h2>
        <div class="portfolio-class-wrapper">
            <div class="card">
                <img class="card-img" src="html/img/skills/java.jpg" alt="java">
                <h3 class="card-title">Java</h3>
                <p>Java Programming</p>
            </div>
            <div class="card">
                <img class="card-img" src="html/img/skills/git.jpg" alt="git">
                <h3 class="card-title">Git</h3>
                <p>Tracking changes in your project files</p>
            </div>
            <div class="card">
                <img class="card-img" src="html/img/skills/junit.jpg" alt="java">
                <h3 class="card-title">Junit5</h3>
                <p>Software testing</p>
            </div>
            <div class="card">
                <img class="card-img" src="html/img/skills/maven.jpg" alt="java">
                <h3 class="card-title">Maven</h3>
                <p>Using a framework to automate project builds</p>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <div class="footer-row">
                <div class="footer-copyright footer-col">
                    <div class="footer-copyright-name"> &#169; Anastasia Melnikova</div>
                    <p>Software development</p>
                </div>
                <div class="footer-icons">
                    <p>My social media profiles:</p>
                    <div class="footer-items footer-col">
                        <a href="#" target="_blank">
                            <img src="html/img/footer/facebook.svg" alt="facebook">
                        </a>
                        <a href="#" target="_blank">
                            <img src="html/img/footer/github.svg" alt="github">
                        </a>
                        <a href="#" target="_blank">
                            <img src="html/img/footer/instagram.svg" alt="instagram">
                        </a>
                        <a href="#" target="_blank">
                            <img src="html/img/footer/linkedin.svg" alt="linkedin">
                        </a>
                        <a href="#" target="_blank">
                            <img src="html/img/footer/vk.svg" alt="vk">
                        </a>
                    </div>
                </div>
                <div class="footer-contacts footer-col bi">
                    <a href="#" class="footer-button" target="_blank">
                        Contact me on telegram
                    </a>
                    <p>Write to me to order and find out the cost of developing your project</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="html/libs/jquery/jquery-3.6.0.min.js"></script>
<script src="html/libs/vide/jquery.vide.min.js"></script>
<script src=html/js/main.js></script>
</body>
</html>