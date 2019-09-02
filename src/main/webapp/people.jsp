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
                    <div class="entry__content">

                        <div class="tab">

                            <div class="row">
                                <div class="column large-4 tab-full">
                                    <button class="tablink btn btn--stroke full-width" id="defaultOpen"
                                            onclick="openTab(event, 'Kontinent1')">Kontinent 1
                                    </button>
                                </div>

                                <div class="column large-4 tab-full">
                                    <button class="tablink btn btn--stroke full-width"
                                            onclick="openTab(event, 'Kontinent2')">Kontinent 2
                                    </button>
                                </div>
                                <div class="column large-4 tab-full">
                                    <button class="tablink btn btn--stroke full-width"
                                            onclick="openTab(event, 'Kontinent3')">Kontinent 3
                                    </button>
                                </div>

                            </div>
                        </div>
                        <div id="Kontinent1" class="tabcontent">

                            <div class="masonry-wrap">
                                <div class="masonry" style="position: relative; height: 5728.05px;">
                                    <div class="grid-sizer"></div>
                                    <c:forEach items="${people1}" var="person">

                                 <article class="masonry__brick entry format-standard"
                                          style="position: absolute; left: 0%; top: 0px;">

                                     <div class="overlay-image">
                                         <div class="entry__thumb">
                                             <a href="/person/${person.id}" class="entry__thumb-link">
                                                 <img class="" src="${contextPath}/${person.imagePath}"
                                                      alt="">
                                             </a>
                                             <div class="hover">
                                                 <div class="text">${person.name}</div>
                                             </div>
                                         </div>

                                     </div>
                                 </article> <!-- end article -->

                                         <!--
                                 <article class="masonry__brick entry format-standard"
                                          style="position: absolute; left: 0%; top: 0px;">
                                     <div class="entry__thumb">
                                         <a href="/person/${person.id}" class="entry__thumb-link">
                                             <img class="" src="${contextPath}/${person.imagePath}"
                                                  alt="">
                                         </a>

                                     </div>
                                 </article> <!-- end article -->

                            </c:forEach>

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