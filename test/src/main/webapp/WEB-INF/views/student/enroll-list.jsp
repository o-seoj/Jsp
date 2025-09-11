<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/student/_header.jsp"%>


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
                <h2 class="sbTitle">학생지원</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> <!--사이드바 리스트 요소-->
                        <a href="/MPGreen/student/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/student/enroll_list.do" class="itemText">수강신청내역</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/student/curriculum.do" class="itemText">나의교육과정</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/student/grade-view.do" class="itemText">성적조회</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/student/record.do" class="itemText">학적</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">수강신청내역</h3>
            </div>
            
            <div class="boardLower">
            
                
                <form>
                    <fieldset class="course-history-search">
                        <!-- 왼쪽 링크영역 -->
                        <a href="#" class="select-box">
                        <span class="select-text">2025</span>
                        <img src="/MPGreen/images/btn-sel-open01.png" alt="드롭다운">
                        </a>

                        <!-- '년' 텍스트 -->
                        <span class="year-label">년</span>

                        <!-- 오른쪽 링크영역 -->
                        <a href="#" class="select-box small">
                        <span class="select-text">1</span>
                        <img src="/MPGreen/images/btn-sel-open01.png" alt="드롭다운">
                        </a>

                        <!-- '학기' 텍스트 -->
                        <span class="semester-label">학기</span>

                        <!-- 오른쪽 끝 heading3 -->
                        <h3 class="result-count">신청과목수 6과목, 총 신청학점 18학점</h3>
                    </fieldset>
                </form>

                <table class="history-table">
                <thead>
                    <tr>
                    <th>교과목코드</th>
                    <th>과목명</th>
                    <th>대상학년</th>
                    <th>담당교수</th>
                    <th>학점</th>
                    <th>이수구분</th>
                    <th>강의시간</th>
                    <th>강의실</th>
                    <th>관리</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                    <tr>
                    <td>830003</td>
                    <td>자바 프로그래밍</td>
                    <td>2학년</td>
                    <td>김자바</td>
                    <td>3</td>
                    <td>전공</td>
                    <td>화 1,2,3</td>
                    <td>컴퓨터실</td>
                    <td><button class="cancel-btn">취소</button></td>
                    </tr>
                </tbody>
                </table>

            </div>

         </div>

    </section>

  </main>

<%@ include file="/WEB-INF/views/student/_footer.jsp" %>