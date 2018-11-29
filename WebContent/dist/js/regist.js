var boo=true;
			function checkusername(){
				var username=document.getElementById("username").value;
				var checkuser=document.getElementById("checkuser");
				$.ajax({
					type:"get",
					url:"username.do?username="+username,
					success:function(t){
						
						if(t=="1"){
							checkuser.innerHTML="√";
						}else{
							checkuser.innerHTML="用户名已存在";
						}
					}
				})
			}
			function checkpassword(id){
				var password=document.getElementById(id).value;
				var reg=new RegExp("^[a-zA-Z]{1}([0-9a-zA-Z]|[._]){4,19}$");
				var boo=reg.test(password);
				var span=document.getElementById("passcheck");
				if(boo){
					span.innerHTML="√";
				}else{
					span.innerHTML="×";
				}
			}
			
			function checkcode(){
				if(boo){
					var num=document.getElementById("num");
					num.src="checkcode.do?"+Math.random();
					boo=false;
					setTimeout(function(){
						boo=true;
						},2000)
				}
			}
			function comparecode(){
				var code=document.getElementById("code").value;
				var showcode=document.getElementById("showcode");
				$.ajax({
					type:"get",
					url:"lookcode.do",
					success:function(t){
						if(t==code){
							showcode.innerHTML="√";
						}else{
							showcode.innerHTML="验证码不正确";
						}
					}
				})
			}