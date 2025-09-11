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
            <a href="${pageContext.request.contextPath}/academics/engineering.do" class="sidebar-text">공과대학</a>
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
                <h3 class="buText">공과대학</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                        <div class="collegeContainer">
                            <img src="/MPGreen/images/college-introduce-3.jpg" class="collegePhoto">
                            <div class="collegeArticle">
                                <p class="college">Engineering</p>
                                <p class="collegeTitle">기본 공학교육 및 산업현장과 연계된 산학 협동을 위한 학문을 교수 · 연구</p>
                                <p class="collegeText">
                                    공과대학은 지역 및 국가산업을 선도할 창의적이고 생산적인 전문기술인을 양성하기 위하여
                                    기본 공학교육의 강화, 전공교육의 심화 및 산업현장과 연계된 산학협동의 활성화를 실현할 관련 학문을 교수, 연구하는데 교육목표를 둔다.
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
                                        <td>기계공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김기계</td>
                                        <td>051-123-3001</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>전자공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김전자</td>
                                        <td>051-123-3002</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>전기공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김전기</td>
                                        <td>051-123-3003</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>컴퓨터공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김컴공</td>
                                        <td>051-123-3004</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>건축공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김건축</td>
                                        <td>051-123-3005</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>재료공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김재료</td>
                                        <td>051-123-3006</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>화학공학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김화학</td>
                                        <td>051-123-3007</td>
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