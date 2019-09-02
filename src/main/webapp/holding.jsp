MappedSuperclass<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
                        <h1 class="display-1 entry__title">
                            Postavy
                        </h1>
                    </div> <!-- end entry__header -->

                    <!--
                    <div class="media-wrap entry__media">
                        <div class="entry__post-thumb">
                            <img src="${contextPath}/resources/images/dunscom.jpg" alt="">
                        </div>
                    </div>
-->
                    <div class="masonry-wrap">
                        <div class="masonry" style="position: relative; height: 5728.05px;">
                            <div class="grid-sizer"></div>

                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__thumb">
                                    <a href="/person/${person.id}" class="entry__thumb-link">
                                        <img class="" src="${contextPath}/${person.imagePath}"
                                             alt="">
                                    </a>

                                </div>
                            </article> <!-- end article -->


                        </div>
                    </div>


                    </div>
                    <div id="Kontinent2" class="tabcontent"></div>
                    <div id="Kontinent3" class="tabcontent"></div>

                    </div> <!-- end entry content -->

                </article> <!-- end column large-full entry-->
            </main>

    </jsp:attribute>
</my:pagetemplate>