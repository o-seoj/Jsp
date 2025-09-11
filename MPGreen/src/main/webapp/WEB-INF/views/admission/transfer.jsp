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
                <h3 class="buText">편입학</h3>
            </div>
            <div class="boardLower"> <!-- 본문(내용 영역) -->
                <div>
                    <h2>2025학년도 편입학전형 모집요강</h2>
                    <ul class="schedule-list">
                    <li><strong>원서접수</strong> : 2024. 12. 16.(월) ~ 12. 20.(금) 18:00까지</li>
                    <li><strong>서류제출</strong> : 2024. 12. 16.(월) ~ 12. 23.(월) 18:00까지 (12. 23.(월) 소인까지 인정)</li>
                    <li><strong>지원자격심사결과 발표</strong> : 2025. 1. 7.(화) 16:00 예정</li>
                    <li><strong>필기고사</strong> : 2025. 1. 10.(금) 09:30</li>
                    <li><strong>1단계 합격자 발표</strong> : 2025. 1. 16.(목) 16:00 <예정></li>
                    <li><strong>면접고사</strong> : 2025. 1. 24.(금) 09:30 <br>
                    <li><strong>최초 합격자 발표</strong> : 2025. 2. 10.(월) 16:00 <예정></li>
                    <li><strong>등록금 납부</strong> : 2025. 2. 10.(월) ~ 2. 12.(수) 16:00까지</li>
                    <li><strong>충원합격자 발표 및 등록금 납부</strong> : 2025. 2. 13.(목) ~ 2. 21.(금) 16:00까지</li>
                    </ul>
                </div>

                <div class="download-buttons">
                    <a href="#" download="(그린대)2025학년도 모집요강.pdf" class="btn">(그린대)2025학년도 모집요강</a>
                    <a href="#" download="(그린대)2024학년도 모집요강.pdf" class="btn gray">(그린대)2024학년도 모집요강</a>
                </div>
                </div>

            </div>

        </div>
    </section>
  </main>

<%@ include file="/WEB-INF/views/admission/_footer.jsp" %>