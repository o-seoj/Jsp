<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community data view-page">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/data.do" class="sidebar-text">자료실</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/data_view.do" class="sidebar-text">게시글 보기</a>
      </div>
    </div>

    <section id="container">
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do" >공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/news.do">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/jobs.do">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do" style="color:#fff" >자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="view-wrap">
        <div class="view-header">
          <h2 class="view-title">2025학년도 1학기 장학금 신청 안내</h2>
          <div class="view-meta">
            <span>작성자: 학사지원실</span>
            <span>작성일: 2024.04.09</span>
            <span>조회수: 120</span>
          </div>
        </div>

        <div class="view-content">
          <p>
            장학금 신청 안내 내용이 여기에 표시됩니다.<br>
            첨부파일이나 이미지가 있다면 이 영역에 같이 보여줄 수 있습니다.
          </p>
        </div>

        <div class="view-file">
          <strong>첨부파일:</strong> 
          <a href="#">scholarship_form.pdf</a>
        </div>

        <div class="comment-section">
          <h4>댓글</h4>
          <ul class="comment-list">
            <li>
              <div class="comment-meta">
                <span class="comment-writer">홍길동</span>
                <span class="comment-date">2024.04.09 13:00</span>
              </div>
              <div class="comment-content">
                신청 방법이 자세히 나와있어 유용합니다. 감사합니다!
              </div>
            </li>
            <li>
              <div class="comment-meta">
                <span class="comment-writer">이순신</span>
                <span class="comment-date">2024.04.09 14:30</span>
              </div>
              <div class="comment-content">
                서류 제출 기한이 언제까지인지 추가 안내 부탁드립니다.
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
          <a href="${pageContext.request.contextPath}/community/data.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/edit.do" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/delete.do" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

 <%@ include file="./_footer.jsp" %>

