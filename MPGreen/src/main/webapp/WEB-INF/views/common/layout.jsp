<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기본 레이아웃 설정</title>
    <link rel="stylesheet" href="/css/common/layout.css">
    <link rel="stylesheet" href="/css/common/header.css">
    <link rel="stylesheet" href="/css/common/footer.css">
</head>
<body>

    <header>
        <div>
            <div>
                <ul class="util">
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">사이트맵</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">학생지원</a></li>
                </ul>

            </div>
        </div>
        <div>
            <div>
                <a href="/">
                    <img src="/images/header_logo.png" alt="그린대학교">
                </a>
                <nav>
                    <ul>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">대학소개</a>
                            <ul class="dropdown-content">
                                <li><a href="#">총장 인사말</a></li>
                                <li><a href="#">교육이념</a></li>
                                <li><a href="#">연혁</a></li>
                                <li><a href="#">조직도</a></li>
                                <li><a href="#">오시는길</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">입학안내</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">수시모집</a></li>
                                <li><a href="#">정시모집</a></li>
                                <li><a href="#">편입학</a></li>
                                <li><a href="#">입학상담</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">대학·대학원</a>
                            <ul class="dropdown-content">
                                <li><a href="#">인문사회대학</a></li>
                                <li><a href="#">자연과학대학</a></li>
                                <li><a href="#">공과대학</a></li>
                                <li><a href="#">사범대학</a></li>
                                <li><a href="#">대학원</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">학사안내</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">학사일정</a></li>
                                <li><a href="#">수강신청</a></li>
                                <li><a href="#">성적</a></li>
                                <li><a href="#">수료 및 졸업</a></li>
                                <li><a href="#">자주하는 질문</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">대학생활</a>
                            <ul class="dropdown-content">
                                <li><a href="#">학생회 소개</a></li>
                                <li><a href="#">동아리/스터디</a></li>
                                <li><a href="#">식단안내</a></li>
                                <li><a href="#">갤러리</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropbtn" href="#">커뮤니티</a>
                            <ul class="dropdown-content">
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">뉴스 및 칼럼</a></li>
                                <li><a href="#">취업정보</a></li>
                                <li><a href="#">자유게시판</a></li>
                                <li><a href="#">질문과 답변</a></li>
                                <li><a href="#">자료실</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>


  <main>


     <div class="top-bar">
        <div class="top-bar-content">
            <img src="/images/ico-home.png" alt="홈">
            <img src="/images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">대학소개</a>
            <img src="/images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">총장 인사말</a>
        </div>
    </div>

    <section id="container"> 
        <div class="sidebar"> 
            <div class="sidebarHeader">
                <h2 class="sbTitle">대학소개</h2> 
            </div>
            <div class="sidebarMenu"> 
                <ul class="list"> 
                    <li class="item">
                        <a href="#" class="itemText">총장 인사말</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">교육이념</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">연혁</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">조직도</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">오시는길</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board">
            <div class="boardUpper">
                <h3 class="buText">조직도</h3>
            </div>
            
            <div class="boardLower">
            컨텐츠 내용 꾸미기
                    
            </div>

         </div>

    </section>

  </main>

        <footer>
            <div>
            <div class="container bottom">

                <ul class="terms">
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">통합정보시스템</a></li>
                    <li><a href="#">학사일정</a></li>
                    <li><a href="#">주요민원 연럭처</a></li>
                    <li><a href="#">교내공지사항</a></li>
                </ul>
 
            </div>
            </div>
            <div>
            <div class="footer-inner">
                <div class="footer-logo">
                <img src="/images/footer_logo.png" alt="그린대학교" class="icon">
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