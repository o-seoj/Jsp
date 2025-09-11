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

                <div class="boardUpper">
                    <h3 class="buText">조직도</h3>
                </div>
                <div class="boardLower">
                <img src="/MPGreen/images/organization.png" alt="조직도" class="org-image">
                        
                </div>

            </div>
        
    </section>
  </main>

<%@ include file="/WEB-INF/views/about/_footer.jsp" %>