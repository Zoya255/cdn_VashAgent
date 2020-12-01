$(document).ready(function() {

	$('#script__pagepiling').pagepiling({
		verticalCentered : false,
		sectionsColor    : ['#ffffff', '#ffffff', '#ffffff',  '#ffffff',   '#ffffff', '#ffffff'],
		anchors          : ['main',    'about',   'services', 'advantage', 'forms',   'feedback'],
		menu             : '#script__pagepiling-menu'
	});

	let status = false;

	$('#script__form-button').click(function () {
		if (!status) {
			$.ajax({
				method   : "POST",
				url      : "php/form.php",
				data     : {
					name      : $('#script__form-name').val(),
					telephone : $('#script__form-tel').val(),
					email     : $('#script__form-email').val(),
				},
				success  : function (data, textStatus) {
					console.log(textStatus);
					$('#script__form-button').val("Отправлено");
					status = true;
				},
				error    : function (jqXHR, textStatus) {
					console.error(textStatus);
					$('#script__form-button').val("Ошибка, попробуйте позже");
					status = false;
				},
			})
		}
	})

});