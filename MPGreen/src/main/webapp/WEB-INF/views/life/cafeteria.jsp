<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<body class="page-life">

  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">대학생활</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">식단안내</a>
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
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/life/cafeteria.do" style="color:#fff">식단안내</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/life/gallery.do">갤러리</a></li>
          </ul>
        </div>
      </div>


      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">식단안내</h3>
        </div>

        <div class="life-wrap life-meal">

          <div class="meal-header">
            <button type="button" class="meal-nav prev" aria-label="이전 주">&#8249;</button>
            <div class="meal-range">2025.03.10 ~ 2025.03.14</div>
            <button type="button" class="meal-nav next" aria-label="다음 주">&#8250;</button>
          </div>


          <table class="meal-table">
            <colgroup>
              <col style="width:120px">
              <col>
              <col>
              <col>
              <col>
              <col>
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>구분</th>
                <th>2025.3.10(월)</th>
                <th>2025.3.11(화)</th>
                <th>2025.3.12(수)</th>
                <th>2025.3.13(목)</th>
                <th>2025.3.14(금)</th>
                <th>2025.3.15(토)</th>
              </tr>
            </thead>
            <tbody>

              <tr>
                <th class="meal-type">조식</th>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
              </tr>


              <tr>
                <th class="meal-type">중식</th>
                <td class="menu">
                  <span class="price-badge">정식 5,500원</span>
                  <ul>
                    <li>백미밥</li>
                    <li>바지락미역국</li>
                    <li>닭안심매콤조림</li>
                    <li>야끼우동</li>
                    <li>두부강정</li>
                    <li>상추겉절이</li>
                    <li>포기김치</li>
                  </ul>
                </td>
                <td class="menu">
                  <span class="price-badge">정식 5,500원</span>
                  <ul>
                    <li>백미밥</li>
                    <li>바지락미역국</li>
                    <li>닭안심매콤조림</li>
                    <li>야끼우동</li>
                    <li>두부강정</li>
                    <li>상추겉절이</li>
                    <li>포기김치</li>
                  </ul>
                </td>
                <td class="menu">
                  <span class="price-badge">정식 5,500원</span>
                  <ul>
                    <li>백미밥</li>
                    <li>바지락미역국</li>
                    <li>닭안심매콤조림</li>
                    <li>야끼우동</li>
                    <li>두부강정</li>
                    <li>상추겉절이</li>
                    <li>포기김치</li>
                  </ul>
                </td>
                <td class="menu">
                  <span class="price-badge">정식 5,500원</span>
                  <ul>
                    <li>백미밥</li>
                    <li>바지락미역국</li>
                    <li>닭안심매콤조림</li>
                    <li>야끼우동</li>
                    <li>두부강정</li>
                    <li>상추겉절이</li>
                    <li>포기김치</li>
                  </ul>
                </td>
                <td class="menu">
                  <span class="price-badge">정식 5,500원</span>
                  <ul>
                    <li>백미밥</li>
                    <li>바지락미역국</li>
                    <li>닭안심매콤조림</li>
                    <li>야끼우동</li>
                    <li>두부강정</li>
                    <li>상추겉절이</li>
                    <li>포기김치</li>
                  </ul>
                </td>
                <td class="menu center mute">미운영</td>
              </tr>


              <tr>
                <th class="meal-type">석식</th>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
                <td class="center mute">미운영</td>
              </tr>
            </tbody>
          </table>

          <p class="meal-note">※ 항상 그린식당을 이용해 주셔서 감사합니다.</p>
        </div>
      </div>
    </section>
  </main>
<%@ include file="./_footer.jsp" %>
</body>
