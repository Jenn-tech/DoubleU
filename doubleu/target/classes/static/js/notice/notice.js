/**
2021.02.22
- notice_insert 저장하기 모달 이후 submit

2021.02.15
- 게시판 insert 게시기한 radio 선택시 활성/비활성

 */

/* 게시판 insert 게시기한 radio 선택시 활성/비활성 */
$(document).ready(function(){
 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=searchDate]").click(function(){
        if($("input[name=searchDate]:checked").val() == "설정"){
           $("#searchDateOne").attr("readonly",false);
		   $("#searchDateTwo").attr("readonly",false);
            // radio 버튼의 value 값이 설정이면 활성화
 
        }else if($("input[name=searchDate]:checked").val() == "영구"){
              $("#searchDateOne").attr("readonly",true);
              $("#searchDateTwo").attr("readonly",true);
            // radio 버튼의 value 값이 영구면 비활성화
        }
    });
});

/* 경조사 insert 게시기한 radio 선택시 활성/비활성 */
$(document).ready(function(){
 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=familyeventPostType]").click(function(){
        if($("input[name=familyeventPostType]:checked").val() == "설정"){
           $("#searchDateOne").attr("readonly",false);
		   $("#searchDateTwo").attr("readonly",false);
            // radio 버튼의 value 값이 설정이면 활성화
 
        }else if($("input[name=familyeventPostType]:checked").val() == "영구"){
              $("#searchDateOne").attr("readonly",true);
              $("#searchDateTwo").attr("readonly",true);
            // radio 버튼의 value 값이 영구면 비활성화
        }
    });
});

/* notice_insert 저장하기 모달 이후 submit */
$(function(){
   $("#noticeSubmit1").click(function(){
        $('#staticBackdrop').modal();
    });
    
    $("#noticeSubmit2").click(function(){
        $('#noticeInsertForm').submit();
    })
})

$(function(){
   $("#familyevnetSubmit1").click(function(){
        $('#staticBackdrop').modal();
    });
    
    $("#noticeSubmit2").click(function(){
        $('#familyeventInsertForm').submit();
    })
})
