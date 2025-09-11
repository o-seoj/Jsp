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
        </div>
        
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">학적</h3>
            </div>
            <div class="boardLower">
                <div class="tableHeader">
                    <h4>기본정보</h4>
                </div>
                <div>
                    <table class="stdInfo">
                        <tbody>
                            <tr>
                                <td class="avatar" rowspan="4">
                                    <img src="/MPGreen/images/icon-avatar.png" alt="프로필 사진">
                                </td>
                                <th scope="row">학번</th>
                                <td>202001230</td>
                                <th scope="row">학과</th>
                                <td>컴퓨터공학과</td>
                            </tr>
                            <tr>
                                <th scope="row">이름</th>
                                <td>홍길동</td>
                                <th scope="row">주민번호</th>
                                <td>900103-1234567</td>
                            </tr>
                            <tr>
                                <th scope="row">휴대폰</th>
                                <td>010-1234-1001</td>
                                <th scope="row">EMAIL</th>
                                <td>hong1001@naver.com</td>
                            </tr>
                                <tr>
                                <th scope="row">학년/학기</th>
                                <td>3학년 / 1학기</td>
                                <th scope="row">상태</th>
                                <td class="status-is-active">재학중</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tableHeader">
                    <h4>취득학점현황</h4>
                </div>
                <div>
                    <table class="point">
                        <thead>
                            <th>구분</th>
                            <th>전공(7)</th>
                            <th>교양(6)</th>
                            <th>선택(1)</th>
                            <th>사회봉사</th>
                            <th>기타</th>
                            <th>총취득학점</th>
                            <th>졸업요건학점</th>
                        </thead>
                        <tbody>
                            <td>취득학점</td>
                            <td>21</td>
                            <td>16</td>
                            <td>3</td>
                            <td>0</td>
                            <td>0</td>
                            <td>40</td>
                            <td>130</td>
                        </tbody>
                    </table>
                </div>
                <div class="phrase">
                    <p>
                        - 각 괄호안의 숫자는 이수 과목 수
                    </p>
                </div>
                <div class="tableHeader">
                    <h4>년도/학기별 취득학점현황</h4>
                </div>
                <div>
                    <table class="stdReport">
                        <thead>
                            <tr>
                                <th>년도</th>
                                <th>학년</th>
                                <th>학기</th>
                                <th>신청학점</th>
                                <th>전공학점</th>
                                <th>선택학점</th>
                                <th>기타학점</th>
                                <th>총취득학점</th>
                                <th>평점평균</th>
                                <th>기타</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2020</td>
                                <td>1</td>
                                <td>1</td>
                                <td>18</td>
                                <td>15</td>
                                <td>3</td>
                                <td>0</td>
                                <td>18</td>
                                <td>3.2</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>2020</td>
                                <td>1</td>
                                <td>2</td>
                                <td>18</td>
                                <td>15</td>
                                <td>3</td>
                                <td>0</td>
                                <td>18</td>
                                <td>3.2</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>2021</td>
                                <td>2</td>
                                <td>1</td>
                                <td>18</td>
                                <td>18</td>
                                <td>0</td>
                                <td>0</td>
                                <td>18</td>
                                <td>4.2</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>2021</td>
                                <td>2</td>
                                <td>2</td>
                                <td>18</td>
                                <td>18</td>
                                <td>0</td>
                                <td>0</td>
                                <td>18</td>
                                <td>4.2</td>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

         </div>

    </section>

  </main>

<%@ include file="/WEB-INF/views/student/_footer.jsp" %>