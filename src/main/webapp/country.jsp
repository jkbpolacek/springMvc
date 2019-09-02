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
                            Dunscom
                        </h1>
                    </div> <!-- end entry__header -->

                    <div class="media-wrap entry__media">
                        <div class="entry__post-thumb">
                            <img src="${contextPath}/resources/images/dunscom.jpg" alt="">
                        </div>
                    </div>


                    <div class="entry__content">

                        <c:if test="${accessLevel == 0}">
                            <p>
                                Nemáme žiadne informácie.
                            </p>
                        </c:if>

                    <c:if test="${accessLevel > 0}">

                        <p class="lead drop-cap">
                            Demokratický mestský štát s jedinečnou mierou industrializácie a technologickej vyspelosti,
                            zovretý trojcou rivalov ktorí ho túžia pohltiť.
                        </p>

                        <hr>

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

                        <!-- Tab content -->
                        <div id="Popis" class="tabcontent">
                            <div class="row">
                                <div class="column large-6 tab-full">
                                    <ul class="skill-bars">
                                        <li>
                                            <div class="progress percent90"><span>9</span></div>
                                            <strong>Armáda</strong>
                                        </li>
                                        <li>
                                            <div class="progress percent55"><span>5.5</span></div>
                                            <strong>Flotila
                                            </strong>
                                        </li>
                                        <li>
                                            <div class="progress percent85"><span>8.5</span></div>
                                            <strong>Ekonomika
                                            </strong>
                                        </li>
                                        <li>
                                            <div class="progress percent20"><span>2</span></div>
                                            <strong>Diplomacia</strong>
                                        </li>
                                        <li>
                                            <div class="progress percent35"><span>3.5</span></div>
                                            <strong>Mágia</strong>
                                        </li>
                                        <li>
                                            <div class="progress percent30"><span>3</span></div>
                                            <strong>Stabilita</strong>
                                        </li>
                                    </ul>
                                </div>
                                <div class="column large-6 tab-full">
                                    <blockquote>
                                        <p>We are incapable of change without sacrifice, for we are both the iron and
                                            the
                                            forge.</p>
                                        <cite>Helias</cite>
                                    </blockquote>
                                </div>
                            </div>


                            <p>
                                Mesto Tisícich Vyhní. Dunscom produkuje nelien masívne množstvá tuctovej výzbroje pre
                                vojiská,
                                ale aj tie najlepšie a najdokonalejšie kusy pre bohatých vládcov a šlachticov. To
                                prináša
                                i
                                svoju cenu. Dunscom je znečistený dymom a výparmi, a obyvateľov trápia dýchacie
                                problémy
                                častejšie než kohokoľvek iného. Ani rodina Kniežaťa nie je proti zlému vzduchu imúnna.

                                Niet divu, že si na Dunscom robia zálusk susedia Cleomer a Bretry, ale i vzdialená
                                Zerdesia,
                                Trost a Noatun. V bezpečí ho drží len krehká rovnováha a strach – ak by napríklad
                                Cleomer
                                Dunscom napadol, ten by mohol okamžite odovzdať veľké dodávky zbraní Bretry, umožňujúc
                                jej
                                Cleomer preválcovať.

                                Dunscom je tak bohatá a vyspelá zem, ktorá je ale nezávislá len vďaka krehkej politickej
                                hre. Ako dlho sa mu podarí tento stav udržať ?

                            </p>

                            <p>
                                <img src="${contextPath}/resources/images/blacksmith.png" alt="">
                            </p>

                            <h2>Ekonomika</h2>

                            <p>
                                Masívny, všepohlcujúci priemysel, produkujúci zbrane a zbroje snáď pre polovicu známeho
                                sveta. Kým
                                vo svete budú vojny, bude Dunscom bohatý. Z iných stránok je na tom však biedne.
                                Poľnohospodárstvo znečistením upadá, a už teraz sotva stačí pre potreby obyvateľstva.
                                Taktiež má len malý prístup k surovinám ako železo, uhlie a drevo, od ktorých dovozu je
                                priemysel silne závislý. Našťastie, má mnoho možností na import.
                            </p>

                            <h2>Armáda</h2>
                            <p>

                                Dunscomská armáda je najlepšie vyzbrojenou armádou na svete. No i bohatstvo kniežactva
                                neprekoná nízku populáciu. Dunscomská armáda má aktuálne približne 6000 mužov, a aj keď
                                by
                                ich dočasne dokázala vyzbrojiť omnoho viac, len ťažko si to môže dovoliť.
                            </p>

                            <h2>Flotila</h2>
                            <p>
                                Neexistuje.
                            </p>

                            <h3>Mágia</h3>

                            <p>
                                Dunscom má jeden svetoznámy káder Nižších Talentov Vuushny a potom je tu Golayr Solbine.
                                Inak však posledné roky trpí nedostatkom Nižších Talentov.
                            </p>

                            <h3>Diplomatická situácia</h3>
                            <p>
                                Dunscom si nečiní verejné nároky – nechce dávať svojim susedom ďaľšie zámienky k
                                agresii. No
                                v prípade potreby by ich na svoje bezprostredné okolie dokázal ľahko vyprodukovať.
                            </p>
                        </div>


                        <div id="Detail" class="tabcontent">
                            <ul class="skill-bars">
                                <li>
                                    <div class="progress percent40"><span>2</span></div>
                                    <strong>Priemerná úroveň znalostí</strong>
                                </li>
                            </ul>
                            <a class="btn full-width" href="/econ/${id}">Ekonomika</a>
                            <a class="btn full-width" href="/econ/${id}">Armády</a>
                            <a class="btn full-width" href="/econ/${id}">Flotily</a>
                            <a class="btn full-width" href="/econ/${id}">Špionáž</a>
                            <a class="btn full-width" href="/econ/${id}">Diplomacia</a>
                            <a class="btn full-width" href="/econ/${id}">Šlachta a NPC</a>
                        </div>
                    </c:if>

                    </div> <!-- end entry content -->
                </article> <!-- end column large-full entry-->
            </main>
    </jsp:attribute>
</my:pagetemplate>