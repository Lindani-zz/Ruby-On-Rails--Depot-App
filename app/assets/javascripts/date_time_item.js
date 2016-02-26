$(document).ready(function(){
	setInterval(function(){
		$(".js-timer").text(new Date().toString().slice(0, -15));
	}, 1000);
});