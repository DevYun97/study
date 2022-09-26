<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 팝업창</title>
<!-- 부트스트랩4 CSS 연결 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- 부트아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="../mainCSS.css" >
</head>
<body>
 	<header class="fixed-top">
      <h4>서류 결제 팝업창</h4>
    </header>
    <main class="d-flex justify-content-between">
      <form action="" method="post" class="w-75 my-4 text-left">
        <div>
          <p>문서 번호 :</p>
          <p>문서 제목 :</p>
          <p>결제자 :</p>
        </div>
        <div>
          <textarea class="w-100 mb-2 TASizsFixed" rows="5" ></textarea>
        </div>
        <div>
          <input type="button" value="반려" />
          <input type="button" value="결제" />
        </div>
      </form>
    </main>
    <!-- 부트스트랩4 JS 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- testTool 하단 스크립트 추가 후 replace에 이름 넣어주면 text에디터? 사용 가능 -->
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  	<script>CKEDITOR.replace('appro_content');</script>

    <!-- child 팝업창 -->
    <script type="text/javascript">

      function popup_close()
      {
        window.opener.name="parent";
        document.frm.target = "parent";
        document.frm.method = "post";
        document.frm.action = "/customer/customer02_4";
        document.frm.submit();
        window.close();
      }
    
    </script>

  </body>
</html>