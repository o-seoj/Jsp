<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<body class="page-life gallery">

  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">대학생활</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">갤러리</a>
      </div>
    </div>

    <section id="container">

      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">대학생활</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/clubs.do ">학생회 소개</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/study.do" >동아리/스터디</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/cafeteria.do">식단안내</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/life/gallery.do" style="color:#fff">갤러리</a></li>
          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">갤러리</h3>
        </div>

        <div class="life-wrap life-gallery">
          <p class="gallery-intro">
            
          </p>

        <div class="gallery-grid">

          <a class="gallery-card" href="#">
            <img class="thumb" src="../images/gallary_sample1.jpg" alt="갤러리1">
            <div class="body">
              <div class="title">제40회 1995학년도 학위수여식</div>
              <div class="meta"><span>조회수 23</span><span>25.02.20</span></div>
            </div>
          </a>


          <a class="gallery-card" href="#">
            <img class="thumb" src="../images/gallary_sample2.jpg" alt="갤러리2">
            <div class="body">
              <div class="title">제40회 1995학년도 학위수여식</div>
              <div class="meta"><span>조회수 18</span><span>25.02.18</span></div>
            </div>
          </a>


          <a class="gallery-card" href="#">
            <img class="thumb" src="../images/gallary_sample3.jpg" alt="갤러리3">
            <div class="body">
              <div class="title">제40회 1995학년도 학위수여식</div>
              <div class="meta"><span>조회수 31</span><span>25.02.15</span></div>
            </div>
          </a>


          <a class="gallery-card" href="#">
            <img class="thumb" src="../images/gallary_sample4.png" alt="갤러리4">
            <div class="body">
              <div class="title">제40회 1995학년도 학위수여식</div>
              <div class="meta"><span>조회수 27</span><span>25.02.12</span></div>
            </div>
          </a>


          <a class="gallery-card" href="#">
            <img class="thumb" src="../images/gallary_sample5.jpg" alt="갤러리5">
            <div class="body">
              <div class="title">제40회 1995학년도 학위수여식</div>
              <div class="meta"><span>조회수 42</span><span>25.02.10</span></div>
            </div>
          </a>
        </div>

    </section>
  </main>
<%@ include file="./_footer.jsp" %>
</body>
