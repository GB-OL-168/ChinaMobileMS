	
	function goPage(pno,psize){
		var itable = document.getElementById("idData");
		var a = itable.rows;
		var num = a.length-1;
		
		var totalPage = 0;
		var pageSize = psize;
		//总共分几页 
		if(num/pageSize > parseInt(num/pageSize)){   
				totalPage=parseInt(num/pageSize)+1;   
		   }else{   
			   totalPage=parseInt(num/pageSize);   
		   }   
		
		var currentPage = pno;
		var startRow = (currentPage - 1) * pageSize+1;
		   var endRow = currentPage * pageSize;
		   endRow = (endRow > num)? num : endRow;   
		  
		   
		   
		for(var i=1;i<(num+1);i++){    
			var irow = itable.rows[i];
			if(i>=startRow && i<=endRow){
				irow.style.display = ""; 
				
			}else{
				irow.style.display = "none";
			}
		}
	   	//	表头始终不隐藏
	    itable.rows[0].style.display="";
	    
		var pageEnd = document.getElementById("pageEnd");
		var tempStr = "共"+num+"条记录 &nbsp&nbsp 当前第"+currentPage+"页 ";
		if(currentPage > 1){
			tempStr += "<a href=\"javascript:void(0)\" onClick=\"goPage("+(1)+","+psize+")\">首页</a>";
			tempStr += "<a href=\"javascript:void(0)\" onClick=\"goPage("+(currentPage-1)+","+psize+")\"><上一页</a>"
		}else{
			tempStr +="&nbsp;&nbsp;  "
			tempStr +="  首页";
			tempStr +="&nbsp;"+"  <上一页";    
		}

		if(currentPage<totalPage){
			tempStr += "<a href=\"javascript:void(0)\" onClick=\"goPage("+(currentPage+1)+","+psize+")\"> &nbsp;  下一页></a>";
			tempStr += "<a href=\"javascript:void(0)\" onClick=\"goPage("+(totalPage)+","+psize+")\"> &nbsp;  尾页</a>";
		}else{
			tempStr += " &nbsp;  下一页>";
			tempStr += " &nbsp;  尾页";    
		}

		document.getElementById("barcon").innerHTML = tempStr;
	};
	
	 $(function(){
		 goPage(1,10);
	 });

	