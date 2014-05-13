
$(document).ready(function(){
	$(".chzn-select").chosen({default_multiple_text: 'Choose categories'});
	var container = document.querySelector('.gridalicious');
	var msnry = new Masonry(container, {
		columnWidth: 190,
		itemSelector: '.galcolumn'
	});
	imagesLoaded(container, function() {
		msnry.layout();
	});
	$(".like-this-post").click(function(){
		vote = $(this).attr("data-vote");
		user_id = $(this).attr("data-user-id");
		product_id = $(this).attr("data-product-id");
		$.ajax({
	        url : "/api/products/"+product_id+"/vote_by",
	        type : "POST",
	        dataType: 'json',
	    	data : "user_id=" + user_id + "&vote=" + inverse_vote(vote),
	        success : function(data) {
        		$("#"+product_id+"-like-this-post").attr({"data-vote":data.is_liked});
        		$("#"+product_id+"-like-this-post").html(vote_icon(data.is_liked));
	        },
	        error : function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + ". Please try after sometime");
	        }
	    });
	});
	inverse_vote = function(vote){
		if(vote=="like")
			return "dislike"
		else
			return "like"
	}
	vote_icon = function(vote){
		if(vote=="like")
			return '<i class="fa fa-heart"></i>'
		else
			return '<i class="fa fa-heart-o"></i>'

	}
});