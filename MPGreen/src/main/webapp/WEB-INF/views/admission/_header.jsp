<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>GreenUniversity</title>
		<link rel="stylesheet" href="/MPGreen/css/common/layout.css">
        <link rel="stylesheet" href="/MPGreen/css/common/header.css">
        <link rel="stylesheet" href="/MPGreen/css/common/footer.css">
        <link rel="stylesheet" href="/MPGreen/css/admission/Admission.css">

    </head>
    <body>
        <header>
            <div id="header-top">
                <div class="container">
                    <ul class="util">
                        <li><a href="#">HOME</a></li>
                        <li><a href="#">사이트맵</a></li>
                        <li><a href="#">로그인</a></li>
                        <li><a href="#">학생지원</a></li>
		                    </ul>
		                </div>
		            </div>
		            <div class="header-main">
		
		                <div class="container">
		                    <a href="/" class="logo">
		                        <img src="/MPGreen/images/header_logo.png" alt="그린대학교">
		                    </a>
		                    <nav class="main-nav">
		                        <ul>
		            <li class="dropdown">

                        <a class="dropbtn" href="#">대학소개</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/about/greeting.do">총장 인사말</a></li>
                            <li><a href="${pageContext.request.contextPath}/about/philosophy.do">교육이념</a></li>
                            <li><a href="${pageContext.request.contextPath}/about/history.do">연혁</a></li>
                            <li><a href="${pageContext.request.contextPath}/about/organization.do">조직도</a></li>
                            <li><a href="${pageContext.request.contextPath}/about/location.do">오시는길</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a class="dropbtn" href="#">입학안내</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/admission/notice.do">공지사항</a></li>
                            <li><a href="${pageContext.request.contextPath}/admission/early.do">수시모집</a></li>
                            <li><a href="${pageContext.request.contextPath}/admission/regular.do">정시모집</a></li>
                            <li><a href="${pageContext.request.contextPath}/admission/transfer.do">편입학</a></li>
                            <li><a href="${pageContext.request.contextPath}/admission/consult.do">입학상담</a></li>
                        </ul>
                    </li>


                   <li class="dropdown">
                        <a class="dropbtn" href="#">대학·대학원</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/academics/humanities.do">인문사회대학</a></li>
                            <li><a href="${pageContext.request.contextPath}/academics/science.do">자연과학대학</a></li>
                            <li><a href="${pageContext.request.contextPath}/academics/engineering.do">공과대학</a></li>
                            <li><a href="${pageContext.request.contextPath}/academics/education.do">사범대학</a></li>
                            <li><a href="${pageContext.request.contextPath}/academics/graduate.do">대학원</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a class="dropbtn" href="#">학사안내</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/academic/notice.do">공지사항</a></li>
                            <li><a href="${pageContext.request.contextPath}/academic/schedule.do">학사일정</a></li>
                            <li><a href="${pageContext.request.contextPath}/academic/enroll.do">수강신청</a></li>
                            <li><a href="${pageContext.request.contextPath}/academic/grade.do">성적</a></li>
                            <li><a href="${pageContext.request.contextPath}/academic/graduation.do">수료 및 졸업</a></li>
                            <li><a href="${pageContext.request.contextPath}/academic/faq.do">자주하는 질문</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a class="dropbtn" href="#">대학생활</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/life/clubs.do">학생회 소개</a></li>
                            <li><a href="${pageContext.request.contextPath}/life/study.do">동아리/스터디</a></li>
                            <li><a href="${pageContext.request.contextPath}/life/cafeteria.do">식단안내</a></li>
                            <li><a href="${pageContext.request.contextPath}/life/gallery.do">갤러리</a></li>
                        </ul>
                    </li>


                    <li class="dropdown">
                        <a class="dropbtn" href="#">커뮤니티</a>
                        <ul class="dropdown-content">
                            <li><a href="${pageContext.request.contextPath}/community/notice.do">공지사항</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/news.do">뉴스 및 칼럼</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/jobs.do">취업정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>
		              </ul>
		            </li>
		          </ul>
		        </nav>
		      </div>
		    </div>
  </header>


