<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community qna-write">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/qna.do" class="sidebar-text">질문과 답변</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/qna_write.do" class="sidebar-text">글쓰기</a>
      </div>
    </div>

    <section id="container">
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

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">질문과 답변</h3>
        </div>

        <div class="notice-wrap">
          <form class="write-form" action="${pageContext.request.contextPath}/community/qna_write.do" method="post">
            <div class="form-row">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" required>
            </div>

            <div class="form-row">
              <label for="writer">작성자</label>
              <input type="text" id="writer" name="writer" required>
            </div>

            <div class="form-row">
              <label for="content">내용</label>
              <textarea id="content" name="content" rows="10" required></textarea>
            </div>

            <div class="form-row">
              <label>
                <input type="checkbox" name="secret"> 비밀글로 작성하기
              </label>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">등록</button>
              <a href="${pageContext.request.contextPath}/community/qna.do" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

