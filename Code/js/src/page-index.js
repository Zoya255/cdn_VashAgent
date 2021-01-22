$(document).ready(function() {
	/* настройка переключения слайдов */

	$('#script__pagepiling').pagepiling({
		verticalCentered : false,
		sectionsColor    : ['#ffffff', '#ffffff', '#ffffff',  '#ffffff',   '#ffffff', '#ffffff'],
		anchors          : ['main',    'about',   'services', 'advantage', 'forms',   'feedback'],
		menu             : '#script__pagepiling-menu'
	});

	/* обработка формы */

	let status = false;

	$('#script__form-button').click(function () {
		let errors = 0;

		let name  = $('#script__form-name').val();
		let tel   = $('#script__form-tel').val();
		let email = $('#script__form-email').val();

		if ( name.length < 4 ) {
			errors++;
			console.error("Имя: cлишком короткое");
		}
		else if ( name.length > 80 ) {
			errors++;
			console.error("Имя: cлишком длинное");
		}
		else {
			console.log("Имя: ОК");
		}

		let phoneNumber = new libphonenumber.AsYouType('RU').input(tel);

		if ( phoneNumber.length === 17 ) {
			console.log( "Телефон: ОК" );
			console.log( phoneNumber );
		}
		else {
			errors++;
			console.error("Телефон: не правильный формат");
		}

		if ( email.length < 4 ) {
			errors++;
			console.error("Эл. почта: Слишком короткая");
		}
		if ( email.length > 80 ) {
			errors++;
			console.error("Эл. почта: Слишком длинная");
		}
		else {
			console.log("Эл. почта: ОК");
		}

		if ( errors === 0 ) {
			if (!status) {
				$.ajax({
					method   : "POST",
					url      : "php/form.php",
					data     : {
						name      : name,
						telephone : tel,
						email     : email,
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
		}

	})

	/* обработка номера телефона на форме */

	$(".global__section-forms-form").keyup( function () {
		let tel = $('#script__form-tel').val();
		let phoneNumber = new libphonenumber.AsYouType("RU").input(tel);

		$('#script__form-tel').val( phoneNumber );
		console.log( phoneNumber );
	})

});