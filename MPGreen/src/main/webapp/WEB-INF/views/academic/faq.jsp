<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/academic/_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 질문 클릭 이벤트 JS -->
<script>
document.addEventListener("DOMContentLoaded", function() {
    const answers = document.querySelectorAll(".answer-row");
    answers.forEach(answer => {
        answer.style.display = "none";
    });

    const questions = document.querySelectorAll(".question-row .row-text");
    questions.forEach(function(q) {
        q.addEventListener("click", function(e) {
            e.preventDefault();
            const answerId = this.getAttribute("data-answer-id");
            const answerRow = document.getElementById("answer-" + answerId);

            if (answerRow.style.display === "flex") {
                answerRow.style.display = "none";
            } else {
                answerRow.style.display = "flex";
            }
        });
    });
});
</script>
    <main>

        <div class="top-bar">
            <div class="top-bar-content">
                <img src="/MPGreen/images/ico-home.png" alt="홈">
                <img src="/MPGreen/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">대학소개</a>
                <img src="/test/images/bg-path-arrow.png" alt="next">
                <a href="#" class="sidebar-text">총장 인사말</a>
            </div>
        </div>
        
    <section id="container"> 
        <div class="sidebar">
            <div class="sidebarHeader">
                <h2 class="sbTitle">학사안내</h2>
            </div>
            <div class="sidebarMenu">
                <ul class="list">
                    <li class="item">
                        <a href="/MPGreen/academic/notice.do" class="itemText">공지사항</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/schedule.do" class="itemText">학사일정</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/enroll.do" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/grade.do" class="itemText">성적</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/graduation.do" class="itemText">수료 및 졸업</a>
                    </li>
                    <li class="item">
                        <a href="/MPGreen/academic/faq.do" class="itemText">자주 묻는 질문</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->

            <div class="boardUpper">
                <h3 class="buText">자주 묻는 질문</h3>
            </div>
                <div class="boardLower"> <!--본문(내용 영역)-->
					                   
					<c:forEach var="cate" begin="1" end="3">
					    <div class="text-with-icon">
					        <img src="/MPGreen/images/bullet-h4.png" alt="icon" class="icon">
					        <span>
					            <c:choose>
					                <c:when test="${cate == 1}">휴·복학 관련</c:when>
					                <c:when test="${cate == 2}">교과 및 학사 관련</c:when>
					                <c:when test="${cate == 3}">수강신청 관련</c:when>
					            </c:choose>
					        </span>
					    </div>
					
					    <div class="table-container">
					        <c:forEach var="faq" items="${faqList}">
					            <c:if test="${faq.category == cate}">
					                <div class="table-row question-row">
					                    <div class="row-content">
					                        <div class="row-box">Q</div>
					                        <a href="#" class="row-text" data-answer-id="${cate}-${faq.number}">${faq.title}</a>
					                    </div>
					                </div>
					
					                <div class="table-row answer-row" id="answer-${cate}-${faq.number}">
					                    <div class="row-content">
					                        <div class="row-box">A</div>
					                        <span class="row-text">${faq.content}</span>
					                    </div>
					                </div>
					            </c:if>
					        </c:forEach>
					    </div>
					</c:forEach>								

                </div>


            </div>

        </div>
    </section>
  </main>
  
  
<%@ include file="/WEB-INF/views/academic/_footer.jsp" %>