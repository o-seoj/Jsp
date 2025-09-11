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
        <div class="sidebar"> 
            <div class="sidebarHeader"> 
                <h2 class="sbTitle">대학소개</h2> 
            </div>
            <div class="sidebarMenu"> 
                <ul class="list"> 
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
           <div class="board">
            <div class="boardUpper">
                <h3 class="buText">총장 인사말</h3>
            </div>
                    <div class="boardLower">
                        <article>
                            <h2>“창의와 도전으로 미래를 여는, 여러분의 든든한 동반자 그린대학교!”</h2>

                            <div class="section">
                                <p>그린대학교는 창의성과 도전정신이 살아 숨 쉬는 실무 중심의 학문 공동체입니다. 빠르게 변화하는 4차 산업혁명 시대 속에서, 우리는 학생들이 기술과 지식을 넘어 스스로 문제를 해결하고, 새로운 가치를 창출하는 능력을 갖춘 인재로 성장하도록 교육하고 있습니다.</p>
                            </div>

                            <div class="section">
                                <p>그린대학교는 학생 한 사람, 한 사람이 자신의 잠재력을 발견하고 실현할 수 있는 터전을 제공합니다. 이곳에서 학생들은 협업과 융합적 사고를 바탕으로 사회에 기여하는 따뜻한 리더로 성장하며, 글로벌 역량을 갖춘 창의적 인재로 발돋움할 것입니다.</p>
                            </div>

                            <div class="section">
                                <p>우리 대학은 전통과 혁신을 동시에 중시하며, 실무 중심 교육과 창의적 연구를 통해 학생들이 미래 사회의 도전을 담대히 극복하도록 돕습니다. 교육과 연구의 모든 과정에서 학생들의 열정과 도전정신을 존중하며, 스스로 미래를 설계하는 힘을 길러주겠습니다.</p>
                            </div>

                            <div class="section">
                                <p>그린대학교는 자유와 신뢰를 바탕으로 학생과 교직원이 함께 성장하는 플랫폼이 되겠습니다. 미래를 개척하는 창의적 인재를 양성하고, 사회에 실질적인 가치를 제공하며, 더 나아가 대한민국과 글로벌 사회 발전에 기여할 수 있는 대학이 되겠습니다.</p>
                            </div>
                            
                            <div class="president-sign">
                                <span>그린대학교 총장</span>
                                <img src="/MPGreen/images/signature.png" alt="총장 싸인" class="sign-img">
                            </div>


                        </article>
                    </div>

                </div>
        </section>
    </main>
<%@ include file="/WEB-INF/views/about/_footer.jsp" %>
