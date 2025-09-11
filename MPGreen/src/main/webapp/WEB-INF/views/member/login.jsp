<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="/MPGreen/css/common/header.css">
    <link rel="stylesheet" href="/MPGreen/css/common/layout.css">
    <link rel="stylesheet" href="/MPGreen/css/member/login.css">
    <link rel="stylesheet" href="/MPGreen/css/common/footer.css">
</head>
<body>
    <header>
        <!-- 1. 상단 유틸 메뉴: 이 div가 화면 끝까지 늘어남 -->
        <div id="header-top">
            <!-- .container가 내부 콘텐츠를 1200px로 중앙 정렬함 -->
            <div class="container">
                <ul class="util">
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">사이트맵</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">학생지원</a></li>
                </ul>
            </div>
        </div>
        <!-- 2. 메인 네비게이션: 이 div도 화면 끝까지 늘어남 -->
        <div class="header-main">
            <!-- .container가 로고와 메뉴를 1200px 중앙에 배치 -->
            <div class="container">
                <a href="/" class="logo">
                    <img src="/MPGreen/images/header_logo.png" alt="그린대학교">
                </a>
                <nav class="main-nav">
                    <ul>
                        <li class="dropdown"><a class="dropbtn" href="#">대학소개</a>
                            <ul class="dropdown-content">
                                <li><a href="#">총장 인사말</a></li>
                                <li><a href="#">교육이념</a></li>
                                <li><a href="#">연혁</a></li>
                                <li><a href="#">조직도</a></li>
                                <li><a href="#">오시는길</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropbtn" href="#">입학안내</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">수시모집</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropbtn" href="#">대학·대학원</a>
                            <ul class="dropdown-content">
                                <li><a href="#">인문사회대학</a></li>
                                <li><a href="#">자연과학대학</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropbtn" href="#">학사안내</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">학사일정</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropbtn" href="#">대학생활</a>
                            <ul class="dropdown-content">
                                <li><a href="#">학생회 소개</a></li>
                                <li><a href="#">동아리/스터디</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropbtn" href="#">커뮤니티</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">뉴스 및 칼럼</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
        
    <main>
        <!-- ===== 상단바 ===== -->
        <div class="top-bar">
            <div class="top-bar-content">
                <img src="/MPGreen/images/ico-home.png" alt="홈">
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">대학소개</a>
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">총장 인사말</a>
            </div>
        </div>
        <!-- ===== 메인-로그인 ===== -->
        <div class="login-container">
            <div class="login-form">
                <h1 class="login-title">LOGIN</h1>
                <p class="login-comment">로그인을 하시면 더 다양한 서비스를 받으실 수 있습니다.</p>

                <form>
                    <div class="form-header">
                        <div class="role-selector">
                            <input type="radio" id="student" name="role" checked>
                            <label for="student">학부생</label>

                            <input type="radio" id="staff" name="role">
                            <label for="staff">교직원</label>

                            <input type="radio" id="general" name="role">
                            <label for="general">일반인</label>
                        </div>
                        <div class="find-link">
                            <a href="#">아이디/비밀번호 찾기</a>
                        </div>
                    </div>

                    <input type="text" class="input-field" placeholder="아이디">
                    <input type="password" class="input-field" placeholder="비밀번호">

                    <button type="submit" class="login-button">로그인</button>
                </form>

                <div class="info-section">
                    <div class="info-header">
                        <div class="info-title-group">
                            <img src="../images/bullet-h4.png" alt="가입 안내 불릿 아이콘" class="info-icon">
                            <h2>아이디, 비밀번호 안내</h2>
                        </div>
                        <div class="signup-link">
                            <a href="#">회원가입</a>
                        </div>
                    </div>
                    <ul class="info-list">
                        <li>대학 구성원(학원, 교직원)은 회원가입없이 교번, 학번을 사용하여 로그인이 가능합니다.</li>
                        <li>비밀번호 분실시 학생지원팀에 방문하셔서 초기화하실 수 있습니다.</li>
                        <li>재학, 휴학, 졸업 유예인 경우 사용하실 수 있으며, 매년 학적변동이 일어날 때 상태가 변경됩니다.</li>
                        <li>문의사항이 있으시면 담당자(055-123-4567)에게 전화주세요</li>
                    </ul>
                </div>
            </div>
        </div>
    </main>
    <%@ include file="/WEB-INF/views/common/_footer.jsp" %>