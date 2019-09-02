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
                            Jelzak Horvath
                        </h1>
                    </div>

                    <div class="media-wrap entry__media">
                        <div class="entry__post-thumb charpic" align="center">
                            <img class="myimg" src="${contextPath}/resources/images/jelzak.jpg" alt="">
                        </div>
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
                                            onclick="openTab(event, 'Popis')">Popis
                                    </button>
                                </div>
                                <div class="column large-6 tab-full">

                                    <button class="tablink btn btn--stroke full-width"
                                            onclick="openTab(event, 'Detail')">Detail
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">


                        <div id="Popis" class="tabcontent">
                            <div class="column large-12 tab-full">


                                <div class="entry__content">
                                    <h3>Atributy</h3>
                                    <ul class="stats-tabs">
                                        <li><a href="/stats">? <em>Diplomacia</em></a></li>
                                        <li><a href="/stats">? <em>Vojenstvo</em></a></li>
                                        <li><a href="/stats">? <em>Správcovstvo</em></a></li>
                                        <li><a href="/stats">? <em>Intrigy</em></a></li>
                                        <li><a href="/stats">? <em>Učenosť</em></a></li>
                                        <li><a href="/stats">? <em>Boj</em></a></li>

                                        <li><a href="/stats">Priemer <em>Krása</em></a></li>
                                        <li><a href="/races">Človek <em>Rasa</em></a></li>
                                    </ul>

                                    <h3>Traity</h3>

                                    <c:if test="${accessLevel <= 2}">
                                         <p>
                                            Neznáme.
                                        </p>
                                    </c:if>

                                    <c:if test="${accessLevel > 2}">
                                    <p>
                                    <ul class="disc">
                                        <li>Trait 1</li>
                                        <li>Trait 2</li>
                                    </ul>
                                    </p>
                                    </c:if>
                                </div>

                                <hr>

                                <div>
                                    <h3>Popis</h3>
                                    <p>Haaiský admirál a bývalý pirát, tento skúsený morský vlk sa podľa niektorých i
                                        dnes
                                        tajne
                                        plaví pod čiernou vlajkou, a prepadáva Coatlanské či iné obchodné lode. Tejto
                                        teórii
                                        nasvedčuje i fakt, že bez šlachtického titulu sa majetkom vyrovná väčším
                                        barónom, a
                                        tých
                                        väčších dokonca predčí. Jeho vlastná loď patrí k technologickej špičke a je
                                        jednou z
                                        najrýchlejších na svete.
                                        Jelzak si rokmi vybudoval hlboký rešpekt nielen medzi kapitánmi a námorníkmi,
                                        ale
                                        rovnako i pirátmi a pašerákmi v Haaii i širokom okolí. Sám chová hlbokú lásku k
                                        svojej
                                        zemi, no za svoj skutočný domov považuje šíre more. Po nociach ho vraj možno
                                        vidieť,
                                        ako
                                        sám nasadá čln a pádluje preč od svojej lode, vracajúc sa až skoro ráno. On
                                        sám o svojich večerných aktivitách nič nehovorí.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div id="Detail" class="tabcontent">

                            <div class="column large-12 tab-full">
                                <h2>Poloha</h2>
                                <ul class="stats-tabs">
                                    <li><a href="/stats"> Od 3+ pokiaľ utajené (?) <em>Krajina</em></a></li>
                                    <li><a href="/stats">Od 4+. <em>Mesto</em></a></li>
                                </ul>
                                Presná poloha. Od 5+.

                                <h2>Zaujímavosti</h2>
                                <c:if test="${accessLevel <= 2}">
                                         <p>
                                             Nemáme dostatočné informácie.
                                         </p>
                                    </c:if>
                                Toto sa zobrazí od 3+.

                                <h2>Ciele a plány</h2>

                                <c:if test="${accessLevel <= 3}">
                                         <p>
                                             Nemáme dostatočné informácie.
                                         </p>
                                    </c:if>
                                Toto sa zobrazí od 4+.

                                <h2>Tajomstvá</h2>
                                <c:if test="${accessLevel <= 4}">
                                         <p>
                                             Nemáme dostatočné informácie.
                                         </p>
                                    </c:if>
                                Toto sa zobrazí od 5+


                                <hr>

                                <h3>Državy</h3>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Názov</th>
                                        <th>
                                            <!--<img class="iconMini" src="${contextPath}/resources/images/gold_icon.png">-->
                                            Príjem
                                        </th>
                                        <th>
                                            <!--<img class="iconMini" src="${contextPath}/resources/images/armor_icon.png">-->
                                            Výzbroj
                                        </th>
                                        <th>
                                            <!--<img class="iconMini" src="${contextPath}/resources/images/wood_icon.png">-->
                                            Drevo
                                        </th>
                                        <th>
                                            <!--<img class="iconMini" src="${contextPath}/resources/images/armor2_icon.png">-->
                                            Výzbroj2
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a href="/holding">Dunscom City</a></td>
                                        <td>420</td>
                                        <td>69</td>
                                        <td>1337</td>
                                        <td>67</td>
                                    </tr>
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