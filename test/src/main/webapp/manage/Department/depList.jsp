<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 학과 목록</title>
    
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
                <h4>학과 목록</h4>
                    <div class="breadcrumb">
                        <span>대학 및 학과</span>
                        <span class="end">학과 목록</span>
                    </div>
            </article>

            <div class="NONE_con_1f">
                <!-- 검색창 -->
                <div class="search">
                    <div class="input-container">
                        <input type="text" class="search-condition" placeholder="검색조건">
                    </div>
                    <div class="input-container">
                        <input type="text" class="search-input" placeholder="키워드 입력">
                    </div>
                    <div class="searchbtn">
                        <a href="#">검색</a>
                    </div>
                </div>

                <!-- 테이블 -->
                <table>
                    <tr>
                        <th>학과번호</th>
                        <th>단과대학</th>
                        <th>학과</th>
                        <th>학과장</th>
                        <th>학과 연락처</th>
                        <th>소속 교수 수</th>
                        <th>소속 학생 수</th>
                        <th>개설 강의 수</th>
                    </tr>
                
                    <tr>
                        <td>10</td>
                        <td>인문사회대학</td>
                        <td>국문학과</td>
                        <td>김국어</td>
                        <td>051-512-1010</td>
                        <td>23</td>
                        <td>322</td>
                        <td>42</td>
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