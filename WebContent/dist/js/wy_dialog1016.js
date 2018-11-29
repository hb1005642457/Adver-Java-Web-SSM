(function($){
	$.wy_dialog=function(option){
		var $dialog=$('<div class="dialog"></div>');
		var $head=$('<div class="head">'+option.title+'</div>');
		var $cover=$('<div class="cover"></div>');
		$dialog.append($head);
		$("body").append($dialog).append($cover);
		center();
			$(".dialog .head").mousedown(function(e){
				//获取点击时刻的X轴坐标和Y轴坐标
				var mx=e.clientX||e.pageX;
				var my=e.clientY||e.pageY;
				//获取div原本距左和距顶的距离
				var dl=$(".dialog").offset().left;
				var dt=$(".dialog").offset().top;
				//定义一个开关 默认鼠标点击之后开启
				var flag=true;
				$(document).mousemove(function(ex){
					if(flag){
						//获取移动后鼠标的X轴坐标和Y轴坐标
						var ax=ex.clientX||ex.pageX;
						var ay=ex.clientY||ex.pageY;
						// 计算div距顶和距左的距离
						var _left=ax-mx+dl;
						var _top=ay-my+dt;
						$(".dialog").css({"top":_top+"px","left":_left+"px"});
					}
				}).mouseup(function(){
					flag=false;
				});
			});
			$(window).resize(center);
			function center(){
				//获取屏幕的宽度
				var ww=$(window).width();
				//获取屏幕的高度
				var wh=$(window).height();
				//获取DIV宽度 
				var dw=$(".dialog").width();
				//获取DIV高度 
				var dh=$(".dialog").height();
				//计算距顶和距左的距离（屏幕-DIV）/2
				var _left=(ww-dw)/2;
				var _top=(wh-dh)/2;
				// 把top和left赋值到dialog中
				$(".dialog").css({"top":_top+"px","left":_left+"px"});
			}
	}
})(jQuery)