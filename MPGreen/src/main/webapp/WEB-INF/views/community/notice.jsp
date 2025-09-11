<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>
   <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/notice.do" class="sidebar-text">공지사항</a>
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
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">공지사항</h3>
        </div>

        <div class="notice-wrap">

          <!-- 검색 -->
          <form class="notice-toolbar" action="${pageContext.request.contextPath}/community/notice.do" method="get">
            <select class="notice-field" name="field">
              <option value="title">제목</option>
              <option value="writer">작성자</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 목록 테이블 -->
          <table class="notice-table">
            <colgroup>
              <col class="col-no">
              <col class="col-title">
              <col class="col-writer">
              <col class="col-date">
              <col class="col-views">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-title">제목</th>
                <th class="col-writer">작성자</th>
                <th class="col-date">작성일</th>
                <th class="col-views">조회</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="board" items="${dtoList}" varStatus="status">
                <tr>
                  <td class="col-no">${pagenationDTO.currentPageStartNum - status.index}</td>
					<td class="col-title">
					  <div class="title-wrap">
					    <a href="${pageContext.request.contextPath}/community/notice_view.do?boardId=${board.boardId}">
					      ${board.title}
					      <%-- 댓글 수는 나중에 DTO에 필드 추가하고 DAO에서 조회할 때 사용 --%>
					      <%-- <c:if test="${board.commentCount > 0}">[${board.commentCount}]</c:if> --%>
					    </a>
					  </div>
					</td>
					<td>${board.writerId}</td> <!-- writerName 대신 -->
					<td>${board.created_at}</td> <!-- createdAt → created_at -->
					<td>${board.viewCount}</td>
                </tr>
              </c:forEach>

              <c:if test="${empty dtoList}">
                <tr>
                  <td colspan="5">등록된 공지사항이 없습니다.</td>
                </tr>
              </c:if>
            </tbody>
          </table>

          <!-- 페이지네이션 -->
          <div class="page">
            <c:if test="${pagenationDTO.pageGroupStart > 1}">
              <a href="?pg=${pagenationDTO.pageGroupStart-1}" class="prev">이전</a>
            </c:if>

            <c:forEach var="num" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
              <a href="?pg=${num}" class="pagenumber ${pagenationDTO.currentPage == num ? 'active' : ''}">${num}</a>
            </c:forEach>

            <c:if test="${pagenationDTO.pageGroupEnd < pagenationDTO.lastPageNum}">
              <a href="?pg=${pagenationDTO.pageGroupEnd+1}" class="next">다음</a>
            </c:if>
          </div>

          <!-- 글쓰기 버튼 -->
          <a href="${pageContext.request.contextPath}/community/notice_write.do" class="btn-write">글쓰기</a>
        </div>
      </div>
    </section>
  </main>
<%@ include file="./_footer.jsp" %>
</body>
