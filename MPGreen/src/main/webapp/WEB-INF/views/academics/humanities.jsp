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
            <a href="${pageContext.request.contextPath}/academics/humanities.do" class="sidebar-text">인문사회대학</a>
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
                <h3 class="buText">인문사회대학</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
                        <div class="collegeContainer">
                            <img src="/MPGreen/images/college-introduce-1.jpg" class="collegePhoto">
                            <div class="collegeArticle">
                                <p class="college">Humanities And Social Sciences</p>
                                <p class="collegeTitle">인문, 사회분야의 다양하고 심화된 이론을 연구</p>
                                <p class="collegeText">
                                    인문사회과학대학은 민족의 문화적 유산과 전통을 창조적으로 계승, 발전시킬 열린 민족인,
                                    세계화된 지식, 정보사회를 주도할 수 있는 국제적인 식견을 갖춘 전문인, 법, 정치 경제, 언론 등
                                    우리 사회의 중심을 이루는 영역에서 정의로운 사명감을 가지고 일 할 양심적인 봉사자,
                                    그리고 창의적인 디자인 활동을 통한 개성적인 인재를 양성하기 위해서 인문, 사회, 디자인 영역의
                                    다양하고 심화된 이론과 실제를 교수, 연구하는데 교육 목표로 둔다.
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
                                        <td>국어국문학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김국어</td>
                                        <td>051-123-1001</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>영어영문학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김영어</td>
                                        <td>051-123-1002</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>일어일문학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김일어</td>
                                        <td>051-123-1003</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>중어중문학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김중어</td>
                                        <td>051-123-1004</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>역사학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김역사</td>
                                        <td>051-123-1005</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>경제학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김경제</td>
                                        <td>051-123-1006</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>경영학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김경영</td>
                                        <td>051-123-1007</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>법학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김법학</td>
                                        <td>051-123-1008</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>철학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김철학</td>
                                        <td>051-123-1009</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>정치외교학과
                                            <a href="#"><img src="../images/ico_link.png"></a>
                                        </td>
                                        <td>김정치</td>
                                        <td>051-123-1010</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>행정학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김행정</td>
                                        <td>051-123-1011</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>사회복지학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김사회</td>
                                        <td>051-123-1012</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>유아교육학과
                                            <a href="#"><img src="/MPGreen/images/ico_link.png"></a>
                                        </td>
                                        <td>김유아</td>
                                        <td>051-123-1013</td>
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