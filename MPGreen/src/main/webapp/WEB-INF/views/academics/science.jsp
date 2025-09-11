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
            <a href="${pageContext.request.contextPath}/academics/science.do" class="sidebar-text">자연과학대학</a>
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
        </div>>

        <div class="board"> <!--본문 영역-->
            
            <div class="boardUpper">
                <h3 class="buText">자연과학대학</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                        <div class="collegeContainer">
                            <img src="/MPGreen/images/college-introduce-2.jpg" class="collegePhoto">
                            <div class="collegeArticle">
                                 <p class="college">Natural Sciences</p>
                                 <p class="collegeTitle">자연과학의 기초 이론과 교수 연구, 융합 및 응용과학의 토대 제공</p>
                                 <p class="collegeText">
                                    자연과학대학은 미래 첨단과학기술사회의 학계, 연구소, 산업계 등을 
                                    주도적으로 이끌어 나갈 기초과학 인재 양성을 교육 목표로 한다.
                                    자연과학의 근간이 되는 물리, 화학, 응용수학, 미생물학, 과학컴퓨팅 및 간호학의 기초 이론을
                                    교수·연구하고 융합 및 응용과학의 토대를 제공할 것이다.
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
                                <tbody>
                                    <tr>
                                        <td>수학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김수학</td>
                                        <td>051-123-2001</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>물리학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김물리</td>
                                        <td>051-123-2002</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>화학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김화학</td>
                                        <td>051-123-2003</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>전문학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김전문</td>
                                        <td>051-123-2004</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>지구과학학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김지구</td>
                                        <td>051-123-2005</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>생명과학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김생명</td>
                                        <td>051-123-2006</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>미생물학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김생물</td>
                                        <td>051-123-2007</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>해양학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김해양</td>
                                        <td>051-123-2008</td>
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