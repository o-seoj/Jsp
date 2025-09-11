<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 교수등록</title>
    
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
                <h4>교수 등록</h4>
                <div class="breadcrumb">
                    <span>인사관리</span>
                    <span class="end">교수등록</span>
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
                            <th rowspan="4"><img src="/MPGreen/images/icon-avatar.png" alt=""></th>
                            <th class="mid">교수번호</th>
                            <td class="td-bd">
                                <input type="hidden" name="id" />
                                <p>연도 + 학과 코드 + 순번 조합 자동생성</p>
                            </td>
                            <th>주민등록번호</th>
                            <td><input type="text" placeholder="- 포함 14자리 입력"></td>
                        
                        </tr>
                        <tr>
                            <th>이름</th>
                            <td><input type="text" name="name" placeholder="학생 이름 입력"></td>
                            <th>영문명</th>
                            <td><input type="text" name="eng_name" placeholder="여권 등과 동일한 영문 이름"></td>
                        </tr>

                        <tr>
                            <th>성별</th>
                            <td>
                                <div class="radio">
                                    <label><input type="radio" name="gender" value="남"> 남</label>
                                    <label><input type="radio" name="gender" value="여"> 여</label>
                                </div>
                            </td>
                            </td>
                            <th>국적</th>
                            <td class="td-bd">
                                <select id="nationality" class="dropdown" name="nationality">
                                    <option>선택</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <th>휴대폰</th>
                            <td class="td-bd"><input type="text" name="phone" placeholder="휴대폰 번호 입력"></td>
                            <th>이메일</th>
                            <td class="td-bd"><input type="text" name="email" placeholder="이메일 입력" class="email"></td>
                        </tr>

                        <tr>
                            <th></th>
                            <th>주소</th>
                            <td colspan="4">
                                <input class="postNum" type="text" id="postcode" placeholder="우편번호 선택">
                                <!--<button type="button" onclick="searchPostcode()">주소검색</button> <br>-->
                                <input type="text" id="address" placeholder="기본주소 선택" name="addr1" class="addr"> <br>
                                <input type="text" id="detailAddress" placeholder="상세주소 입력" name="addr2" class="addr"> <br>
                            </td>
                        </tr>
                    </table>

<!-- 학적정보 입력 -->
                    <div>
                        <h4><img src="/MPGreen/images/bullet-h4.png" alt="h4">학적정보 입력</h4>
                    </div>

                    <table class="basic">
                        <tr>
                            <th>졸업대학</th>
                                <td><input type="text" name="gradColName" placeholder="대학교 이름 입력"></td>
                            <th>학문 분야(전공)</th>
                                <td><input type="text" name="major" placeholder="전공입력"></td>
                        </tr>

                        <tr>
                            <th>졸업일</th>
                                <td><input type="date" name="end_date"></td>
                            <th>학위</th>
                                <td>
                                    <select name="degree">
                                        <option>박사</option>
                                        <option>석사</option>
                                        <option>학사</option>
                                    </select>
                                </td>
                        </tr>

                        <tr>
                            <th>담당학과</th>
                                <td>
                                    <select class="dropdown" name="college_name" id="collegeSelect">
                                        <option>인문사회대학</option>
                                    </select>
                                    <select class="dropdown" name="departmentName" id="departmentSelect">
                                        <option value="">영어영문학과</option>
                                    </select>
                                </td>

                            <th>임용일</th>
                                <td><input type="date" name="appointmentDate"></td>
                        </tr>
                    </table>

                <input type="submit" value="등록" class="button">
            </form>


        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/manage/_footer.jsp" %>