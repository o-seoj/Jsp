<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/_header.jsp"%>
        <!-- ===== 메인 ===== -->
        
        <main>
            <div class="wrapper">
            <!-- 1. 최상단 메인 배너 섹션 -->
            <section class="hero-section">
                <div class="hero-content">
                    <p>IT 기술과 창의적 사고를 통해 미래를 설계하는 인재 양성</p>
                    <h2>그린대학교 컴퓨터과학과</h2>
                    <a href="#" class="hero-button">학과바로가기</a>
                </div>
                <!-- 슬라이드 위치 아이콘 -->
                <div class="slide-indicators">
                    <span class="active"></span><!-- 첫 번째 슬라이드가 활성화된 상태 -->
                    <span></span>
                    <span></span>
                </div>
            </section>

            <!-- 2. 공지사항 섹션 (학사공지, 공지사항) -->
            <section class="notice-section">
                <div class="container">
                    <div class="notice-board">
                        <div class="notice-header white-header">
                            <h3>학사안내</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">2025학년도 2학기 수강신청 안내</a><span>2025.09.04</span></li>
                            <li><a href="#">2025학년도 1학기 성적 확인 및 이의신청 안내</a><span>2025.09.03</span></li>
                            <li><a href="#">졸업요건 변경에 따른 안내문</a><span>2025.09.02</span></li>
                            <li><a href="#">코로나19 관련 비대면 수업 연장 안내</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                    <div class="notice-board blue-header">
                        <div class="notice-header">
                            <h3>공지사항</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">[모집] 2025 그린대학교 코딩경진대회 참가자 모집</a><span>2025.09.04</span></li>
                            <li><a href="#">[장학] 2025년도 2학기 국가장학금 신청 안내</a><span>2025.09.03</span></li>
                            <li><a href="#">[행사] 2025년 가을축제 일정 안내</a><span>2025.09.02</span></li>
                            <li><a href="#">중앙도서관 시스템 점검으로 인한 서비스 일시 중단 안내</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                </div>
            </section>

            <!-- 3. 포토 갤러리 섹션 -->
            <section class="gallery-section">
                <div class="container">
                    <!-- 갤러리 제목과 더보기 버튼을 포함하는 헤더 -->
                    <div class="gallery-title">
                        <span>PHOTO GALLERY</span>
                        <a href="#" class="more-btn"></a>
                    </div>
            
                    <!-- 갤러리 아이템 목록 -->
                    <div class="photo_gallery">
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                        <a href="#">
                            <div class="caption">
                                <p>글로벌 명문대학 그린대학교</p>
                            </div>
                        </a>
                    </div>
                </div>
            </section>

            <!-- 4. 주요사이트 바로가기 배너 -->
            <section class="sites-banner-section">
                <div class="container">
                    <div class="banner-text">
                        <h4>동아리 HELPER</h4>
                        <p>공무원 시험 준비반을 운용함으로써 정치행정학과에서 공무원 시험을 준비하는 학생들에게<br>
                            인터넷 강의, 교재를 제공하고 스터디 그룹의 활동을 도와주고 있습니다.
                        </p>
                    </div>
                    <a href="#" class="banner-button">자세히 보기</a>
                </div>
            </section>

            <!-- 5. 하단 콘텐츠 섹션 (뉴스, 스마트링크) -->
            <section class="bottom-content-section">
                <div class="container">
                    <div class="notice-board news-board">
                        <div class="notice-header">
                            <h3>뉴스/이벤트</h3>
                            <a href="#" class="more-btn"></a>
                        </div>
                        <ul>
                            <li><a href="#">[뉴스] 그린대학교, AI 연구소 개소</a><span>2025.09.04</span></li>
                            <li><a href="#">[이벤트] 신입생 환영 기념품 증정 이벤트</a><span>2025.09.03</span></li>
                            <li><a href="#">[뉴스] 컴퓨터과학과 김그린 교수, 세계적인 학회에서 논문 발표</a><span>2025.09.02</span></li>
                            <li><a href="#">[뉴스] 우리대학, 2025 대학평가에서 상위권 달성</a><span>2025.09.01</span></li>
                        </ul>
                    </div>
                    <div class="smart-link-section">
                        <div class="notice-board">
                            <div class="notice-header smart-link-title">
                                <h3>SMART LINK</h3>
                            </div>
                            <div class="smart-link-container">
                                <a href="#" class="link-item cert">
                                    <div class="icon-placeholder"><span>증명서발급 아이콘</span></div>
                                    <p>증명서발급</p>
                                </a>
                                <a href="#" class="link-item schedule">
                                    <div class="icon-placeholder"><span>학사일정 아이콘</span></div>
                                    <p>학사일정</p>
                                </a>
                                <a href="#" class="link-item directions">
                                    <div class="icon-placeholder"><span>오시는길 아이콘</span></div>
                                    <p>오시는길</p>
                                </a>
                                <a href="#" class="link-item sitemap">
                                    <div class="icon-placeholder"><span>사이트맵 아이콘</span></div>
                                    <p>사이트맵</p>
                                </a>
                                <a href="#" class="link-item support">
                                    <div class="icon-placeholder"><span>학생지원 아이콘</span></div>
                                    <p>학생지원</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section> 
        </main>
<%@ include file="/WEB-INF/views/common/_footer.jsp" %>

      