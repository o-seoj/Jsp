<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/about/_header.jsp"%>


    <main>

        <div class="top-bar">
            <div class="top-bar-content">
                <img src="/MPGreen/images/ico-home.png" alt="홈">
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">대학소개</a>
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">총장 인사말</a>
            </div>
        </div>
        
        <section id="container"> 
        <div class="sidebar"> <!--사이드바-->
            <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                <h2 class="sbTitle">대학소개</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> 
                        <a href="/MPGreen/about/greeting.do" class="itemText">총장 인사말</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/about/philosophy.do" class="itemText">교육이념</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/about/history.do" class="itemText">연혁</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/about/organization.do" class="itemText">조직도</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/about/location.do" class="itemText">오시는 길</a>
                    </li>
                </ul>
            </div>
            </div>
           <div class="board"> <!--본문 영역-->
            <div class="boardUpper"> <!--사이드바 윗부분(제목 영역)-->
                <h3 class="buText">교육이념</h3>
            </div>
                    <div class="boardLower"> <!--본문(내용 영역)-->
                            
                    <article class="philosophy">
                        <h2 class="philosophy-title">교육이념</h2>
                        <img src="/MPGreen/images/philosophy.png" alt="조직도" class="phy-image">

                        <p class="philosophy-intro">
                            그린대학교는 <strong>창의·도전·나눔</strong>의 건학이념을 바탕으로
                            미래 사회를 선도할 융합형 인재를 양성합니다.
                        </p>

                        <div class="section">
                            <h3>교육목표</h3>
                            <ul>
                                <li>창의적 사고 : 새로운 가치를 창출할 수 있는 능력 배양</li>
                                <li>실무역량 강화 : 산업 현장에 바로 적용 가능한 전문성 확보</li>
                                <li>인성교육 : 나눔과 배려를 실천하는 바른 인재 육성</li>
                                <li>글로벌 역량 : 세계와 소통하며 협업할 수 있는 국제 감각 함양</li>
                            </ul>
                        </div>

                        <div class="section">
                            <h3>인재상</h3>
                            <ul>
                                <li>창의인 : 새로운 발상을 통해 혁신을 이끄는 인재</li>
                                <li>실무형 인재 : 현장에서 바로 적용 가능한 전문 능력을 갖춘 인재</li>
                                <li>글로벌 인재 : 국제 사회와 협력하며 성장하는 인재</li>
                                <li>인성인 : 나눔과 배려를 실천하는 책임 있는 인재</li>
                            </ul>
                        </div>
                    </article>


                    </div>
                    </div>

        </section>
    </main>
<%@ include file="/WEB-INF/views/about/_footer.jsp" %>