$(function() {
	$('input[value=删除]').click(function() {
		var sId = $(this).parent().children(':first').val();
		if (confirm('您确定要删除吗？')) {
			//alert(sId);
			location.href = sId + '/deleteScenicById';
	    }
	});
	
	$('input[value=编辑]').click(function() {
		var sId = $(this).parent().children(':first').val();
		//alert(blogsId);
		location.href = '/bianjilvyou?sId=' + sId;
	});
	
	function pagination() {
		$('a[pageIndex][pageSize]').click(function(e){
			e.preventDefault();

			var pageIndex = $(this).attr('pageIndex');
			var pageSize = $(this).attr('pageSize');
			
			var url = 'lvyoujindian?pageIndex=' + pageIndex + '&pageSize=' + pageSize;
			
			location.href = url;
		});
	}
	
	pagination();
	
});