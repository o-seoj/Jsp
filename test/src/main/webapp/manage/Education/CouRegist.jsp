<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 강의등록</title>
    
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
                <h4>강의 등록</h4>
                <div class="breadcrumb">
                    <span>학사관리</span>
                    <span class="end">강의목록</span>
                </div>
            </article>

            <!-- 기본정보 입력 -->
            <form class="register" >
                    <div>
                        <h4><img src="/MPGreen/images/bullet-h4.png" alt="h4">기본정보 입력</h4>
                    </div>

                    <!-- 테이블 시작 -->
                    <table class="basic">
                            <tr>
                                <th>과목코드</th>
                                <td>
                                    <p>학과 코드+연도+학기+순번 조합 자동생성</p>
                                </td>
                                
                                <th>개설학과</th>
                                <td>
                                    <select onchange="updateDepartments()" id="collegeSelect">
                                        <option value="">인문사회대학</option>
                                        <option >...</option>
                                    </select>
                                    <select id="departmentSelect" name="departmentName">
                                        <option value="">국어국문학과</option>
                                        <option >...</option>
                                    </select>
                                    
                                </td>
                            </tr>
                            <tr>
                                <th>개설학년</th>
                                <td>
                                    <div>
                                        <select>
                                            <option>1학년</option>
                                            <option>2학년</option>
                                            <option>3학년</option>
                                            <option>4학년</option>
                                        </select>
                                        <select>
                                            <option>1학기</option>
                                            <option>2학기</option>
                                        </select>
                                    </div>
                                </td>

                                <th>학점</th>
                                <td>
                                    <select>
                                        <option>1학점</option>
                                        <option>2학점</option>
                                        <option>3학점</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>이수구분</th>
                                <td>
                                    <select>
                                        <option>전공 선택</option>
                                        <option>전공 필수</option>
                                        <option>교양 선택</option>
                                        <option>교양 필수</option>
                                        
                                    </select>
                                </td>
                                <th>담당교수</th>
                                <td colspan="3"><input placeholder="교수명 입력"></td>
                            </tr>
                            <tr>
                                <th>강의명</th>
                                <td colspan="3"><input placeholder="강좌명 입력"></td>
                            </tr>
                            <tr>
                                <th>강의 설명</th>
                                    <td colspan="3">
                                        <!--<input type="text" name="lec_info" class="explain" placeholder="강의 개요 및 목표, 학습 내용 등">-->
                                        <textarea class="explain" placeholder="강의 개요 및 목표, 학습 내용 등"></textarea>
                                    </td>
                            </tr>
                        </table>
                    

<!-- 수업정보 입력 -->
                    <div class="stdinfo">
                        <h4><img src="/MPGreen/images/bullet-h4.png" alt="h4">수업정보 입력</h4>
                        <table class="basic">
                            <tr>
                                <th>수업 기간</th>
                                <td colspan="3"><input type="date" name="startDate" class="period"> ~ <input type="date" name="endDate" class="period"></td>
                            </tr>
                            <tr>
                                <th>수업 시간</th>
                                <td colspan="3">
                                    <div class="time-and-days">
                                        <div class="time-inputs">
                                            <input type="time" name="startTime" class="period"> ~ <input type="time" name="endTime" class="period">
                                        </div>
                                        <div class="day-checkbox-group">
                                            <label><input type="checkbox" class="ckbox" name="day" value="월"> 월</label>
                                            <label><input type="checkbox" class="ckbox" name="day" value="화"> 화</label>
                                            <label><input type="checkbox" class="ckbox" name="day" value="수"> 수</label>
                                            <label><input type="checkbox" class="ckbox" name="day" value="목"> 목</label>
                                            <label><input type="checkbox" class="ckbox" name="day" value="금"> 금</label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>평가방식</th>
                                <td colspan="3"><input type="text" name="evaluation" placeholder="출석 10%, 과제 30%, 시험 60%" class="how"></td>
                            </tr>
                            <tr>
                                <th>교재</th>
                                <td colspan="3"><input type="text" name="book" placeholder="출판사 - 도서명 - 저자 입력" class="book"></td>
                            </tr>
                            <tr>
                                <th>강의실</th>
                                <td><input type="text" name="classroom" placeholder="인문관 301호" class="room"></td>
                                <th>최대 수강인원</th>
                                <td><input type="text" name="people_num"></td>
                            </tr>
                        </table>

                        <input type="submit" value="등록" class="button">
                    </div>

                    
                </form>


        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/manage/_footer.jsp" %>