$(function(){
	var $submitButton = $(".controls .bottom");
	//点击登录提交表格
	$submitButton.click(function(e) {
		$(".form-horizontal").submit();
		return false;
	});

});