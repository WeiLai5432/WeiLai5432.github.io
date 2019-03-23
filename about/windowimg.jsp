






<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="GB2312">
		<!-- <base href="http://wssq.saic.gov.cn:9080/tmsve/"> -->
		<base href="http://localhost">
		<title>中国商标网网上申请</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="css/newpublic2.css" type="text/css">
		<!-- <script type="text/javascript" src="/tmsve
/style/js/jquery-1.4.4.js"></script>
		<script type="text/javascript" src="/tmsve
/style/js/wssq/popup.js"></script>
		<script type="text/javascript" src="/tmsve
/style/js/wssq/popupclass2.js"></script> -->
	    <SCRIPT type="text/javascript">
	       function img_load(){
	    	   window.parent.document.documentElement.scrollTop=0;
		       window.parent.document.body.scrollTop=0;
	    	   var imageflag=document.getElementById("imageflag").value;
	    	   if(imageflag!=''){
	    		   if(imageflag=='yes'){
	    			    //var parent=window.dialogArguments;//取得父窗体
			    	      //alert(parent.document.getElementById("appContactZip").value);
						  //parent.document.getElementById("newimgPreviewIdoo").src="tmzcsq_newshowImg.xhtml";
			    	      //parent.document.getElementById("newdivPreviewIdoo").display="";
						  //window.close();
			    	      //this.window.close();
			    	       var imageShowId=$("#imageShowId").val();
			    	      $("#newimgPreviewIdoo",window.parent.document).attr("src", "/tmsve/sbzcsq_newshowImg.xhtml?imageShowId="+imageShowId);
			    	      $("#newdivPreviewIdoo",window.parent.document).css("display","");
			    	      $("#isImage",window.parent.document).val("yes");
			    	      $("#getfocus",window.parent.document).attr('disabled',false);
			    	      $("#imageId",window.parent.document).val($('#imageId').val());
			    	      $("#imageShowId",window.parent.document).val($('#imageShowId').val());
	    		          //window.parent.document.body.removeChild(window.parent.document.getElementById("dialogCase"));//关闭
	    		          //window.close();
	    		          //parent.ClosePop();
	    		          $("#divsuccess").html("图像上传成功,以颜色组合或者着色图样申请商标注册的，应分别上传着色图样及黑白稿，黑白稿在图样2中上传。不指定颜色的，只上传黑白图样即可。请点击'x'按钮关闭后继续下一步操作");
	    		   }else{
	    			    //$("#newimgPreviewIdoo",window.parent.document).attr("src", "/tmsve/tmzcsq_newshowImg.xhtml?d="+new Date().getTime());
			    	    $("#isImage",window.parent.document).val("no");
			    	    $("#imageId",window.parent.document).val("");
			    	    $("#imageShowId",window.parent.document).val("");
	    			    $("#newdivPreviewIdoo",window.parent.document).css("display","none");
	    		        alert('图片不符合要求,请看错误提示!');
	    	       }
	    	     
	    	   }
	       }
	       
	       function img_change(){
	    	   var docObj=document.getElementById("file1");
	    	   if(!docObj.value.match(/.jpg/i)){
			     	var afile = $("#file1");
			       afile.replaceWith(afile.clone().val(''));//这样不行,会导致无法校验,无法获取file1的长度
			       alert('图片类型必须是: .jpg!'); 
			         return;
			   }
	       }
	       
	       function img_submit(){
	    	   if($("#file1").val()==''){
	    		   alert('请先浏览一张图片!!!'); 
	    	   }else{
	    		   document.getElementById("form1").submit();
	    	   }
	       }
	       
	    </SCRIPT>
			



</head> 

<body onload="img_load();"> 
<form action="/tmsve
/sbzcsq_imageLoad.xhtml"  method="post" name="form1" id="form1"  enctype="multipart/form-data">
   &nbsp;<span style="color: gray">浏览图片之后点击上传按钮</span>
   <br>
   &nbsp;<input type="file" name="file1" onchange="img_change()" style="width: 350px" id="file1">
   <br>
   &nbsp;<input class="buttonhpb" type="button" value="上传" onclick="img_submit()">
   <input type="hidden" name="imageflag" id="imageflag" value="yes"/><br>
    <input type="hidden" name="imageId" id="imageId" value="488a8198628b0d2301628ea97a493c45"/><br>
    <input type="hidden" name="imageShowId" id="imageShowId" value="488a8198628b0d2301628ea97a863c46"/><br>
   <font color="red" style="font: bold;text-align: left;"  size="4"></font>
   <div id="divsuccess"  style="font: bold;text-align: left;font-size: 14px;color:red;" ></div>
	

</form>

</body> 
</html> 