<!DOCTYPE HTML>
<html>
<head>
<title>Squidbit - We Make the World a Better Place!</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css/modal.css" rel="stylesheet" type="text/css" media="all">
<!-- <link href="css/form.css" rel="stylesheet" type="text/css" media="all">  -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
<script src="js/modal.js" type="text/javascript"></script>
<script src="js/form.js" type="text/javascript"></script>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<h1>Squidbit</h1>
			</div>
			<div class="social-icons">
				<ul>
					<li><a class="facebook" href="#" target="_blank"> </a></li>
					<li><a class="twitter" href="#" target="_blank"></a></li>
					<li><a class="googleplus" href="#" target="_blank"></a></li>
					<li><a class="linkedin" href="#" target="_blank"></a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="main">
			<div class="content">
				<h2>We use bits to make our planet a better place.</h2>
				<h2>Be part of the movement yourself!</h2>
				<h2>Just sign up and learn more!</h2>
				<div class="button">
					<!-- Trigger/Open The Modal -->
					<div id="myBtn" style="font-size:1.5em">
						<a href="#" class="signUpButton">Sign Up!</a>
					</div>
				</div>
				<!-- The Modal -->
				<div id="myModal" class="modal">
					<!-- Modal content -->
					<div class="modal-content">
						<div class="modal-header">
							<span class="close">&times;</span>
							<h2>Fulfill and submit to discover!</h2>
						</div>
						<div class="modal-body">
							<!-- Form Started -->
							<div class="container">
								<div class="container form-top">
									<div class="row">
										<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
											<div class="panel panel-danger">
												<div class="panel-body">
												
													<form id="reused_form">
														<div class="form-group">
															<label><i class="fa fa-user" aria-hidden="true"></i>Name</label>
															<input type="text" id="name" name="name" class="form-control" placeholder="Enter Name">
														</div>
														<div class="form-group">
															<label><i class="fa fa-envelope"
																aria-hidden="true"></i> Email</label> <input type="email"
																id="email" name="email" class="form-control"
																placeholder="Enter Email">
														</div>
														<div class="form-group">
															<label><i class="fa fa-comment"
																aria-hidden="true"></i> Message</label>
															<textarea id="message" rows="3" name="message" class="form-control"
																placeholder="Type Your Message"></textarea>
														</div>
														<div class="form-group">
															<button class="btn btn-raised btn-block btn-danger">Post
																&rarr;</button>
														</div>
													</form>
													
													<div id="error_message"
														style="width: 100%; height: 100%; display: none;">
														<h4>Error</h4>
														Sorry, but there was an error sending your message...
													</div>
													<div id="success_message"
														style="width: 100%; height: 100%; display: none;">
														<h2>Success! Your Message was sent successfully!</h2>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Form Ended -->
						</div>
						<div class="modal-footer">
							<h2>After submission, e-mail confirmation is required.</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy_right">
			<p>©2018 Squidbit</p>
		</div>
	</div>
</body>
</html>