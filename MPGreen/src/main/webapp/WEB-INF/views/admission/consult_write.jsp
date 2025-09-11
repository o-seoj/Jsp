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
          <h2 class="sbTitle">커뮤니티</h2>
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


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">자유게시판</h3>
        </div>

        <div class="notice-wrap">

          <form class="write-form" action="#" method="post" enctype="multipart/form-data">
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
              <label for="file">첨부파일</label>
              <input type="file" id="file" name="file">
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">등록</button>
              <a href="${pageContext.request.contextPath}/consult.do" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
<%@ include file="./_footer.jsp" %>