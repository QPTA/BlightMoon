<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>${pageTitle}</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
            <meta name="theme-color" content="#0A0806">
        </head>

        <body>
            <canvas id="sandstorm"></canvas>

            <div class="fog-container">
                <div class="fog fog1"></div>
                <div class="fog fog2"></div>
                <div class="fog fog3"></div>
            </div>
            <!-- NAVBAR -->
            <nav class="navbar" role="navigation" aria-label="Main navigation">
                <a href="/" class="navbar-brand">DARK MOON</a>

                <ul class="navbar-nav">
                    <li class="nav-item"><a href="/" class="${activePage == 'home' ? 'active' : ''}">Home</a></li>
                    <li class="nav-item"><a href="/story" class="${activePage == 'story' ? 'active' : ''}">Story</a>
                    </li>
                    <li class="nav-item"><a href="/characters"
                            class="${activePage == 'characters' ? 'active' : ''}">Characters</a></li>
                    <li class="nav-item"><a href="/enemies"
                            class="${activePage == 'enemies' ? 'active' : ''}">Enemies</a></li>
                    <li class="nav-item"><a href="/weapons"
                            class="${activePage == 'weapons' ? 'active' : ''}">Weapons</a></li>
                    <li class="nav-item"><a href="/world" class="${activePage == 'world' ? 'active' : ''}">World</a>
                    </li>
                    <li class="nav-item"><a href="/news" class="${activePage == 'news' ? 'active' : ''}">News</a>
                    </li>
                    <li class="nav-item"><a href="/community"
                            class="${activePage == 'community' ? 'active' : ''}">Community</a></li>
                </ul>

                <a href="/support" class="navbar-cta">Support</a>

                <button class="hamburger" id="hamburger" aria-label="Toggle menu" aria-expanded="false">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </nav>

            <!-- MOBILE MENU -->
            <div class="mobile-menu" id="mobileMenu" aria-hidden="true">
                <ul class="mobile-menu-list">
                    <li><a href="/" class="${activePage == 'home' ? 'active' : ''}">Home</a></li>
                    <li><a href="/story" class="${activePage == 'story' ? 'active' : ''}">Story</a></li>
                    <li><a href="/characters" class="${activePage == 'characters' ? 'active' : ''}">Characters</a>
                    </li>
                    <li><a href="/enemies" class="${activePage == 'enemies' ? 'active' : ''}">Enemies</a></li>
                    <li><a href="/weapons" class="${activePage == 'weapons' ? 'active' : ''}">Weapons</a></li>
                    <li><a href="/world" class="${activePage == 'world' ? 'active' : ''}">The World</a></li>
                    <li><a href="/news" class="${activePage == 'news' ? 'active' : ''}">News</a></li>
                    <li><a href="/community" class="${activePage == 'community' ? 'active' : ''}">Community</a></li>
                    <li><a href="/support" class="${activePage == 'support' ? 'active' : ''}">Support</a></li>
                </ul>
            </div>