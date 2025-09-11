<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community view-page">
  <main>
    <!-- 상단 경로 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/jobs.do" class="sidebar-text">취업정보</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">채용공고 보기</a>
      </div>
    </div>

    <section id="container">
      <!-- 좌측 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/news.do">뉴스 및 칼럼</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/jobs.do" style="color:#fff">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <h2 class="view-title">취업정보</h2>

        <div class="view-content">
          <table class="view-table">
            <tr>
              <th>상태</th>
              <td>
                <span class="badge type-open">모집중</span>
                <!-- <span class="badge type-closed">마감</span> -->
              </td>
            </tr>
            <tr>
              <th>업체명</th>
              <td>(주)삼성전자</td>
            </tr>
            <tr>
              <th>채용정보</th>
              <td>
                2025 상반기 신입사원 채용<br>
                모집분야: 개발 / 기획 / 마케팅<br>
                근무지: 서울, 수원
              </td>
            </tr>
            <tr>
              <th>마감일자</th>
              <td>2024.04.09 12:00</td>
            </tr>
          </table>
        </div>

        <!-- 하단 버튼 -->
        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/jobs.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/jobs_edit.do" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/jobs_delete.do" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
