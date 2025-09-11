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
                <h3 class="buText">오시는 길</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                    <div class="map" id="inf">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13047.51664293202!2d129.04994126681862!3d35.159634308889856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568eba4c493c83f%3A0x77aea0075fdc9a1f!2z6re466aw7Lu07ZOo7YSw7JWE7Lm0642w66-4IOu2gOyCsOyEnOuptDLrs4TqtIA!5e0!3m2!1sko!2skr!4v1756945199880!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    <!-- 오시는 길 안내 -->
                    <div class="directions">
                        <h4><i class="fas fa-map-marker-alt"></i>주소</h4>
                        <p>부산 부산진구 중앙대로 749, 범향빌딩 4층</p>

                        <h4><i class="fas fa-subway"></i> 지하철</h4>
                        <p>1호선 / 서면역 15번 출구, 약 72m</p>

                        <h4><i class="fas fa-bus"></i> 버스</h4>
                        <p>
                            <strong>일반</strong> 10, 110-1, 111, 124, 129-1, 141, 29, 31, 33, 43, 5-1, 52, 57, 62, 77, 80, 83, 86, 87, 99, 141(심야)<br>
                            <strong>급행</strong> 1010
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
  </main>
<%@ include file="/WEB-INF/views/about/_footer.jsp" %>