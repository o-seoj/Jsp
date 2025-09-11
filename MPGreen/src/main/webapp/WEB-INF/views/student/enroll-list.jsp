<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/student/_header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main>
<c:if test="${param.msg == 'cancelSuccess'}">
    <script>alert('수강 신청이 취소되었습니다.');</script>
</c:if>
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
			<form method="get" action="/MPGreen/student/enroll_list.do" class="course-history-search">
			  <div class="select-box">
			    <select name="year" onchange="this.form.submit()">
			      <option value="2025" ${selectedYear=='2025' ? 'selected' : ''}>2025</option>
			      <option value="2024" ${selectedYear=='2024' ? 'selected' : ''}>2024</option>
			      <option value="2024" ${selectedYear=='2024' ? 'selected' : ''}>2023</option>
			      <option value="2024" ${selectedYear=='2024' ? 'selected' : ''}>2022</option>
			    </select>
			    <span class="arrow"></span>
			  </div>년
			
			  <div class="select-box small">
			    <select name="semester" onchange="this.form.submit()">
			      <option value="1" ${selectedSemester=='01' ? 'selected' : ''}>1</option>
			      <option value="2" ${selectedSemester=='02' ? 'selected' : ''}>2</option>
			    </select>
			    <span class="arrow"></span>
			  </div>학기
			
			  <h3 class="result-count">
			    신청과목수 ${totalCourses}과목, 총 신청학점 ${totalCredits}학점
			  </h3>
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
				<c:forEach var="item" items="${historyList}">
				    <tr>
				        <td>${item.c_id}</td>
				        <td>${item.c_name}</td>
				        <td>${item.grade}</td>
				        <td>${item.professor}</td>
				        <td>${item.credit}</td>
				        <td>${item.type}</td>
				        <td>${item.time}</td>
				        <td>${item.classroom}</td>
				        <td>
				    <form method="post" action="${pageContext.request.contextPath}/student/cancel.do">
				        <input type="hidden" name="courseCode" value="${item.c_id}" />
				        <button type="submit" class="cancel-btn">취소</button>
				        
				    </form>
				</td>
				    </tr>
				</c:forEach>
				</tbody>
            </table>

        </div>

     </div>

</section>

</main>

<%@ include file="/WEB-INF/views/student/_footer.jsp" %>
