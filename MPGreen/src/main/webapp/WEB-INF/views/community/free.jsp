<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">자유게시판</a>
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
			<li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/free.do"  style="color:#fff">자유게시판</a></li>
			<li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/qna.do">질문과 답변</a></li>
			<li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/data.do">자료실</a></li>

          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">자유게시판</h3>
        </div>

        <div class="notice-wrap">

          <form class="notice-toolbar" action="#" method="get">
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">제목</option>
              <option value="writer">작성자</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" />
            <button type="submit" class="notice-btn">검색</button>
          </form>


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
              <tr>
                <td class="col-no">3</td>
                <td class="col-title">
                  2024 하반기 도서관 이용자 만족도 조사(추첨을 통해 모바일 쿠폰 증정)
                </td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
              <tr>
                <td class="col-no">2</td>
                <td class="col-title">
                  2024 하반기 도서관 이용자 만족도 조사(추첨을 통해 모바일 쿠폰 증정)
                </td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
              <tr>
                <td class="col-no">1</td>
                <td class="col-title">
                  2024 하반기 도서관 이용자 만족도 조사(추첨을 통해 모바일 쿠폰 증정)
                </td>
                <td>홍길동</td>
                <td>24.04.09</td>
                <td>160</td>
              </tr>
            </tbody>
          </table>

				<div class="page">
			    <div class="prev">
			        <a href="#" class="paging">
			            <img src="../images/btn-first-page.png">
			        </a>
			        <a href="#" class="paging">
			            <img src="../images/btn-prev-page.png">
			        </a>
			    </div>
			    <div class="pagenumber">
			        <a href="#" class="active">1</a>
			        <a href="#">2</a>
			        <a href="#">3</a>
			    </div>
			    <div class="last">
			        <a href="#" class="paging">
			            <img src="../images/btn-next-page.png">
			        </a>
			        <a href="#" class="paging">
			            <img src="../images/btn-last-page.png">
			        </a>
			    </div>
			</div>
	              <a href="${pageContext.request.contextPath}/community/free_write.do" class="btn-write">글쓰기</a>
	          </div>
	        </div>
	    </section>
  </main>

  <%@ include file="./_footer.jsp" %>
   </body>