<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>  
<body class="page-life">

  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">대학생활</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">동아리/스터디</a>
      </div>
    </div>

    <section id="container">

      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">대학생활</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/clubs.do ">학생회 소개</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/life/study.do" style="color:#fff">동아리/스터디</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/cafeteria.do">식단안내</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/gallery.do">갤러리</a></li>
          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">동아리/스터디</h3>
        </div>

        <div class="life-wrap">

          <div class="life-brief">
            그린대학교 동아리/스터디는 관심 분야의 지식을 나누고 교류하며 성장하는
            학생 주도 커뮤니티입니다. 정규(중앙) 동아리와 자율 스터디, 두 트랙으로 운영되며
            모든 재학생이 자유롭게 참여할 수 있습니다.
          </div>


          <h4 class="life-sec-title">🎯 현재 모집 중</h4>
          <div class="life-cards life-cards--grid">
            <div class="life-card">
              <h4>그린 로보틱스</h4>
              <p class="life-meta">정규 · 공학/메이커 · 매주 수 19:00</p>
              <p>로봇 제작/임베디드/대회 참가. 하드웨어부터 펌웨어까지 팀 단위 프로젝트로 진행합니다.</p>
              <p class="life-meta">모집기간: ~ 4/30 · 장소: 공학관 B107</p>
            </div>
            <div class="life-card">
              <h4>Green AI Study</h4>
              <p class="life-meta">스터디 · 데이터/AI · 매주 화·목 18:30</p>
              <p>기초 ML부터 딥러닝 실습까지 커리큘럼 제공. 캐글 미니 컴피티션 운영.</p>
              <p class="life-meta">모집기간: 상시 · 온라인/오프라인 병행</p>
            </div>
            <div class="life-card">
              <h4>캠퍼스 밴드 ‘LIME’</h4>
              <p class="life-meta">정규 · 음악/공연 · 주 2회 합주</p>
              <p>정기 공연과 축제 메인 무대 참여. 보컬/기타/드럼/건반/베이스 파트 모집.</p>
              <p class="life-meta">오디션: 4/22(월) 학생회관 B1 합주실</p>
            </div>
            <div class="life-card">
              <h4>봉사동아리 ‘나누미’</h4>
              <p class="life-meta">정규 · 봉사/나눔 · 월 2회</p>
              <p>지역 아동센터 학습 멘토링 및 환경정화 캠페인 진행.</p>
              <p class="life-meta">VMS/1365 실적 연계</p>
            </div>
            <div class="life-card">
              <h4>사진동아리 ‘F/2.0’</h4>
              <p class="life-meta">정규 · 예술/취미 · 주 1회 출사</p>
              <p>촬영 실습·후보정 워크숍, 전시회 개최.</p>
              <p class="life-meta">장비 대여 가능</p>
            </div>
            <div class="life-card">
              <h4>축구 소모임 ‘Green FC’</h4>
              <p class="life-meta">자율 · 스포츠 · 토 10:00</p>
              <p>주말 경기, 학내 리그 출전.</p>
              <p class="life-meta">경기장: 운동장 2구역</p>
            </div>
          </div>

          <h4 class="life-sec-title">📚 분야별 동아리</h4>
          <table class="life-table">
            <colgroup>
              <col class="col-head"><col><col><col>
            </colgroup>
            <thead>
              <tr>
                <th>분야</th>
                <th>동아리명</th>
                <th>형태</th>
                <th>모임 요일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th>학술/기술</th>
                <td>로보틱스, Green AI Study, 프로그래밍 알고리즘</td>
                <td>정규/스터디</td>
                <td>화/수/목</td>
              </tr>
              <tr>
                <th>문화/예술</th>
                <td>캠퍼스 밴드 LIME, 사진 F/2.0, 연극 ‘무대위’</td>
                <td>정규</td>
                <td>수/금/토</td>
              </tr>
              <tr>
                <th>체육</th>
                <td>Green FC(축구), 농구회, 배드민턴</td>
                <td>자율</td>
                <td>수/토</td>
              </tr>
              <tr>
                <th>봉사/사회</th>
                <td>나누미, 해외봉사 준비반, 환경지킴이</td>
                <td>정규/자율</td>
                <td>격주</td>
              </tr>
            </tbody>
          </table>


          <h4 class="life-sec-title">📝 가입 절차</h4>
          <div class="life-steps">
            <div class="life-step"><b>1. 둘러보기</b><br>모집 중 카드/분야별 리스트 확인</div>
            <div class="life-step"><b>2. 문의</b><br>동아리 대표/운영진 연락</div>
            <div class="life-step"><b>3. 체험 참여</b><br>오리엔테이션/체험 세션</div>
            <div class="life-step"><b>4. 등록</b><br>가입 신청서 제출 및 회비 납부(해당 시)</div>
          </div>


          <div class="life-note">
            📮 문의: 학생회관 2층 동아리연합회(051-123-4568) · club@green.ac.kr
          </div>


          <h4 class="life-sec-title">❓ 자주 묻는 질문</h4>
          <div class="life-faq">
            <details>
              <summary>정규 동아리와 자율 스터디의 차이는?</summary>
              <p>정규 동아리는 학교 등록 및 예산 지원·시설 배정이 이뤄지는 공식 단체이며, 자율 스터디는 학생 주도의 소모임 형태로 보다 자유롭게 운영됩니다.</p>
            </details>
            <details>
              <summary>둘 이상 활동해도 되나요?</summary>
              <p>가능합니다. 다만 일정이 겹치지 않도록 각 모임 운영진과 사전에 협의해 주세요.</p>
            </details>
            <details>
              <summary>장비가 없어도 참여 가능한가요?</summary>
              <p>대부분의 정규 동아리는 공용 장비를 일부 보유하고 있으며, 대여 절차를 통해 이용할 수 있습니다.</p>
            </details>
          </div>
        </div>
      </div>
    </section>
  </main>
  <%@ include file="./_footer.jsp" %>
  </body>
