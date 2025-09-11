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
                <h3 class="buText">수강신청</h3>
            </div>
            
            <div class="boardLower">
            
					<form method="get" action="/MPGreen/student/enroll.do">
					    <fieldset class="course-search">
					        <select name="searchType" class="search-select">
					            <option value="department_name">학과명</option>
					            <option value="completion_type">구분</option>
					            <option value="grade">학년</option>
					            <option value="course_code">과목코드</option>
					            <option value="course_name">과목명</option>
					            <option value="credit">학점</option>
					            <option value="name">교수명</option>
					            <option value="max_capacity">수강인원</option>
					        </select>
					
					        <input type="text" name="keyword" placeholder="검색어를 입력해 주세요" class="search-input">
					        <button type="submit" class="search-btn">검색</button>
					    </fieldset>
					</form>

                <table class="course-table">
                    <thead>
                        <tr>
                        <th>개설학과</th>
                        <th>구분</th>
                        <th>학년</th>
                        <th>코드</th>
                        <th>과목명</th>
                        <th>학점</th>
                        <th>담당교수</th>
                        <th>수강인원</th>
                        <th>비고</th>
                        <th>신청</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td>컴퓨터공학</td>
                        <td>전공</td>
                        <td>1</td>
                        <td>830001</td>
                        <td>컴퓨터과학개론</td>
                        <td>3</td>
                        <td>김컴공</td>
                        <td>12/30</td>
                        <td></td>
                        <td><button class="apply-btn">신청</button></td>
                        </tr>
                        <tr>
                        <td>컴퓨터공학</td>
                        <td>전공</td>
                        <td>1</td>
                        <td>830001</td>
                        <td>컴퓨터과학개론</td>
                        <td>3</td>
                        <td>김컴공</td>
                        <td>12/30</td>
                        <td></td>
                        <td><button class="apply-btn">신청</button></td>
                        </tr>
                        <tr>
                        <td>컴퓨터공학</td>
                        <td>전공</td>
                        <td>1</td>
                        <td>830001</td>
                        <td>컴퓨터과학개론</td>
                        <td>3</td>
                        <td>김컴공</td>
                        <td>12/30</td>
                        <td></td>
                        <td><button class="apply-btn">신청</button></td>
                        </tr>
                        <tr>
                        <td>컴퓨터공학</td>
                        <td>전공</td>
                        <td>1</td>
                        <td>830001</td>
                        <td>컴퓨터과학개론</td>
                        <td>3</td>
                        <td>김컴공</td>
                        <td>12/30</td>
                        <td></td>
                        <td><button class="apply-btn">신청</button></td>
                        </tr>
                        <tr>
                        <td>컴퓨터공학</td>
                        <td>전공</td>
                        <td>1</td>
                        <td>830001</td>
                        <td>컴퓨터과학개론</td>
                        <td>3</td>
                        <td>김컴공</td>
                        <td>12/30</td>
                        <td></td>
                        <td><button class="apply-btn">신청</button></td>
                        </tr>
                    </tbody>
                </table>

                <div class="pagination">
                    <!-- 첫 페이지 이동 -->
                    <a href="#" class="page-btn first">
                        <img src="/MPGreen/images/btn-first-page.png" alt="첫 페이지">
                    </a>

                    <!-- 이전 페이지 -->
                    <a href="#" class="page-btn prev">
                        <img src="/MPGreen/images/btn-prev-page.png" alt="이전 페이지">
                    </a>

                    <!-- 페이지 번호 -->
                    <a href="#" class="page-num active">1</a>
                    <a href="#" class="page-num">2</a>
                    <a href="#" class="page-num">3</a>

                    <!-- 다음 페이지 -->
                    <a href="#" class="page-btn next">
                        <img src="/MPGreen/images/btn-next-page.png" alt="다음 페이지">
                    </a>

                    <!-- 마지막 페이지 -->
                    <a href="#" class="page-btn last">
                        <img src="/MPGreen/images/btn-last-page.png" alt="마지막 페이지">
                    </a>
                </div>


                    
            </div>

         </div>

    </section>

  </main>
<%@ include file="/WEB-INF/views/student/_footer.jsp" %>