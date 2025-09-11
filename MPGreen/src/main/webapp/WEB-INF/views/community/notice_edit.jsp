<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community notice-edit">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <a href="${pageContext.request.contextPath}/community/notice.do" class="sidebar-text">공지사항</a>
        <span> &gt; 수정하기</span>
      </div>
    </div>

    <section id="container">
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">수정</h3>
        </div>

        <div class="notice-wrap">
          <form action="${pageContext.request.contextPath}/community/notice_edit.do" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}"/>

            <div class="form-row">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" value="${board.title}" required>
            </div>

            <div class="form-row">
              <label for="content">내용</label>
              <textarea id="content" name="content" rows="10" required>${board.content}</textarea>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">수정완료</button>
              <a href="${pageContext.request.contextPath}/community/notice_view.do?boardId=${board.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
