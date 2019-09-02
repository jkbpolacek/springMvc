<%@ tag pageEncoding="utf-8" dynamic-attributes="dynattrs" trimDirectiveWhitespaces="true" %>
<%@ attribute name="body" fragment="true" required="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<jsp-config>
    <jsp-property-group>
        <url-pattern>*.jsp</url-pattern>
        <page-encoding>UTF-8</page-encoding>
    </jsp-property-group>
</jsp-config>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>

    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>InvictuSys</title>
    <meta name="description" content="Webapplication for the Invictus strategy roleplaying game">
    <meta name="author" content="Forsaken">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="${contextPath}/resources/css/base.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/vendor.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">

    <!-- script
    ================================================== -->
    <script src="${contextPath}/resources/js/modernizr.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="apple-touch-icon" sizes="180x180" href="${contextPath}/resources/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${contextPath}/resources/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath}/resources/favicon-16x16.png">
    <link rel="manifest" href="${contextPath}/resources/site.webmanifest">

</head>

<body>

<form id="logoutForm" method="POST" action="/logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<!-- preloader
================================================== -->

<div id="preloader">
    <div id="loader" class="dots-fade">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>

<div id="top" class="s-wrap site-wrapper">

    <!-- site header
    ================================================== -->
    <header class="s-header">

        <div class="header__top">
            <div class="header__logo">
                <a class="site-logo" href="/index">
                    <img src="${contextPath}/resources/images/logo.svg" alt="Homepage">
                </a>
            </div>

            <%--
            <div class="header__search">

                <form role="search" method="get" class="header__search-form" action="#">
                    <label>
                        <span class="hide-content">Search for:</span>
                        <input type="search" class="header__search-field" placeholder="Type Keywords" value="" name="s" title="Search for:" autocomplete="off">
                    </label>
                    <input type="submit" class="header__search-submit" value="Search">
                </form>

                <a href="#0" title="Close Search" class="header__search-close">Close</a>

            </div>  <!-- end header__search -->

            <!-- toggles -->
            <a href="#0" class="header__search-trigger"></a>
            --%>
            <a href="#0" class="header__menu-toggle"><span>Menu</span></a>

        </div> <!-- end header__top -->

        <nav class="header__nav-wrap">

            <ul class="header__nav">
                <%--<li class="has-children">
                    <a href="#0" title="">Categories</a>
                    <ul class="sub-menu">
                        <li><a href="../category.html">Lifestyle</a></li>
                        <li><a href="../category.html">Health</a></li>
                        <li><a href="../category.html">Family</a></li>
                        <li><a href="../category.html">Management</a></li>
                        <li><a href="../category.html">Travel</a></li>
                        <li><a href="../category.html">Work</a></li>
                    </ul>
                </li>
                <li class="has-children">
                    <a href="#0" title="">Blog Posts</a>
                    <ul class="sub-menu">
                        <li><a href="../single-video.html">Video Post</a></li>
                        <li><a href="../single-audio.html">Audio Post</a></li>
                        <li><a href="../single-gallery.html">Gallery Post</a></li>
                        <li><a href="../single-standard.html">Standard Post</a></li>
                    </ul>
                </li>
                --%>

                <li><a href="/world" title="">Svet a iné</a></li>
                <li><a href="/maps" title="">Mapy</a></li>
                <li><a href="/countries" title="">Krajiny</a></li>
                <li><a href="/people" title="">Postavy</a></li>
                <c:if test="${pageContext.request.isUserInRole('USER')}">

                    <li><a class="strikeabove" href="/country/my" title="">Moja krajina</a></li>

                    <li><a href="/econ/my" title="">Ekonomika</a></li>

                    <li><a href="/diplo/my" title="">Diplomacia</a></li>

                    <li><a href="/army/my" title="">Armáda</a></li>
                </c:if>

                <li><a class="strikeabove" onclick="document.forms['logoutForm'].submit()" href="">Logout</a></li>

            </ul> <!-- end header__nav -->

            <ul class="header__social">
            </ul>

        </nav> <!-- end header__nav-wrap -->


    </header> <!-- end s-header -->

    <div class="s-content">

        <c:if test="${not empty alert_danger}">
            <div class="alert-box alert-box--error hideit">
                <p><c:out value="${alert_danger}"/></p
                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
            </div>
        </c:if>
        <c:if test="${not empty alert_info}">
            <div class="alert-box alert-box--info hideit">
                <p><c:out value="${alert_info}"/></p>
                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
            </div>
        </c:if>
        <c:if test="${not empty alert_success}">
            <div class="alert-box alert-box--success hideit">
                <p><c:out value="${alert_success}"/></p>
                <i class="fa fa-times alert-box__close" aria-hidden="true"></i>
            </div>
        </c:if>

        <jsp:invoke fragment="body"/>

    </div> <!-- end s-content -->


    <!-- footer
    ================================================== -->
    <footer class="s-footer">
        <div class="row">
            <div class="column large-full footer__content">
                <div class="footer__copyright">
                    <span>Created by Forsaken</span>
                </div>
            </div>
        </div>

        <div class="go-top">
            <a class="smoothscroll" title="Back to Top" href="#top"></a>
        </div>
    </footer>

</div> <!-- end s-wrap -->


<!-- Java Script
================================================== -->
<script src="${contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/resources/js/plugins.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>

</body>