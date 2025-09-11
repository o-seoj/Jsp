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
        <a href="${pageContext.request.contextPath}/community/free.do" class="sidebar-text">자유게시판</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">게시글 보기</a>
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
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do" style="color:#fff">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <div class="view-header">
          <h2 class="view-title">자유게시판 글 제목 예시</h2>
          <div class="view-meta">
            <span>작성자: 홍길동</span>
            <span>작성일: 2024.04.09</span>
            <span>조회수: 120</span>
          </div>
        </div>

        <div class="view-content">
          <p>
            자유게시판 글 내용이 여기에 표시됩니다.<br>
            이미지, 링크, 텍스트 등 자유롭게 작성된 게시글 내용이 출력됩니다.
          </p>
        </div>

        <div class="comment-section">
          <h4>댓글</h4>
          <ul class="comment-list">
            <li>
              <div class="comment-meta">
                <span class="comment-writer">사용자A</span>
                <span class="comment-date">2024.04.09 13:00</span>
              </div>
              <div class="comment-content">
                자유게시판 첫 댓글입니다!
              </div>
            </li>
          </ul>
        </div>

        <div class="comment-form">
          <form action="${pageContext.request.contextPath}/community/commentWrite.do" method="post">
            <input type="text" name="writer" placeholder="작성자" required>
            <textarea name="content" rows="3" placeholder="댓글을 입력하세요" required></textarea>
            <button type="submit" class="btn-submit">댓글 등록</button>
          </form>
        </div>

        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/free.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/free_edit.do" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/free_delete.do" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
