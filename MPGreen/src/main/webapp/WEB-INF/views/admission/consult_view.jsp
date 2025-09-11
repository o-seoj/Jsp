<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community view-page">
  <main>
     <div class="top-bar">
        <div class="top-bar-content">
            <img src="../images/ico-home.png" alt="홈">
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">입학안내</a>
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="${pageContext.request.contextPath}/admission/consult.do" class="sidebar-text">입학상담</a>
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="./consult_write.html" class="sidebar-text">글쓰기</a>
        </div>
    </div>


    <section id="container">
      <!-- 좌측 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">입학안내</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> <!--사이드바 리스트 요소-->
                        <a href="${pageContext.request.contextPath}/admission/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/admission/early.do" class="itemText">수시모집</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/admission/regular.do" class="itemText">정시모집</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/admission/transfer.do" class="itemText">편입학</a>
                    </li>
                    <li class="item">
                        <a href="${pageContext.request.contextPath}/admission/consult.do" class="itemText">입학상담</a>
                    </li>
                </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <div class="view-header">
          <h2 class="view-title">입학상담 글 제목 예시</h2>
          <div class="view-meta">
            <span>작성자: 홍길동</span>
            <span>작성일: 2024.04.09</span>
            <span>조회수: 120</span>
          </div>
        </div>

        <div class="view-content">
          <p>
            입학상담 글 내용이 여기에 표시됩니다.<br>
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
                입학상담ㄴ첫 댓글입니다!
              </div>
            </li>
          </ul>
        </div>

        <div class="comment-form">
          <form action="${pageContext.request.contextPath}/admission/consult_write.do" method="post">
            <input type="text" name="writer" placeholder="작성자" required>
            <textarea name="content" rows="3" placeholder="댓글을 입력하세요" required></textarea>
            <button type="submit" class="btn-submit">댓글 등록</button>
          </form>
        </div>

        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/admission/consult.do" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/admission/consult_edit.do" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/admission/consult_delete.do" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
