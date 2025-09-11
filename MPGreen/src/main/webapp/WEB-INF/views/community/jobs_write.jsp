<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>


<body class="page-community jobs-write">

  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="./jobs.html" class="sidebar-text">취업정보</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="./jobs_write.html" class="sidebar-text">글쓰기</a>
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
			<li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/jobs.do" style="color:#fff">취업정보</a></li>
			<li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do">자유게시판</a></li>
			<li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
			<li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>

          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">취업정보</h3>
        </div>

        <div class="notice-wrap">

          <form class="write-form" action="#" method="post">
            

            <div class="form-row">
              <label for="status">상태</label>
              <select id="status" name="status" required>
                <option value="open">모집중</option>
                <option value="closed">마감</option>
              </select>
            </div>


            <div class="form-row">
              <label for="company">업체명</label>
              <input type="text" id="company" name="company" required>
            </div>


            <div class="form-row">
              <label for="jobinfo">채용정보</label>
              <textarea id="jobinfo" name="jobinfo" rows="6" required></textarea>
            </div>


            <div class="form-row">
              <label for="deadline">마감일자</label>
              <input type="date" id="deadline" name="deadline" required>
            </div>


            <div class="form-actions">
              <button type="submit" class="btn-submit">등록</button>
              <a href="./jobs.html" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>