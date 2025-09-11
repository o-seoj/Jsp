<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/student/_header.jsp"%>

  <main>

     <div class="top-bar">
        <div class="top-bar-content">
            <img src="/MPGreen/images/ico-home.png" alt="홈">
            <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">학생지원</a>
            <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="/student/curriculum.html" class="sidebar-text">성적조회</a>
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
                        <a href="${pageContext.request.contextPath}/student/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/student/enroll-list.do" class="itemText">수강신청내역</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/student/curriculum.do" class="itemText">교과과정</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/student/grade-view.do" class="itemText">성적조회</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/student/record.do" class="itemText">학적</a>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">성적조회</h3>
            </div>
            <div class="boardLower">
                <div class="searchingField">
                    <span>
                        <select class="selectYear">
                            <option>2025</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                        </select>년
                    </span>
                    <span>
                        <select class="selectSem">
                            <option>1</option>
                            <option>2</option>
                        </select>학기
                    </span>
                    <span class="recordPhrase">
                        신청과목수 5과목, 총 신청학점 15학점&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                </div>        
                <div>
                    <table class="regTable">
                        <thead>
                            <tr>
                                <th>교과목 코드</th>
                                <th>과목명</th>
                                <th>대상학년</th>
                                <th>담당교수</th>
                                <th>이수구분</th>
                                <th>점수</th>
                                <th>등급</th>
                                <th>취득학점</th>
                                <th>기타</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>830003</td>
                                <td>자바프로그래밍</td>
                                <td>2학년</td>
                                <td>김자바</td>
                                <td>전공</td>
                                <td>99.0</td>
                                <td>A+</td>
                                <td>3</td>
                                <td>
                                    <button>상세확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td>830003</td>
                                <td>자료구조</td>
                                <td>2학년</td>
                                <td>김자료</td>
                                <td>전공</td>
                                <td>86.2</td>
                                <td>B+</td>
                                <td>3</td>
                                <td>
                                    <button>상세확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td>830003</td>
                                <td>대학영어</td>
                                <td>2학년</td>
                                <td>김영어</td>
                                <td>교양</td>
                                <td>92.6</td>
                                <td>A</td>
                                <td>3</td>
                                <td>
                                    <button>상세확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td>830003</td>
                                <td>알고리즘</td>
                                <td>2학년</td>
                                <td>김자바</td>
                                <td>전공</td>
                                <td>56.2</td>
                                <td>F</td>
                                <td>0</td>
                                <td>
                                   <button>상세확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td>830003</td>
                                <td>세계의역사</td>
                                <td>2학년</td>
                                <td>김역사</td>
                                <td>교양</td>
                                <td>80.0</td>
                                <td>B</td>
                                <td>3</td>
                                <td>
                                   <button>상세확인</button>
                                </td>
                            </tr>
                            <tr>
                                <td>830003</td>
                                <td>데이터베이스</td>
                                <td>2학년</td>
                                <td>김디비</td>
                                <td>전공</td>
                                <td>88.8</td>
                                <td>B+</td>
                                <td>3</td>
                                <td>
                                    <button>상세확인</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

         </div>

    </section>

  </main>

<%@ include file="/WEB-INF/views/student/_footer.jsp" %>