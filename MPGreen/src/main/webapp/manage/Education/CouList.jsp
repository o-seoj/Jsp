<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 강의목록</title>
    
<%@ include file="/manage/_header.jsp" %>


<body>
    <main>
        <!-- ■■■ 사이드바 시작 ■■■ -->
        <%@ include file="/manage/_sidebar.jsp" %>
        <!-- □□□ 사이드바 끝 □□□ -->

        <!-- ■■■ 메인컨텐츠 시작■■■-->
        <div class="managemain">
            <!-- 컨텐츠_최상단 -->
            <article class="top">
                <h4>강의 목록</h4>
                <div class="breadcrumb">
                    <span>학사관리</span>
                    <span class="end">강의목록</span>
                </div>
            </article>

            <div class="NONE_con_1f">
                <!-- 검색창 -->
                <div class="search">
                    <div class="input-container">
                        <input type="text" class="search-condition" placeholder="검색조건">
                    </div>
                    <div class="input-container">
                        <input type="text" class="search-input">
                    </div>
                    <div class="searchbtn">
                        <a href="#">검색</a>
                    </div>
                </div>

                <!-- 테이블 -->
                <table>
                    <tr>
                        <th>과목코드</th>
                        <th>학년</th>
                        <th>학과</th>
                        <th>구분</th>
                        <th>과목명</th>
                        <th>교수</th>
                        <th>학점</th>
                        <th>수업시간</th>
                        <th>강의실</th>
                        <th>최대 수강 인원</th>
                    </tr>
                
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                                    
                    <tr>
                        <td>3025112</td>
                        <td>컴퓨터공학과</td>
                        <td>1</td>
                        <td>전공선택</td>
                        <td>프로그래밍 개론</td>
                        <td>김컴공</td>
                        <td>3</td>
                        <td>월,수 10:00 ~ 12:00</td>
                        <td>컴퓨터실</td>
                        <td>30</td>
                    </tr>
                    
                </table>
                    
                <!-- 하단 페이지네이션(Pagination)-->
                <article class="pagebtn">
                    <a href="#"><img src="/MPGreen/images/btn-first-page.png" alt="Go to First"></a>
                    <a href="#" class="pagebtn_R"><img src="/MPGreen/images/btn-prev-page.png" alt="Previous"></a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#" class="pagebtn_L"><img src="/MPGreen/images/btn-next-page.png" alt="Next"></a>
                    <a href="#"><img src="/MPGreen/images/btn-last-page.png" alt="Go to Last"></a>
                </article>
            </div> 
        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/manage/_footer.jsp" %>