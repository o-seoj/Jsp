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
        <a href="${pageContext.request.contextPath}/community/qna.do" class="sidebar-text">질문과 답변</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">질문 보기</a>
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
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/jobs.do">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do" style="color:#fff">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <div class="view-header">
          <h2 class="view-title">취업 진로 상담 문의드립니다.</h2>
          <div class="view-meta">
            <span>작성자: 홍길동</span>
            <span>작성일: 2024.04.09</span>
            <span>조회수: 123</span>
            <span class="qna-status wait">답변대기</span>
            <!-- <span class="qna-status done">답변완료</span> -->
          </div>
        </div>

        <div class="view-content">
          <p>
            안녕하세요, 졸업 예정자인데 취업 방향에 대해 상담을 받고 싶습니다.<br>
            지원 가능한 프로그램이나 진로 관련 자료가 있을까요?
          </p>
        </div>

        <!-- 답변 영역 -->
        <div class="answer-section">
          <h4>답변</h4>
          <div class="answer-content">
            아직 답변이 등록되지 않았습니다.
            <!-- 답변이 있을 경우 -->
            <!-- <p>안녕하세요, 취업지원실입니다. 진로상담은 매주 월/수/금 운영되며 예약 가능합니다.</p> -->
          </div>
        </div>

        <!-- 하단 버튼 -->
        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/qna.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/qna_edit.do" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/qna_delete.do" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
