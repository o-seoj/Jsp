<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/student/_header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <h2 class="sbTitle">학생지원</h2>
            </div>
            <div class="sidebarMenu">
                <ul class="list">
                   <li class="item">
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
        <div class="board">
            <div class="boardUpper">
                <h3 class="buText">수강신청</h3>
            </div>
            
            <div class="boardLower">
            
					<form method="get" action="/MPGreen/student/enroll.do">
					    <fieldset class="course-search">
					      <div class="search-select-wrapper">
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
						    </div>
											
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
						<c:forEach var="course" items="${enrollList}">
						    <tr>
						        <td>${course.department_name}</td>
						        <td>${course.completion_Type}</td>
						        <td>${course.grade}</td>
						        <td>${course.course_code}</td>
						        <td>${course.course_name}</td>
						        <td>${course.credit}</td>
						        <td>${course.name}</td>
						        <td>${course.current_capacity}/${course.max_capacity}</td>
						        <td></td>
						        <td>
						            <form action="${pageContext.request.contextPath}/student/enrollCourse.do" method="post">
						                <input type="hidden" name="courseCode" value="${course.course_code}">
						                <button type="submit" class="apply-btn">신청</button>
						            </form>
						        </td>
						    </tr>
						</c:forEach>
					</tbody>
                </table>
				<div class="pagination">
				    <c:set var="currentPage" value="${pagenationDTO.currentPage}" />
				    <c:set var="totalPage" value="${pagenationDTO.lastPageNum}" />
				
				    <!-- 검색/선택 파라미터 유지 -->
				    <c:set var="yearParam" value="${param.year != null ? param.year : ''}" />
				    <c:set var="semesterParam" value="${param.semester != null ? param.semester : ''}" />
				
				    <!-- 첫 페이지 -->
				    <a href="${pageContext.request.contextPath}/student/enroll.do?page=1&year=${yearParam}&semester=${semesterParam}" class="page-btn first">
				        <img src="/MPGreen/images/btn-first-page.png" alt="첫 페이지">
				    </a>
				
				    <!-- 이전 페이지 -->
				    <c:set var="prevPage" value="${currentPage - 1}" />
				    <a href="${pageContext.request.contextPath}/student/enroll.do?page=${prevPage <= 0 ? 1 : prevPage}&year=${yearParam}&semester=${semesterParam}" class="page-btn prev">
				        <img src="/MPGreen/images/btn-prev-page.png" alt="이전 페이지">
				    </a>
				
				    <!-- 페이지 번호 -->
				    <c:forEach var="i" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
				        <a href="${pageContext.request.contextPath}/student/enroll.do?page=${i}&year=${yearParam}&semester=${semesterParam}" class="page-num ${i == currentPage ? 'active' : ''}">${i}</a>
				    </c:forEach>
				
				    <!-- 다음 페이지 -->
				    <c:set var="nextPage" value="${currentPage + 1}" />
				    <a href="${pageContext.request.contextPath}/student/enroll.do?page=${nextPage > totalPage ? totalPage : nextPage}&year=${yearParam}&semester=${semesterParam}" class="page-btn next">
				        <img src="/MPGreen/images/btn-next-page.png" alt="다음 페이지">
				    </a>
				
				    <!-- 마지막 페이지 -->
				    <a href="${pageContext.request.contextPath}/student/enroll.do?page=${totalPage}&year=${yearParam}&semester=${semesterParam}" class="page-btn last">
				        <img src="/MPGreen/images/btn-last-page.png" alt="마지막 페이지">
				    </a>
				</div>
				


                    
            </div>

         </div>

    </section>

  </main>
<%@ include file="/WEB-INF/views/student/_footer.jsp" %>