<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/academic/_header.jsp" %>

  <main>

    <div class="top-bar">
        <div class="top-bar-content">
            <img src="/MPGreen/images/ico-home.png" alt="홈">
            <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">학사안내</a>
            <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="${pageContext.request.contextPath}/academic/notice.do" class="sidebar-text">공지사항   </a>
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
                        <a href="${pageContext.request.contextPath}/academic/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academic/schedule.do" class="itemText">학사일정</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academic/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academic/grade.do" class="itemText">성적</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academic/graduation.do" class="itemText">수료 및 졸업</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academic/faq.do" class="itemText">자주 묻는 질문</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">공지사항</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                    <div class="searchingField">
                        <select>
                            <option>전체</option>
                            <option>제목</option>
                            <option>작성자</option>
                            <option>날짜</option>
                        </select>
                        <input type="text" placeholder="검색어를 입력해 주세요">
                        <button>검색</button>
                    </div>
                    <table class="notice-board">
                        <thead>
                            <tr>
                              <th>번호</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>작성일</th>
                              <th>조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td>3</td>
                              <td><a href="#">2025학년도 신입학 3차 추가모집 모집요강 및 모집</a></td>
                              <td>담당자</td>
                              <td>24.04.09</td>
                              <td>100</td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td><a href="#">2025학년도 신입학 3차 추가모집 모집요강 및 모집...</a></td>
                              <td>담당자</td>
                              <td>24.04.09</td>
                              <td>100</td>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td><a href="#">2025학년도 신입학 3차 추가모집 모집요강 및 인원 공지</a></td>
                              <td>담당자</td>
                              <td>24.04.09</td>
                              <td>100</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="page">
                        <div class="prev">
                            <a href="#" class="paging">
                                <img src="/MPGreen/images/btn-first-page.png">
                            </a>
                            <a href="#" class="paging">
                                <img src="/MPGreen/images/btn-prev-page.png">
                            </a>
                        </div>
                        <div class="pagenumber">
                            <a href="#" class="active">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                        </div>
                        <div class="last">
                            <a href="#" class="paging">
                                <img src="/MPGreen/images/btn-next-page.png">
                            </a>
                            <a href="#" class="paging">
                                <img src="/MPGreen/images/btn-last-page.png">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
    </section>
  </main>
<%@ include file="/WEB-INF/views/academic/_footer.jsp" %>