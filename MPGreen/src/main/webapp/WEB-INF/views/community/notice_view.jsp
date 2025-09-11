<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="./_header.jsp" %>

<body class="page-community view-page">
  <main>
    <!-- 경로 표시 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice.do" class="sidebar-text">공지사항</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">게시글 보기</a>
      </div>
    </div>

    <section id="container">
      <!-- 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do" style="color:#fff">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/news.do">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/jobs.do">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 -->
      <div class="view-wrap">
        <!-- 글 헤더 -->
        <div class="view-header">
          <h2 class="view-title">${board.title}</h2>
          <div class="view-meta">
            <span>작성자: ${board.writerId}</span>
            <span>작성일: ${board.created_at}</span>
            <span>조회수: ${board.viewCount}</span>
          </div>
        </div>

        <!-- 글 내용 -->
        <div class="view-content">
          <p>${board.content}</p>
        </div>

        <!-- 첨부파일 (나중에 구현) -->
        <%-- 
        <c:if test="${not empty board.files}">
          <div class="view-file">
            <strong>첨부파일:</strong>
            <c:forEach var="file" items="${board.files}">
              <p>
                <a href="${pageContext.request.contextPath}/community/file/download.do?fileId=${file.fileId}">
                  ${file.fileName}
                </a> (${file.fileSize} bytes)
              </p>
            </c:forEach>
          </div>
        </c:if>
        --%>

        <!-- 댓글 목록 -->
        <div class="comment-section">
          <h4>댓글</h4>
          <c:if test="${empty comments}">
            <p class="empty">등록된 댓글이 없습니다.</p>
          </c:if>
          <ul class="comment-list">
            <c:forEach var="comment" items="${comments}">
              <li>
                <div class="comment-meta">
                  <span class="comment-writer">${comment.writerId}</span>
                  <span class="comment-date">${comment.created_at}</span>
                </div>
                <div class="comment-content">
                  ${comment.content}
                </div>
                <div class="comment-actions">
                  <a href="${pageContext.request.contextPath}/community/comment_delete.do?commentId=${comment.commentId}&boardId=${board.boardId}" class="remove">삭제</a>
                </div>
              </li>
            </c:forEach>
          </ul>
        </div>

        <!-- 댓글 작성 -->
        <div class="comment-form">
          <form action="${pageContext.request.contextPath}/community/commentWrite.do" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}">
            <input type="hidden" name="writerId" value="admin"> <%-- 로그인 붙이기 전까지 테스트용 --%>
            <textarea name="content" rows="3" placeholder="댓글을 입력하세요" required></textarea>
            <button type="submit" class="btn-submit">댓글 등록</button>
          </form>
        </div>

        <!-- 액션 버튼 -->
        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/notice.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/notice_edit.do?boardId=${board.boardId}" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/notice_delete.do?boardId=${board.boardId}" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
