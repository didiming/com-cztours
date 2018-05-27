$(function() {
	$('input[value=删除]').click(function() {
		var cId = $(this).parent().children(':first').val();
		if (confirm('您确定要删除吗？')) {
			//alert(sId);
			location.href = cId + '/deleteCommById';
	    }
	});
	
	$('input[value=编辑]').click(function() {
		var cId = $(this).parent().children(':first').val();
		//alert(cId);
		location.href = '/bianjishangcheng?cId=' + cId;
	});
	
	function pagination() {
		$('a[pageIndex][pageSize]').click(function(e){
			e.preventDefault();

			var pageIndex = $(this).attr('pageIndex');
			var pageSize = $(this).attr('pageSize');
			
			var url = 'shangchengliebiao?pageIndex=' + pageIndex + '&pageSize=' + pageSize;
			
			location.href = url;
		});
	}
	
	pagination();
	
});