$(document).ready(function() {
	jQuery(function($) {
		
		var globalData;
		var myForm = $('#reused_form');
		
		$(myForm).submit(function(e) {
			e.preventDefault();
			//console.log('submitForm');

			$form = $(this);
			//show some response on the button
			$('button[type="submit"]', $form).each(function() {
				$btn = $(this);
				$btn.prop('type', 'button');
				$btn.prop('orig_label', $btn.text());
				$btn.text('Sending ...');
			});
			
//			var myData = myForm.serialize();
//			var dataVal = formToJSON();
//			var formData = new FormData(this);
			var data = $(this).serialize();
			var type = 'POST';
			var contentType = 'application/json';
			var url = '/formSubmissionService';
			//var url = 'http://localhost:8080/com.squidbit.deepbluesea/squidbit-portal/formSubmissionService';
			var dataType = 'json';
			
			globalData = data;

			$.ajax({
				type : type,
				contentType : contentType,
				url : url,
				dataType : dataType,
				data : data, //$form.serialize(), //formData, //dataVal, //myData,
				//success : postFormSubmition(globalData)
				success : function () {
		              alert('form was submitted');
	            }
	 
			});
		});
		
		function postFormSubmition(data) {
			try {
				if (data.result == 'success') {
					$('form#reused_form').hide();
					$('#success_message').show();
					$('#error_message').hide();
				} else {
					$('#error_message').append('<ul></ul>');

					jQuery.each(data.errors, function(key, val) {
						$('#error_message ul').append(
								'<li>' + key + ':' + val + '</li>');
					});
					$('#success_message').hide();
					$('#error_message').show();

					//reverse the response on the button
					$('button[type="button"]', $form).each(function() {
						$btn = $(this);
						label = $btn.prop('orig_label');
						if (label) {
							$btn.prop('type', 'submit');
							$btn.text(label);
							$btn.prop('orig_label', '');
						}
					});

				}
			} catch(err) {
				console.log(err + '\n \'postFormSubmition(data)\' exception. Is \'data\' undefined?');
			}
			
		}

		function formToJSON() {
			return JSON.stringify({
				"name" : $('#name').val(),
				"email" : $('#email').val(),
				"message" : $('#message').val()
			});
		}
		
	//
//		function sendForm() {
//			console.log('sendForm');
//			$.ajax({
//				type : 'POST',
//				contentType : 'application/json',
//				url : 'http://localhost:8080/com.squidbit.deepbluesea/squidbit-portal/formSubmissionService',
//				dataType : "json",
//				data : formToJSON(),
//				success : function(data, textStatus, jqXHR) {
//					alert('Message sent successfully');
//					$('#btnDelete').show();
//					$('#wineId').val(data.id);
//				},
//				error : function(jqXHR, textStatus, errorThrown) {
//					alert('Send message error: ' + textStatus);
//				}
//			});
//		}
		
	});
	
});
