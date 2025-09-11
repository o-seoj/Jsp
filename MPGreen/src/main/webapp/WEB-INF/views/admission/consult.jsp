<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/admission/_header.jsp" %>
  
  <main>
     <div class="top-bar">
        <div class="top-bar-content">
            <img src="../images/ico-home.png" alt="홈">
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">입학안내</a>
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="${pageContext.request.contextPath}/adimssion/consult.do" class="sidebar-text">입학상담</a>
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
                        <a href="${pageContext.request.contextPath}/admission/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/adimssion/early.do" class="itemText">수시모집</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/adimssion/regular.do" class="itemText">정시모집</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/adimssion/transfer.do" class="itemText">편입학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/adimssion/consult.do" class="itemText">입학상담</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">입학상담</h3>
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
                    <table class="consult-board">
                        <thead>
                            <tr>
                              <th>번호</th>
                              <th>구분</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>작성일</th>
                              <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td>3</td>
                              <td>정시</td>
                              <td>정시모집 관련해 문의드립니다.</td>
                              <td>홍길동</td>
                              <td>24.04.09</td>
                              <td class="undone">답변완료</td>
                            </tr>
                            <tr>
                              <td>3</td>
                              <td>정시</td>
                              <td>정시모집 관련해 문의드립니다.</td>
                              <td>홍길동</td>
                              <td>24.04.09</td>
                              <td class="done">답변완료</td>
                            </tr>
                            <tr>
                              <td>3</td>
                              <td>정시</td>
                              <td>정시모집 관련해 문의드립니다.</td>
                              <td>홍길동</td>
                              <td>24.04.09</td>
                              <td class="done">답변완료</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="page">
                        <div class="prev">
                            <a href="#" class="paging">
                                <img src="../images/btn-first-page.png">
                            </a>
                            <a href="#" class="paging">
                                <img src="../images/btn-prev-page.png">
                            </a>
                        </div>
                        <div class="pagenumber">
                            <a href="#" class="active">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                        </div>
                        <div class="last">
                            <a href="#" class="paging">
                                <img src="../images/btn-next-page.png">
                            </a>
                            <a href="#" class="paging">
                                <img src="../images/btn-last-page.png">
                            </a>
                        </div>
                    </div>
                    <div class="btn-box">
                        <a href="${pageContext.request.contextPath}/admission/consult_write.do" class="ask">문의하기</a>
                    </div>
                </div>
            </div>
    </section>
</main>
<%@ include file="/WEB-INF/views/admission/_footer.jsp" %>