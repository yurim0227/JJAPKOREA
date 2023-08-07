<!-- [3] reset.css 폴더경로 -->
<link rel="stylesheet" href="../css/reset.css">
<!-- [5] layout 영역 -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/onpick/css/onpick_layout.css">
<!-- [6] header 영역 -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/onpick/css/onpick_header.css">
<!-- swiper css -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<!-- 부트스트랩 css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Onpick Header</title>
    <!-- jQuery 스크립트 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header>
        <div id="wrap">
            <div id="header">
                <div id="topArea">
                    <div class="topContent">
                        <div class="logo">
                            <a href="<%=request.getContextPath() %>/index"><img src="https://i.jobkorea.kr/content/images/personal/main/logo_motion_pc.gif" width="143" height="25"></a>
                            <a href="#"><span>이직은 원픽</span></a>
                        </div>
                        <div class="topMenu">
                            <ul>
                                <li><a href="#">신입공채</a></li>
                                <li><a href="#">채용정보</a></li>
                                <li><a href="#">로그인</a></li>
                                <li><a href="#">회원가입</a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="headBenner" class="head_banner">
                        <a class="bann-wrap" href="#"><img src="https://i.jobkorea.kr/content/images/theme/celebrate/main_visual.png?20230629">
                            <div class="bann"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- swiper 스크립트 -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</body>
</html>