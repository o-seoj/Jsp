<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/academic/_header.jsp"%>


<main>
<div class="top-bar">
    <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt="next">
        <a href="#" class="sidebar-text">학사안내</a>
        <img src="../images/bg-path-arrow.png" alt="next">
        <a href="#" class="sidebar-text">성적</a>
    </div>
</div>

    <section id="container">
    <section id="container">
      <!-- 좌측 사이드바 -->
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
            <h3 class="buText">성적</h3>
            </div>
<div class="boardLower">

  <!-- 시험 -->
  <h4>▌시험</h4>
  <p class="sub-title">- 시험은 정기시험, 비정기시험, 추가시험, 재시험 등으로 구분</p>
  <ul>
    <li>정기시험 : 중간시험과 학기말시험으로 나누며 중간시험은 학기 당 수업일수 2분의 1이 되는 주에 실시하고, 학기말시험은 학기의 최종 주에 실시</li>
    <li>비정기시험 : 과제시험, 세미나 등 지속적인 학습활동을 평가하는 시험으로 담당교수의 책임 하에 실시</li>
    <li>추가시험 : 질병 또는 부득이한 사정으로 정기시험에 응시할 수 없는 학생은 사유와 증빙서류를 첨부하여 추가시험신청서를 제출</li>
  </ul>

  <!-- 시험 부정행위자의 처리 -->
  <h4>▌ 시험 부정행위자의 처리</h4>
  <ul>
    <li>시험 중 부정행위가 적발되면 감독교수는 그 행위내용을 시험지 상단에 기록하고 날인한 후 즉시 총장에게 보고</li>
    <li>시험 부정행위자에 대하여는 다음의 내용에 따라 재적 또는 무기정학 처분</li>
    <li>시험에 대리로 응시하거나 대리응시를 부탁한 경우</li>
    <li>시험부정행위의 다른 사례들을 모아서 보고서 제출</li>
    <li>부정행위자의 성적표에는 부정행위로 본 사실이 있는 학생임을 기록하여 기타 부정행위할 때 참조</li>
  </ul>

  <!-- 성적 -->
  <h4>▌ 성적</h4>
  <p class="sub-title">- 평가내용</p>
  <ul>
    <li>성적평가는 각 교과목의 시험성적, 과제평가, 출석사항 및 학습태도 등을 종합하여 평가</li>
    <li>출석 및 학습태도 10~20%, 정기시험 50~70%, 비정기시험 및 과제 20~30%를 원칙으로 함</li>
  </ul>

  <!-- 등급 표 -->
  <h4>▌ 등급</h4>
  <table>
    <thead>
      <tr>
        <th>등급</th>
        <th>평점</th>
        <th>백분위 기준점수</th>
        <th>비고</th>
      </tr>
    </thead>
    <tbody>
      <tr><td>A+</td><td>4.5</td><td>99</td><td></td></tr>
      <tr><td>A</td><td>4.0</td><td>94</td><td></td></tr>
      <tr><td>B+</td><td>3.5</td><td>89</td><td></td></tr>
      <tr><td>B</td><td>3.0</td><td>84</td><td></td></tr>
      <tr><td>C+</td><td>2.5</td><td>79</td><td></td></tr>
      <tr><td>C</td><td>2.0</td><td>74</td><td></td></tr>
      <tr><td>D+</td><td>1.5</td><td>69</td><td></td></tr>
      <tr><td>D</td><td>1.0</td><td>64</td><td></td></tr>
      <tr><td>F</td><td>0</td><td>59</td><td></td></tr>
    </tbody>
  </table>

  <p style="margin-top:8px; font-size:12px; color:#666;">
    ※ 이수한 교과목의 성적이 D0 이상 또는 P일 경우는 학점을 취득한 것으로 인정
  </p>

</div>




    </section>

  </main>
<%@ include file="./_footer.jsp" %>



