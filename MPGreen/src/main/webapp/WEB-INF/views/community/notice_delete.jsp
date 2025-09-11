<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community notice-delete">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice.do" class="sidebar-text">공지사항</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice_delete.do?boardId=${param.boardId}" class="sidebar-text">글삭제</a>
      </div>
    </div>

    <section id="container">
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

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">공지사항</h3>
        </div>

        <div class="notice-wrap">
          <form class="delete-form" action="${pageContext.request.contextPath}/community/notice_delete.do" method="post">
            <input type="hidden" name="boardId" value="${param.boardId}"/>

            <div class="form-row">
              <p>정말로 <strong>이 게시글</strong>을 삭제하시겠습니까?</p>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">삭제</button>
              <a href="${pageContext.request.contextPath}/community/notice_view.do?boardId=${param.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>
