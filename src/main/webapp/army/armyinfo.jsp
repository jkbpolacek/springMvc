<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<my:pagetemplate>
    <jsp:attribute name="body">
    <%--@elvariable id="country" type="cz.andor.invictusys.model.country.Country"--%>
            <main class="row content__page">
                <article class="column large-full entry format-standard">
                    <div class="content__page-header entry__header">
                        <h1 class="display-1 entry__title">
                            Armády
                        </h1>
                        <h2>
                            ${country.name}
                        </h2>
                    </div>

                    <div class="media-wrap entry__media">
                        <!--<div class="entry__post-thumb" align="center">
                            <img class="myimg" src="${contextPath}/resources/images/jelzak.jpg" alt="">
                        </div>-->
                    </div>
                    <div class="entry__content">
                        <div class="row">
                            <div class="column large-12 tab-full">
                                <ul class="skill-bars">
                                    <li>
                                        <div class="progress percent${accessLevel*20}"><span>${accessLevel}</span></div>
                                        <strong>Úroveň znalostí</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <c:if test="${accessLevel == 0}">
                            <p>
                                Nemáme žiadne informácie.
                            </p>
                        </c:if>

                        <c:if test="${accessLevel > 0}">
                        <div class="tab">
                            <div class="row">
                                <div class="column large-6 tab-full">

                                    <button class="tablink btn btn--stroke full-width" id="defaultOpen"
                                            onclick="openTab(event, 'Popis')">Zoznam armád
                                    </button>
                                </div>
                                <div class="column large-6 tab-full">

                                    <button class="tablink btn btn--stroke full-width"
                                            onclick="openTab(event, 'Detail')">Rekrutovanie
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">


                        <div id="Popis" class="tabcontent">
                            <div class="column large-12 tab-full">


                                    <h3>...</h3>
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>Názov</th>
                                            <th>
                                                Veliteľ
                                            </th>
                                            <th>
                                                Veľkosť
                                            </th>
                                            <th>
                                                Morálka
                                            </th>
                                            <th>
                                                Disciplína
                                            </th>

                                            <th>
                                                Lojalita
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <%--@elvariable id="armies" type="java.util.List<Army>"--%>
                                            <%--@elvariable id="army" type="cz.andor.invictusys.model.army.Army"--%>
                                        <c:forEach items="${armies}" var="army">
                                              <tr>
                                                  <td><a href="/army/${army.id}">${army.name}</a></td>
                                                  <td><a href="/person/${army.commander.id}">${army.owner.name}</a></td>
                                                  <td>${army.units.size()}</td>
                                                  <td>${army.morale}</td>
                                                  <td>${army.discipline}</td>
                                                  <td>${army.loyalty}</td>
                                              </tr>
                                        </c:forEach>



                                        </tbody>
                                    </table>


                            </div>
                        </div>

                        <div id="Detail" class="tabcontent">

                            <div class="column large-12 tab-full">
                                <h3>Prebiehajúci výcvik</h3>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Typ</th>
                                        <th>Ostávajúci počet mesiacov</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <%--@elvariable id="recruits" type="java.util.List<cz.andor.invictusys.model.army.Recruit>"--%>
                                        <%--@elvariable id="recruit" type="cz.andor.invictusys.model.army.Recruit"--%>
                                    <c:forEach items="${recruits}" var="recruit">
                                              <tr>
                                                  <td>${recruit.unitType.name}</td>
                                                  <td>${recruit.monthsToFinish}</td>
                                                  <td>Tu pride button</td></td>
                                              </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>


                                <h3>Rekrutovateľné jednotky</h3>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Názov</th>
                                        <th>
                                            Zlato
                                        </th>
                                        <th>
                                            Výzbroj
                                        </th>
                                        <th>
                                            Drevo
                                        </th>
                                        <th>
                                            Doba Výcviku
                                        </th>
                                        <th>Popis</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <%--@elvariable id="unitTypes" type="java.util.List<UnitType>"--%>
                                        <%--@elvariable id="unitType" type="cz.andor.invictusys.model.army.UnitType"--%>
                                    <c:forEach items="${unitTypes}" var="unitType">
                                              <tr>
                                                  <td>${unitType.name}</td>
                                                  <td>${unitType.gold}</td>
                                                  <td>${unitType.zbroj}</td>
                                                  <td>${unitType.gold}</td>
                                                  <td>${unitType.trainTime}</td>
                                                  <td>${unitType.popis}</td>


                                                  <td><%--@elvariable id="unitTypeRecruit" type="cz.andor.invictusys.model.AbstractEntity"--%>
                                                  <a class="btn btn-sm btn-primary btn-block" href="/army/${country.id}/recruit/${unitType.id}">
                                                      Naverbovať</a></td>

                                              </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </c:if>
                </article>
            </main>

    </jsp:attribute>
</my:pagetemplate>