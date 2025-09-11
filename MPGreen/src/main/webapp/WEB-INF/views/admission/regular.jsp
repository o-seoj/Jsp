<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admission/_header.jsp"%>


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
                <h2 class="sbTitle">입학안내</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
            		<li class="item"> <!--사이드바 리스트 요소-->
                        <a href="/MPGreen/admission/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/admission/early.do" class="itemText">수시모집</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/admission/regular.do" class="itemText">정시모집</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/admission/transfer.do" class="itemText">편입학</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/admission/consult.do" class="itemText">입학상담</a>
                    </li>
                </ul>
            </div>
        </div>
           <div class="board"> <!--본문 영역-->
            <div class="boardUpper"> <!--사이드바 윗부분(제목 영역)-->
                <h3 class="buText">정시모집</h3>
            </div>
            <div class="boardLower"> <!--본문(내용 영역)-->
                   <div>
                    <h2>2026학년도 정시모집</h2>
                    <ul class="schedule-list">
                        <li><strong>원서접수</strong> : 2025. 12. 29.(월) ~ 12. 31.(수) 18:00</li>
                        <li><strong>서류제출</strong> : 2025. 12. 29.(월) ~ 2026. 1. 5.(월) 18:00 (18시 도착분까지 인정)</li>
                        <li><strong>실기고사</strong> : (가군) — 2026. 1. 9.(금) 09:00</li>
                        <li><strong>합격자 발표</strong> : 2026. 2. 2.(월) 16:00 예정</li>
                        <li><strong>등록금 납부</strong> : 2026. 2. 3.(화) ~ 2. 5.(목) 16:00까지</li>
                        <li><strong>충원합격자 발표 및 등록금 납부</strong> : 2026. 2. 6.(금) ~ 2. 13.(금) 16:00까지</li>
                    </ul>
                    </div>


                    <div class="download-buttons">
                        <a href="#" download="2026_정시모집.pdf" class="btn">2026학년도 정시모집</a>
                        <a href="#" download="2025_정시모집.pdf" class="btn">2025학년도 정시모집</a>
                        <a href="#" download="2024_정시모집.pdf" class="btn">2024학년도 정시모집</a>
                        <a href="#" download="2023_정시모집.pdf" class="btn">2023학년도 정시모집</a>
                    </div>

                </div>
            </div>


    </section>
  </main>

<%@ include file="/WEB-INF/views/admission/_footer.jsp" %>