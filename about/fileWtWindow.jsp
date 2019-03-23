






<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<!-- <base href="http://wssq.saic.gov.cn:9080/tmsve/"> -->
		<base href="http://localhost">

		<title>中国商标网网上申请</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="css/newpublic2.css" type="text/css">
		<script type="text/javascript" src="/tmsve
/style/js/jquery-1.4.4.js"></script>
		<script type="text/javascript" src="/tmsve
/style/js/wssq/popup.js"></script>
		<script type="text/javascript" src="/tmsve
/style/js/wssq/popupclass2.js"></script>
	    <SCRIPT type="text/javascript">
	       function file_load(){
	    	   var loadFlag=document.getElementById("loadFlag").value;
	    	   if(loadFlag =='yes'){
	    		   if($('#fileError').val()==''){
	    			    $("#divsuccess").html("文件上传成功,请点击'x'按钮关闭后继续下一步操作");
	    			    if($("#fileWtName",window.parent.document).val()!=''){
	    			    	$("#fileWtName",window.parent.document).val($("#fileWtName",window.parent.document).val()+';'+$('#fileName').val());
	    		            $("#fileWtId",window.parent.document).val($("#fileWtId",window.parent.document).val()+';'+$('#fileId').val());
	    			    }else{
	    			    	$("#fileWtName",window.parent.document).val($('#fileName').val());
	    		            $("#fileWtId",window.parent.document).val($('#fileId').val());
	    			    }
	    			    parent.$("#fileWtName").blur();//焦点控制触发前台的校验
	    		        
	    		   }else{
	    			     $("#fileWtName",window.parent.document).val('');
	    		         $("#fileWtId",window.parent.document).val('');
	    		        alert('文件不符合要求,请看错误提示!');
	    		   }
	    	   }
	       }
	       
	       function file_change(){
	    	   var docObj=document.getElementById("fileWt");
	    	   if(!docObj.value.match(/.jpg/i)){
			    	var afile = $("#fileWt");
			        afile.replaceWith(afile.clone().val(''));
			        alert('文件类型必须是: .jpg!'); 
			        return;
			   }
	       }
	       
	       function file_submit(){
	    	   if($("#fileWt").val()==''){
	    		   alert('请先浏览文件之后再点击上传按钮!!!'); 
	    	   }else{
	    		   
	    		   document.getElementById("form1").submit();
	    		   document.getElementById("laodBut").value="上传中。。";
	    		   $("#laodBut").attr("disabled","disabled");
	    	   }
	       }
	       
	    </SCRIPT>
			



</head> 

<body onload="file_load();"> 
<form action="/tmsve
/isApp_dlwtImageLoad.xhtml"  method="post" name="form1" id="form1"  enctype="multipart/form-data">
   &nbsp;<span style="color: gray">浏览文件之后点击上传按钮</span>
   <br>
   &nbsp;<input name="fileWt" type="file" id="fileWt" size="40" onchange="file_change()">
   <br>
   &nbsp;<input class="buttonhpb" type="button" id="laodBut" value="上传" onclick="file_submit()">
   <input type="hidden" name="fileFlag" id="fileFlag" value="7"/>
   <input type="hidden" name="fileId" id="fileId" value=""/>
   <input type="hidden" name="fileName" id="fileName" value=""/>
   <input type="hidden" name="loadFlag" id="loadFlag" value=""/>
   <input type="hidden" name="fileError" id="fileError" value=""/>
   <br>
   <font color="red" style="font: bold;text-align: left;"  size="4"></font>
   <div id="divsuccess" style="font: bold;text-align: left;font-size: 14px;color:red;" ></div>
	

</form>

</body> 
</html> 