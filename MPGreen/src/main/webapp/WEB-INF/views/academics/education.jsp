<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/WEB-INF/views/academics/_header.jsp" %>

  <main>

    <div class="top-bar">
        <div class="top-bar-content">
            <img src="/MPGreen/images/ico-home.png" alt="홈">
            <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">대학·대학원</a>
			<img src="/MPGreen/images/bg-path-arrow.png" alt="next">
            <a href="${pageContext.request.contextPath}/academics/education.do" class="sidebar-text">사범대학</a>
        </div>
    </div>

   <section id="container"> 
        <div class="sidebar"> <!--사이드바-->
            <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                <h2 class="sbTitle">대학·대학원</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> <!--사이드바 리스트 요소-->
                        <a href="${pageContext.request.contextPath}/academics/humanities.do" class="itemText">인문사회대학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academics/science.do" class="itemText">자연과학대학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academics/engineering.do" class="itemText">공과대학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academics/education.do" class="itemText">사범대학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/academics/graduate.do" class="itemText">대학원</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="board"> 
            
            <div class="boardUpper">
                <h3 class="buText">사범대학</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                        <div class="collegeContainer">
                            <img src="/MPGreen/images/college-introduce-4.jpg" class="collegePhoto">
                            <div class="collegeArticle">
                                <p class="college">Education</p>
                                <p class="collegeTitle">미래를 움직이는 큰 인재, 세계의 주역!</p>
                                <p class="collegeText">
                                    전공영역은 물론 현대 교육에 대한 학문적 탐구의 자질 및 인격도야의 중점을 두고 있습니다.중등교육연수원, 과학교육연구소, 부설고등학교 등이 있습니다.
                                    원격강의, 스튜디오, 원격교육강의실, 교육매체 제작실, 멀티미디어 강의실, 어학학습실, 수업행동 분석실 등 첨단 시설을 갖춘 교육지원센터를운영하고 있습니다.중등교육연수원, 과학교육연구소, 부설고등학교 등이 있습니다.
                                </p>
                            </div>
                        </div>
                        <div class="tableHeader">
                            <h4>학부 및 학과</h4>
                        </div>
                        <div>
                            <table class="majorTable">
                                <thead>
                                    <tr>
                                        <th>학과/전공</th>
                                        <th>학과장</th>
                                        <th>학과 사무실 번호</th>
                                        <th>비고</th>
                                    </tr>
                                </thead>
                                <!--  <c:forEach var="academics" items="${dtoList}"> -->
                                <tbody>
                                    <tr>
                                        <td>국어교육과<!-- ${academics.dep_name} -->
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김국어<!-- ${academics.dean} --></td>
                                        <td>051-123-4001<!-- ${academics.dep_tel} --></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>영어교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김영어</td>
                                        <td>051-123-4002</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>수학교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김수학</td>
                                        <td>051-123-4003</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>윤리학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김윤리</td>
                                        <td>051-123-4004</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>교육학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김교육</td>
                                        <td>051-123-4005</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>사회교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김사회</td>
                                        <td>051-123-4006</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>역사교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김화학</td>
                                        <td>051-123-4007</td>
                                    <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>체육교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김체육</td>
                                        <td>051-123-4008</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>특수교육과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김특수</td>
                                        <td>051-123-4009</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table>   
                        </div>
                </div>
        </div>
    </section>
    </main>
<%@ include file="/WEB-INF/views/academics/_footer.jsp" %>