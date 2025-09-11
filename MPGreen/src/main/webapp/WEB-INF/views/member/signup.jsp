<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/MPGreen/css/common/header.css">
    <link rel="stylesheet" href="/MPGreen/css/common/layout.css">
    <link rel="stylesheet" href="/MPGreen/css/member/signup.css">
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
        <!-- ===== 회원가입 ===== -->
        <div class="form-wrapper">
            <div class="signup-form-container">
                <div class="form-header">
                    <h1>회원가입</h1>
                    <p>반갑습니다 그린대학교입니다. 회원가입 후 더 많은 정보를 이용하세요.</p>
                    <p>대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다.</p>
                </div>
    
                <div class="form-fields">
                    <div class="form-row">
                        <div class="form-label"><label for="user-id">아이디<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="text" id="user-id" class="text-input" placeholder="아이디 입력">
                            <span>영문·숫자 조합 4~10자 이내</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label"><label for="user-password">비밀번호<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="password" id="user-password" class="text-input" placeholder="비밀번호 입력">
                            <span>비밀번호는 8-16자리 이내, 영문·숫자·특수문자 조합</span>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label"><label for="user-password-confirm">비밀번호 확인<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="password" id="user-password-confirm" class="text-input" placeholder="비밀번호 확인 입력">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label"><label for="user-name">이름<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="text" id="user-name" class="text-input" placeholder="이름 입력">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label"><label for="user-phone">휴대폰<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="text" id="user-phone" class="text-input" placeholder="휴대폰 입력">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-label"><label for="user-email">이메일<span class="required">*</span></label></div>
                        <div class="form-input">
                            <input type="email" id="user-email" class="text-input" placeholder="이메일 입력">
                        </div>
                    </div>
                    <div class="form-row address-row">
                        <div class="form-label"><label>주소</label></div>
                        <div class="form-input">
                            <div class="address-input-group">
                                <input type="text" class="text-input" placeholder="우편번호 선택">
                                <button type="button">우편번호 선택</button>
                            </div>
                            <input type="text" class="text-input" placeholder="기본주소 선택">
                            <input type="text" class="text-input" placeholder="상세주소 입력">
                        </div>
                    </div>
                </div>
    
                <div class="required-info">
                    <span class="required">*</span> 필수입력
                </div>
    
                <div class="form-actions">
                    <button type="button" class="cancel-btn">취소</button>
                    <button type="submit" class="signup-btn">회원가입</button>
                </div>
            </div>
        </div>
    </main>
<%@ include file="/WEB-INF/views/common/_footer.jsp" %>