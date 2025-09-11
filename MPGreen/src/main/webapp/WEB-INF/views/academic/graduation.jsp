<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/academic/_header.jsp"%>


    <main>

        <div class="top-bar">
            <div class="top-bar-content">
                <img src="/MPGreen/images/ico-home.png" alt="홈">
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">대학소개</a>
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">총장 인사말</a>
            </div>
        </div>
        
    <section id="container"> 
        <div class="sidebar"> <!--사이드바-->
            <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                <h2 class="sbTitle">학사안내</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
   					<li class="item"> <!--사이드바 리스트 요소-->
                        <a href="/MPGreen/academic/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/schedule.do" class="itemText">학사일정</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/grade.do" class="itemText">성적</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/graduation.do" class="itemText">수료 및 졸업</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/faq.do" class="itemText">자주 묻는 질문</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->
            <div class="boardUpper">
                <h3 class="buText">수료 및 졸업</h3>
            </div>

            <div class="boardLower"> <!--본문(내용 영역)-->
                <!--------- 1번째 FAQ ---------->
                <div class="text-with-icon">
                    <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                    <span>수료기준</span>
                </div>

                <table class="completion-table">
                    <thead>
                        <tr>
                        <th class="col-section" rowspan="2">구분</th>
                        <th class="col-total" rowspan="2">총취득학점</th>
                        <th class="col-completion" colspan="4">수료학점</th>
                        </tr>
                        <tr>
                        <th class="col-completion">전공</th>
                        <th class="col-completion">교양</th>
                        <th class="col-completion">기타</th>
                        <th class="col-completion">합계</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td class="col-section">1학년</td>
                        <td class="col-total">30</td>
                        <td class="col-completion">15</td>
                        <td class="col-completion">10</td>
                        <td class="col-completion">5</td>
                        <td class="col-completion">30</td>
                        </tr>
                        <tr>
                        <td class="col-section">2학년</td>
                        <td class="col-total">32</td>
                        <td class="col-completion">16</td>
                        <td class="col-completion">10</td>
                        <td class="col-completion">6</td>
                        <td class="col-completion">32</td>
                        </tr>
                        <tr>
                        <td class="col-section">3학년</td>
                        <td class="col-total">29</td>
                        <td class="col-completion">14</td>
                        <td class="col-completion">10</td>
                        <td class="col-completion">5</td>
                        <td class="col-completion">29</td>
                        </tr>
                        <tr>
                        <td class="col-section">4학년</td>
                        <td class="col-total">31</td>
                        <td class="col-completion">15</td>
                        <td class="col-completion">10</td>
                        <td class="col-completion">6</td>
                        <td class="col-completion">31</td>
                        </tr>
                    </tbody>
                </table>

                <p class="explanation-text">- 수료기준 : 졸업학점에 따라 학년별 수료학점이 다르며, 각 학년별 수료학점을 취득한 경우 해당 학년에 대한 ‘수료증명서’를 발급 가능</p>

                    <div class="text-with-icon">
                    <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                    <span>조기졸업</span>
                </div>
                
                <table class="early-graduation-table">
                    <thead>
                        <tr>
                        <th class="col-qualification" colspan="3">자격</th>
                        <th class="col-procedure" rowspan="2">신청절차</th>
                        </tr>
                        <tr>
                        <th class="col-semester">이수학기</th>
                        <th class="col-gpa">평점평균</th>
                        <th class="col-credits">취득학점</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td class="data-cell">6학기 또는 7학기 이수자로서 해당학기
                            이수로 모든 졸업요건의 충족이 가능한 자.
                        </td>
                        <td class="data-cell">4.00 이상</td>
                        <td class="data-cell">정규졸업 요구학점과 동일</td>
                        <td class="data-cell">졸업을 원하는 학기초 30일 이내에 “조기졸업신청서”를 교무팀에 제출</td>
                        </tr>
                    </tbody>
                </table>

                <p class="explanation-text">※ 편입생 제외</p>

                <div class="text-with-icon">
                    <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
                    <span>졸업</span>
                </div>
            <table class="graduation-table">
            <thead>
                <tr>
                <th class="col-college" rowspan="2">소속 단과대학</th>
                <th class="col-total-credits" rowspan="2">총 취득학점</th>
                <th class="col-major" colspan="3">전공 이수 학점</th>
                </tr>
                <tr>
                <th class="col-double-major">복수전공</th>
                <th class="col-single-major">단일전공</th>
                <th class="col-minor">부전공</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td class="data-cell">인문대학</td>
                <td class="data-cell">130이상</td>
                <td class="data-cell">33</td>
                <td class="data-cell">60</td>
                <td class="data-cell">제1전공42 / 부전공21</td>
                </tr>
                <tr>
                <td class="data-cell">사회과학대학</td>
                <td class="data-cell">130이상</td>
                <td class="data-cell">33</td>
                <td class="data-cell">60</td>
                <td class="data-cell">제1전공42 / 부전공21</td>
                </tr>
                <tr>
                <td class="data-cell">경영대학</td>
                <td class="data-cell">130이상</td>
                <td class="data-cell">33</td>
                <td class="data-cell">60</td>
                <td class="data-cell">제1전공42 / 부전공21</td>
                </tr>
                <tr>
                <td class="data-cell">자연과학대학</td>
                <td class="data-cell">130이상</td>
                <td class="data-cell">33</td>
                <td class="data-cell">70</td>
                <td class="data-cell">제1전공50 / 부전공25</td>
                </tr>
                <tr>
                <td class="data-cell">정보과학대학</td>
                <td class="data-cell">130이상</td>
                <td class="data-cell">33</td>
                <td class="data-cell">60</td>
                <td class="data-cell">제1전공42 / 부전공21</td>
                </tr>
            </tbody>
            </table>

            <p class="explanation-text">- 등록학기 : 8학기 이상, 의과대학 의학과는 12학기 이상<br>
                                        - 총 성적평점평균 : 2.00 이상<br>
                                        - 졸업논문(또는 졸업종합시험) : 합격</p>

            </div>

        </div>
    </section>
  </main>

<%@ include file="/WEB-INF/views/academic/_footer.jsp" %>