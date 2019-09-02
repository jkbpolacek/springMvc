<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<my:pagetemplate>
    <jsp:attribute name="body">

            <main class="row content__page">

                <article class="column large-full entry format-standard">

                    <div class="content__page-header entry__header">
                        <h1 class="display-1">
                            Invicictus - Hviezdopád
                        </h1>
                    </div> <!-- end entry__header -->

                    <div class="media-wrap entry__media">
                        <div class="entry__post-thumb">
                            <img src="${contextPath}/resources/images/invictus.jpg" alt="">
                        </div>
                    </div>

                </article> <!-- end column large-full entry-->
            </main>

    </jsp:attribute>
</my:pagetemplate>