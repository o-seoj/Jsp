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
            <a href="${pageContext.request.contextPath}/academics/graduate.do" class="sidebar-text">대학원</a>
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

         <div class="board"> <!--본문 영역-->
            
            <div class="boardUpper">
                <h3 class="buText">대학원</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                        <div class="collegeContainer">
                            <img src="/MPGreen/images/college-introduce-5.jpg" class="collegePhoto">
                            <div class="collegeArticle">
                                <p class="college">GRADUATE SCHOOL</p>
                                <p class="collegeTitle">학문의 이론과 응용방법을 한층 더 심오하게 연구, 교수 및 지도자적 인경을 도야하고 창의력을 함양</p>
                                <p class="collegeText">
                                    대학원은 학문의 이론과 응용방법을 한층 더 심오하게 연구·교수한다.
                                    동시에 인격을 도야하고 독창력을 함양하여 문화발전에 기여하고 있으며, 21세기의 세계화, 국제화, 개방화 시대를 맞이하여 공학, 인문사회, 자연과학, 예체능, 수산 및 해양과학에 관한 학문 전 분야의 균형있는 발전을 꾀하고 있다.
                                    아울러 첨단연구와 지도능력을 갖춘 인재양성을 위해 대학원 교육의 획기적인 강화와 제도 개선 그리고 연구기능의 활성화에 적극 힘쓰고 있으며 우수학생을 유치하기 위하여 연구/수업조교장학제도를 실시하며 국제화의 일환으로 외국인 학생을 유치하고 대학원 교육의 활성화에 적극 노력하고 있다.
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
                                        <td>경영대학원
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김경영</td>
                                        <td>051-123-5001</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>경제대학원
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김경제</td>
                                        <td>051-123-5002</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>행정대학원
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김행정</td>
                                        <td>051-123-5003</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>교육대학원
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김교육</td>
                                        <td>051-123-5004</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>산업대학원
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김산업</td>
                                        <td>051-123-5005</td>
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