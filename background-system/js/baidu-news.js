$(function() {
	// 默认显示推荐的新闻栏
	$(".content").load("../php/baidu_news.php",{name:$(".recomend").attr("value")});
	// 获取各个新闻的类别
	var $tableSpan = $("table div span");
	$tableSpan.eq(0).addClass('nav-border');
	// 为新闻类别绑定点击事件
	$tableSpan.click(function(e) {
		var $clickValue = $(this).attr("value");
		$tableSpan.each(function(index, element) {
			var $allValue = $(element).attr("value");
			if ($allValue == $clickValue) {
				$(element).addClass('nav-border');
			} else {
				$(element).removeClass('nav-border');
			}
		});
		$(".content").load("../php/baidu_news.php", {
			name: $clickValue
		});
	});
});