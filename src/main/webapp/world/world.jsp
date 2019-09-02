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
                            Svet a iné info
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
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Náboženstvá</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Popis náboženstiev naprieč kontinentami.
                                        </p>
                                    </div>
                                </div>
                            </article>


                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Organizácie</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Popis rôznych organizácií, uskupení, známych skupín a podobne.
                                        </p>
                                    </div>
                                </div>
                            </article>


                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Mágia</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Princípy fungovania Mágov a mágie.
                                        </p>
                                    </div>
                                </div>
                            </article>

                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Vojny a rekrutovanie.</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Informácie o vedení vojen, organizácií armád i flotíl. Taktiež vysvetľuje princípy generálov a admirálov a delegovanie vedenia.
                                        </p>
                                    </div>
                                </div>
                            </article>

                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Ekonomika a obchod</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Princípy držav, surovín, ekonomiky, obchodu a podobne.
                                        </p>
                                    </div>
                                </div>
                            </article>

                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Diplomacia a NPC</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Popis fungovania diplomacie a komunikácie s ďaľšími postavami.
                                        </p>
                                    </div>
                                </div>
                            </article>


                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Rasy</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Popis rás obývajúcich svet.
                                        </p>
                                    </div>
                                </div>
                            </article>


                            <article class="masonry__brick entry format-standard"
                                     style="position: absolute; left: 0%; top: 0px;">
                                <div class="entry__text">
                                    <div class="entry__header">
                                        <h2 class="entry__title"><a href="/religion">Tvorba postavy</a></h2>
                                    </div>
                                    <div class="entry__excerpt">
                                        <p>
                                            Návod na tvorbu postavy.
                                        </p>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </article> <!-- end column large-full entry-->
            </main>

    </jsp:attribute>
</my:pagetemplate>