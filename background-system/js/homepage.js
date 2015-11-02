$(function() {
	// 获取点击的类别
	var $navA = $(".nav2-1 a");
	// 为点击的新闻类绑定点击事件
	$navA.click(function(e) {
		$clickValue = $(this).attr("value");
		$(".welcome").hide();
		// 点击后的导航栏效果
		$navA.each(function(index, element) {
			var $allValue = $(element).attr("value");
			if ($allValue == $clickValue) {
				$(element).addClass('click-nav-a');
			} else {
				$(element).removeClass('click-nav-a');
			}
		});
		var $tablePictureContent = $(".content-right .table-picture-content");
		var $tableContent = $(".content-right .table-content");
		var $deleteContent = $(".content-right .delete-content");
		var $deletePictureContent = $(".content-right .delete-picture-content");
		var $formOne = $(".form-one");
		var $formTwo = $(".form-two");
		var $formThree = $(".form-three");
		var $formFour = $(".form-four");
		var $formFive = $(".form-five");
		// 点击后默认显示数据库所有的新闻内容表格
		if ($clickValue == "picture") {
			$tablePictureContent.show();
			$tableContent.hide();
			$formTwo.hide();
			$formOne.hide();
			$formThree.hide();
			$formFour.hide();
			$formFive.hide();
			$(".table-picture-content tbody").load("../php/read-message.php", {
				name: $clickValue
			});
		} else {
			$tablePictureContent.hide();
			$tableContent.show();
			$formOne.hide();
			$formTwo.hide();
			$formThree.hide();
			$formFour.hide();
			$formFive.hide();
			$(".table-content tbody").load("../php/read-message.php", {
				name: $clickValue
			});
		}
		// 点击增，删，改之后的页面显示效果
		$(".button-sort a").click(function(event) {
			$aValue = $(this).attr("value");
			// 点击了导入
			if ($aValue == "insert") {
				if ($clickValue == "picture") {
					$formOne.hide();
					$formTwo.show();
					$tablePictureContent.hide();
				} else {
					$formOne.show();
					$formTwo.hide();
					$tableContent.hide();
				}
				// 点击了删除
			} else if ($aValue == "delete") {
				$formThree.show();
				$tablePictureContent.hide();
				$tableContent.hide();
				if ($clickValue == "picture") {
					$deleteContent.hide();
					$deletePictureContent.show();
					$(".delete-picture-content tbody").load("../php/delete-content.php", {
						name: $clickValue
					});
				} else {
					$deleteContent.show();
					$deletePictureContent.hide();
					$(".delete-content tbody").load("../php/delete-content.php", {
						name: $clickValue
					});
				}
				//点击了修改
			} //else {
			// 	if ($clickValue == "picture") {
			// 		$formFour.hide();
			// 		$formFive.show();
			// 		$tablePictureContent.hide();
			// 	} else {
			// 		$formFour.show();
			// 		$formFive.hide();
			// 		$tableContent.hide();
			// 	}
			// }
			return false;
		});
		//点击了修改
		$(".content-right").on('click', '.change', function(event) {
			event.preventDefault();
			var $indexValue = $(this).attr("value");
			$(".news-id").attr("value", $indexValue);
			if ($clickValue == "picture") {
				$formFour.hide();
				$formFive.show();
				$tablePictureContent.hide();
			} else {
				$formFour.show();
				$formFive.hide();
				$tableContent.hide();
			}
		});
		$(".sort-content").attr("value", $clickValue);
		return false;
	});
	$(".select-all").click(function(e) {
		$('[name=select\\[\\]]:checkbox').attr('checked', true);
		return false;
	});
	$(".select-none").click(function(e) {
		$('[name=select\\[\\]]:checkbox').attr('checked', false);
		return false;
	});
	$(".select-back").click(function(e) {
		$('[name=select\\[\\]]:checkbox').each(function(index, el) {
			this.checked = !this.checked;
		});
		return false;
	});
});