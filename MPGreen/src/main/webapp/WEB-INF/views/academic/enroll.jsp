<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
    <!-- ===== 메인 ===== -->
<main>
<!-- ===== 상단바 ===== -->
<div class="top-bar">
    <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt="next">
        <a href="#" class="sidebar-text">학사안내</a>
        <img src="../images/bg-path-arrow.png" alt="next">
        <a href="#" class="sidebar-text">수강신청</a>
    </div>
</div>

<section id="container">
  <!-- 좌측 사이드바 -->
  <div class="sidebar">
    <div class="sidebarHeader">
      <h2 class="sbTitle">학사안내</h2>
    </div>
    <div class="sidebarMenu">
      <ul class="list">
        <li class="item"><a href="/academic/notice.html" class="itemText">공지사항</a></li>
        <li class="item"><a href="#" class="itemText">학사일정</a></li>
        <li class="item active"><a href="/academic/enroll.html" class="itemText">수강신청</a></li>
        <li class="item"><a href="/academic/grade.html" class="itemText">성적</a></li>
        <li class="item"><a href="#" class="itemText">수료 및 졸업</a></li>
        <li class="item"><a href="#" class="itemText">자주하는 질문</a></li>
      </ul>
    </div>
  </div>
<div class="board"> <!--본문 영역-->
  <div class="boardUpper">
    <h3 class="buText">수강신청</h3>
  </div>
  
  <div class="boardLower">
    <h4 style="margin:14px 0 8px">▌ 수강신청기간</h4>
    <ul style="margin-left:18px; list-style:disc">
      <li>매 학기 수강신청은 개강 전에 실시, 학생은 수강신청 공고를 충분히 숙지한 다음 인터넷을 통해 신청과목을 입력</li>
      <li>필요할 경우 학과사무실의 학사담당이나 지도교수의 지도를 받을 수 있으며, 반드시 학년별 지정된 날짜에 수강신청 완료</li>
      <li>자세한 설명은 학사일정 공지사항 게시판 참조</li>
    </ul>

    <!-- ▌ 수강신청 학점 -->
    <h4 style="margin:22px 0 8px">▌ 수강신청 학점</h4>
    <p>학기당 이수학점 : 18학점 이내 (논문과목 별도) [대학 학칙 제20조]</p>

    <!-- ▌ 학부(과)별 신청 학점 -->
    <!-- ▌ 학부(과)별 신청 학점 -->
    <h4 style="margin:22px 0 10px">▌ 학부(과)별 신청 학점</h4>
    <table class="enroll-table" 
          style="width:100%; border-collapse:collapse; background:#fff; font-size:14px">
      <thead>
        <tr>
          <th style="border:1px solid #ddd; padding:12px; background:#f8f9fa; font-weight:700">
            수강신청 학점수
          </th>
          <th style="border:1px solid #ddd; padding:12px; background:#f8f9fa; font-weight:700">
            대상학부(과)
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="border:1px solid #ddd; padding:12px; text-align:center">
            졸업학점이 130학점인 학부<br>최저 12학점, 최대 18학점
          </td>
          <td style="border:1px solid #ddd; padding:12px">
            인문대학, 사회과학대학, 경영대학, 공과대학, 자연과학대학, 간호대학, 글로벌융합대학
          </td>
        </tr>
        <tr>
          <td style="border:1px solid #ddd; padding:12px; text-align:center">
            졸업학점이 135~140학점인 학부<br>최저 15학점, 최대 21학점
          </td>
          <td style="border:1px solid #ddd; padding:12px">
            의과대학 의예과 (수료학점 72 이상)
          </td>
        </tr>
        <tr>
          <td style="border:1px solid #ddd; padding:12px; text-align:center">
            졸업학점이 150학점인 학부<br>최저 15학점, 최대 26학점
          </td>
          <td style="border:1px solid #ddd; padding:12px">
            의과대학 의학과
          </td>
        </tr>
      </tbody>
    </table>


    <ul style="margin:10px 0 0 18px; list-style:disc; color:#555; font-size:13px">
      <li>4학년 1학기에는 12학점 이상, 최종학기에는 1과목 이상 수강신청해야 합니다.</li>
      <li>직전학기 성적이 3.75 이상인 학생은 최대 3학점까지 초과 이수할 수 있습니다.</li>
      <li>장학생 선발은 직전학기 평점평균 2.0 이상을 취득하여야 하며, 대학별 기준학점 이상을 이수하여야 합니다. (학생지원팀 문의)</li>
    </ul>

    <!-- ▌ 변경/철회 -->
    <h4 style="margin:22px 0 8px">▌ 수강신청 변경 및 수강과목 철회</h4>
    <ul style="margin-left:18px; list-style:disc">
      <li>수강 신청과목은 정해진 기간 내 철회 가능하며, 철회 과목은 학점에 포함되지 않습니다.</li>
      <li>학기 중 2회까지 변경할 수 있으나, 철회로 수강인원이 폐강기준(교원 미만)이 되는 교과목은 수강철회를 불허합니다.</li>
      <li>철회 및 변경은 반드시 학사일정에 명시된 기간 내 진행해야 합니다.</li>
    </ul>

    <button class="btn-enroll" style="margin-top:16px; padding:10px 20px; background:#3F97F6; color:#fff; border:0; border-radius:6px; font-weight:700; cursor:pointer">
      수강신청하기
    </button>
  </div>
</div>
        </section>
</main>


<%@ include file="./_footer.jsp" %>
