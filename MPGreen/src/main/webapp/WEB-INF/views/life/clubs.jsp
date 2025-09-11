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
        <a href="#" class="sidebar-text">학생회 소개</a>
      </div>
    </div>

    <section id="container">

      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">대학생활</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/life/clubs.do"  style="color:#fff">학생회 소개</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/study.do">동아리/스터디</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/cafeteria.do">식단안내</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/gallery.do">갤러리</a></li>
          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">학생회 소개</h3>
        </div>

        <div class="life-wrap">

          <div class="life-brief">
            그린대학교 총학생회는 학생들의 권익 보호와 더 나은 캠퍼스 문화를 위해
            소통·연대·실행을 핵심가치로 활동합니다. 학사·복지·문화·소통 4개 본부를 중심으로
            다양한 사업을 추진하고 있습니다.
          </div>


          <table class="life-table">
            <colgroup>
              <col class="col-head">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <th>조직 구성</th>
                <td>총학생회장단, 기획국, 대외협력국, 문화국, 복지국, 홍보국, 감사위원회</td>
              </tr>
              <tr>
                <th>주요 업무</th>
                <td>학생 의견 수렴 및 학교와의 협의, 축제·행사 주관, 장학/복지 정책 제안, 동아리·학회 지원</td>
              </tr>
              <tr>
                <th>연락처</th>
                <td>학생회실 1층 101호 · 051-123-4567 · council@green.ac.kr</td>
              </tr>
              <tr>
                <th>운영 시간</th>
                <td>평일 10:00 ~ 17:00 (점심 12:00 ~ 13:00)</td>
              </tr>
            </tbody>
          </table>


          <div class="life-cards">
            <div class="life-card">
              <h4>총학생회장</h4>
              <p>학생 대표로서 전반적 의사결정과 대내외 협의를 총괄합니다.</p>
            </div>
            <div class="life-card">
              <h4>부학생회장</h4>
              <p>각 본부 간 조정 및 사업 운영 지원을 담당합니다.</p>
            </div>
            <div class="life-card">
              <h4>기획국</h4>
              <p>연간 사업 기획·예산 편성·성과 관리.</p>
            </div>
            <div class="life-card">
              <h4>복지국</h4>
              <p>학생 복지 제도 개선 및 편의시설 개선 제안.</p>
            </div>
          </div>


          <div class="life-note">
            ※ 상세 조직도/사업 계획서는 추후 공지에서 안내됩니다.
          </div>
        </div>
      </div>
    </section>
  </main>
<%@ include file="./_footer.jsp" %>
</body>
  