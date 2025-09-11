<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <h4>대학 및 학과 등록</h4>
                <div class="breadcrumb">
                    <span>대학 및 학과</span>
                    <span class="end">대학 및 학과 등록</span>
                </div>
            </article>

            <!-- 기본정보 입력 -->
            <form class="register" >
                <div>
                    <h4><img src="/images/bullet-h4.png" alt="h4">대학 정보 입력</h4>
                </div>

<!-- 대학 정보 입력 -->
                <table class="basic">
                    <tr>
                        <th>대학명</th>
                            <td><input type="text" name="collegeName" class="name" placeholder="예) 인문사회대학"></td>
                    </tr>
                    <tr>
                        <th>대학 영문명</th>
                            <td><input type="text" name="college_eng_name" class="EngName" placeholder="예) Humanities And Social Sciences"></td>
                    </tr>

                    <tr>   
                        <th>대학 소개</th>
                            <td>
                                <input class="uniIntro" type="text" name="info_title" class="title" placeholder="대학 소개 제목입력">
                                <textarea class="explain" type="text" name="info_context" class="content" placeholder="대학 소개 내용입력"></textarea><br>
                                <input class="fileSel" type="file" name="file">
                                <p>대학·대학원 소개 페이지 출력 이미지(320 x 240) 첨부</p>
                            </td>
                    </tr>
                </table>

                <input type="submit" value="등록" class="button">
            </form>


<!-- 학과 정보 입력 -->
            <!-- 기본정보 입력 -->
            <form class="register" >
                <div>
                    <h4><img src="/images/bullet-h4.png" alt="h4">학과 정보 입력</h4>
                </div>

                <table class="basic">
                    <tr>
                        <th>학과번호</th>
                            <td>
                                <p>고유 2자리 숫자 자동생성</p>
                                <input type="hidden" name="no" th:value="${nextNo}" />
                            </td>
                        <th>단과대학</th>
                            <td>
                                <select name="collegeName">
                                    <option>선택</option>
                                </select>
                            </td>
                    </tr>

                    <tr>
                        <th>학과명</th>
                            <td><input type="text" class="lname" name="departmentName" placeholder="학과명 입력"></td>
                        <th>영문명</th>
                            <td><input type="text" class="eng_lname" name="department_eng_name" placeholder="학과 공식 영문 이름"></td>
                    </tr>

                    <tr>
                        <th>설립연도</th>
                            <td><input type="date" name="establishment_date" class="year"></td>
                        <th>학과장</th>
                            <td>
                                <select name="pro_name">
                                    <option value="">선택</option>
                                </select>
                            </td>
                    </tr>

                    <tr>
                        <th>학과 연락처</th>
                            <td><input type="text" name="dep_number" placeholder="학과 연락처 입력"></td>
                        <th>학과 사무실</th>
                            <td><input type="text" name="office" placeholder="인문관 3층 306호"></td>
                    </tr>
                    </table>

                <input type="submit" value="등록" class="button">
            </form>
            


        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/manage/_footer.jsp" %>