<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>약관 안내</title>
    <link rel="stylesheet" href="/MPGreen/css/common/header.css">
    <link rel="stylesheet" href="/MPGreen/css/common/layout.css">
    <link rel="stylesheet" href="/MPGreen/css/member/trems.css">
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

        <div class="terms-container">
            <div class="terms-header">
                <h3>약관 안내</h3>
                <p>※대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다</p>
                <p>※ 만 14세 미만 아동의 경우 홈페이지 회원가입에 제한이 있습니다.</p>
            </div>

            <div class="terms-area">
                <table class="terms-table">
                    <tbody>
                        <tr>
                            <th>이용약관</th>
                            <td>
                                <div class="terms-content-box">약관내용 출력하기</div>
                            </td>
                        </tr>
                        <tr>
                            <th>개인정보 수집안내</th>
                            <td>
                                <div class="terms-content-box">약관내용 출력하기</div>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="agreement-section">
                    <label>
                        <input type="checkbox" name="agree-all">
                        <span>위의 홈페이지 이용에 따른 회원가입 약관 및 개인정보 수집ㆍ이용에 모두 동의합니다.</span>
                    </label>
                </div>
                
                <div class="button-section">
                    <button type="button" class="btn btn-cancel">취소</button>
                    <button type="button" class="btn btn-next">다음</button>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div>
        <div class="container bottom">
            <p>
            <ul class="terms">
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">통합정보시스템</a></li>
                <li><a href="#">학사일정</a></li>
                <li><a href="#">주요민원 연럭처</a></li>
                <li><a href="#">교내공지사항</a></li>
            </ul>
            </p>
        </div>
        </div>
        <div>
        <div class="footer-inner">
            <div class="footer-logo">
            <img src="/MPGreen/images/footer_logo.png" alt="그린대학교" class="icon">
            </div>
            <div class="info">
            <p>
                그린대학교<br>
                [12345] 부산광역시 부산진구 부전대로 123 그린대학교<br>
                대표전화 : 051-123-1000 / 입학안내 : 051-123-1302 / FAX : 051-123-3333<br><br>
                CopyrightⓒGreen University All rights reserved.
            </p>
            </div>
            <div class="footer-tools">
            <form action="#" method="get">
                <select name="site" class="site-select" aria-label="주요사이트">
                <option selected>주요사이트</option>
                <option value="introduce">대학소개</option>
                <option value="admission">입학안내</option>
                <option value="graduate">대학.대학원</option>
                <option value="Academic">학사안내</option>
                <option value="campuslife">대학생활</option>
                <option value="community">커뮤니티</option>
                </select>
            </form>
            </div>
        </div>
        </div>
    </footer>
</body>
</html>