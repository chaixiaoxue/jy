<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="bbs" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="${bbs}/staticfile/js/jquery-1.8.3.js"></script>
<script type="text/javascript" charset="utf-8" src="${bbs }/staticfile/back/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${bbs }/staticfile/back/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script>
	function formSubmit (url,sTarget){
	    document.forms[0].target = sTarget
	    document.forms[0].action = url;
	    document.forms[0].submit();
	    return true;
	}
	function checkAll(who, obj){
		var curCheckBox = document.getElementsByName(who);
		for(i = 0; i < curCheckBox.length; i++){
			curCheckBox.item(i).checked = obj.checked;
		}
	}
</script>
<script type="text/javascript">
	 KindEditor.ready(function(k){
		window.editor = k.create("#theAddForm [id=reporter]",{
			items:[
					'source', 
					'|', 
					'undo', 
					'redo'
			       ],
			afterBlur: function(){this.sync();}
		});
		window.show()
		
	});
</script>
<script type="text/javascript">
	 KindEditor.ready(function(k){
		window.editor = k.create("#theAddForm [name=workingexperience]",{
			items:[
					'source', 
					'|', 
					'undo', 
					'redo'
			       ],
			afterBlur: function(){this.sync();}
		});
		
	});
</script>
<script type="text/javascript">
	 KindEditor.ready(function(k){
		window.editor = k.create("#theAddForm [name=educationexperience]",{
			items:[
					'source', 
					'|', 
					'undo', 
					'redo'
			       ],
			afterBlur: function(){this.sync();}
		});
		
	});
</script>
<script type="text/javascript">
	 KindEditor.ready(function(k){
		window.editor = k.create("#theAddForm [name=skillsexpertise]",{
			items:[
					'source', 
					'|', 
					'undo', 
					'redo'
			       ],
			afterBlur: function(){this.sync();}
		});
		
	});
</script>
