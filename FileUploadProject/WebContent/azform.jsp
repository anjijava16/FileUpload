
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="JavaScript" type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script language="JavaScript" type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script language="JavaScript" type="text/javascript"
	src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script language="JavaScript" type="text/javascript"
	src="http://tinymce.cachefly.net/4.1/tinymce.min.js"></script>

<style>
body {
	font: 85% "Trebuchet MS", sans-serif;
	margin: 50px;
}

#contact_form label.error {
	color: #FB3A3A;
	margin: 4px 0 5px 12px;
	padding: 0;
	text-align: left;
	width: 350px;
}

.ui-tabs .ui-tabs-nav li a {
	font-size: 13pt !important;
}

#contact_form {
	border: 1px solid #DFDCDC;
	border-radius: 15px 15px 15px 15px;
	display: inline-block;
	margin-bottom: 30px;
	margin-left: 20px;
	margin-top: 10px;
	padding: 25px 50px 10px;
	width: 900px;
}

#contact_form .submit {
	padding: 10px;
	width: 220px;
	height: 40px !important;
}

.nexttabx {
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	border: solid 1px #FFF;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.4);
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px
		rgba(0, 0, 0, 0.2);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px
		rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px
		rgba(0, 0, 0, 0.2);
	background: #d3d3d3;
	color: #FFF;
	padding: 8px 12px;
	text-decoration: none;
}

.nexttab {
	border-style: solid;
	border-width: 1px 1px 1px 1px;
	text-decoration: none;
	padding: 4px;
	border-color: #000000
}
</style>

<script type="application/x-javascript">
	
//<![CDATA[
/*

*/
tinymce.init({selector:"#experience",
    theme: "modern",
	mode : "exact",
    elements : "experience",
    width: 750,
    height: 220,
	// update validation status on change
	onchange_callback: function(editor) {
		tinyMCE.triggerSave();
		$("#" + editor.id).valid();
	}
});
tinymce.init({selector:"textarea",
    theme: "modern",
    width: 400,
    height: 100,
	// update validation status on change
	onchange_callback: function(editor) {
		tinyMCE.triggerSave();
		$("#" + editor.id).valid();
	}
});

//]]>

</script>
<script>
	//<![CDATA[

	$('#submit').click(function() {
		//run();
	});

	function run() {
		var validator = $("#contact_form")
				.submit(function() {
					// update underlying textarea before submit validation
					tinyMCE.triggerSave(true, true);
					$("#contact_form").validate();
				})
				.validate(
						{
							rules : {
								firstname : "required",
								lastname : "required",
								email : {
									required : true,
									email : true
								},
								password : {
									required : true,
									minlength : 5
								},
								experience : {
									required : true,
									minlength : 20,
									maxlength : 10000
								},
								years_driving : {
									required : true
								},
								home_number : {
									customphone : true,
									required : true
								},
								cell_number : "required",
								accident_comment : {
									required : "#accident_comment:visible"
								},
								convictions_comment : {
									required : "#convictions_comment:visible"
								},
								/* 			attachment1: {
								 required: true,
								 accept: "application/msword, application/pdf"
								 },
								 */
								/* Personal photo
								attachment2: {
									required: true,
									accept: "image/*"
								},
								 */
								attachment3 : {
									required : true,
									accept : "jpg|jpeg|png|ico|bmp",
									filesize : 524289
								},
								attachment4 : {
									required : true,
									accept : "jpg|jpeg|png|ico|bmp",
									filesize : 524289
								}
							},
							messages : {
								firstname : "Please enter your first name",
								lastname : "Please enter your last name",
								password : {
									required : "Please provide a password",
									minlength : "Your password must be at least 5 characters long"
								},
								experience : {
									required : "Please write your experience",
									minlength : "Min value is 20 caracters",
									maxlength : "Max value is 10 000 caracters"
								},
								email : "Please enter a valid email address",
								years_driving : "Please chose proper value",
								home_number : "Please enter your home number in format: (xxx) xxx-xxxx",
								cell_number : "Please enter your cell number",
								attachment1 : "Please upload pdf/doc document",
								//attachment2: "Please upload image file",
								attachment3 : "Please upload image file less then 512kb",
								attachment4 : "Please upload image file less then 512kb"
							},
							ignore : "",
							errorPlacement : function(label, element) {
								// position error label after generated textarea
								if (element.is("textarea")) {
									label.insertAfter(element.next());
								} else {
									label.insertAfter(element);
								}
								;
								var h = document.getElementById('h');
								h.innerHTML = "Please fill out nececary fileds and submit again";
								h.style.visibility = 'visible';
								h.type = "text";
								h.style.color = "#ff0000";
								h.style.fontSize = "x-large";

								//alert(label.html());
							},
							submitHandler : function(form) {
								var h = document.getElementById('h');
								h.innerHTML = "";
								h.style.visibility = 'visible';
								h.type = "text";

								var firstname = document
										.getElementById('firstname').value;
								var lastname = document
										.getElementById('lastname').value;
								var email = document.getElementById('email').value;
								var password = document
										.getElementById('password').value;
								var experience = document
										.getElementById('experience').value;
								/* var home_number = document.getElementById('home_number').value; */
								var cell_number = document
										.getElementById('cell_number').value;

								var attachment1 = document
										.getElementById('attachment1').value;
								var attachment2 = document
										.getElementById('attachment2').value;
								var attachment3 = document
										.getElementById('attachment3').value;
								var attachment4 = document
										.getElementById('attachment4').value;

								var years_driving = document
										.getElementById('years_driving').value;

								alert("First name: " + firstname
										+ "  Last name: " + lastname + "\n"
										+ "Email:" + email + "\n" + "Password:"
										+ password + "\n" + "Experience: "
										+ experience + "\n" + "Home number: "
										+ home_number + "\n" + "Cell number: "
										+ cell_number + "\n" + "Links:" + "\n"
										+ "Resume/Work History: " + attachment1
										+ "\n" + "Personal Photo: "
										+ attachment2 + "\n"
										+ "CVOR Abstract: " + attachment3
										+ "\n" + "Driver Abstract: "
										+ attachment4 + "\n"
										+ "Years of driving: " + years_driving
										+ "\n");

								form.submit();
							}
						});
		validator.focusInvalid = function() {
			// put focus on tinymce on submit validation
			if (this.settings.focusInvalid) {
				try {
					var toFocus = $(this.findLastActive()
							|| this.errorList.length
							&& this.errorList[0].element || []);
					if (toFocus.is("textarea")) {
						tinyMCE.get(toFocus.attr("id")).focus();
					} else {
						toFocus.filter(":visible").focus();
					}
				} catch (e) {
					// ignore IE throwing errors when focusing hidden elements
				}
			}
		};

		$("input[name$='accidents']").click(function() {
			var test = $(this).val();
			if (test == "no") {
				$("#accidents_comments").hide();
			} else {
				$("#accidents_comments").show();
			}
		});

		$("input[name$='convictions']").click(function() {
			var test = $(this).val();
			if (test == "no") {
				$("#convictions_comments").hide();
			} else {
				$("#convictions_comments").show();
			}
		});

		$.validator.addMethod('customphone', function(value, element) {
			return this.optional(element)
					|| /^\(?([0-9]{3})\)?[ ]?([0-9]{3})[-. ]?([0-9]{4})$/
							.test(value);
		}, "Please enter a valid phone number");

		$.validator.addMethod('filesize', function(value, element, param) {
			// param = size (en bytes) 
			// element = element to validate (<input>)
			// value = value of the element (file name)
			return this.optional(element) || (element.files[0].size <= param)
		});

		$(".nexttab").click(function() {
			var valid = true;
			var i = 0;
			var $inputs = $(this).closest("div").find("input");

			$inputs.each(function() {
				if (!validator.element(this) && valid) {
					valid = false;
				}
			});
			var string = this + " ";
			if (valid) {
				var result1 = string.search(new RegExp("tabs-2", "i"));
				var result2 = string.search(new RegExp("tabs-3", "i"));
				var result3 = string.search(new RegExp("tabs-4", "i"));
				if (result1 != -1) {
					myFunction(2);
				}
				if (result2 != -1) {
					myFunction(3);
				}
				if (result3 != -1) {
					myFunction(4);
				}
			}
		});
	};

	$(document).ready(function() {
		run();
	});

	//]]>
</script>

<script>
	//<![CDATA[
	$(function() {
		var $tabs = $('#tabs').tabs({
			selected : 0
		});
	});

	function myFunction(x) {
		if (x == 2) {
			$('#tabs').tabs({
				active : 1
			});
		} else if (x == 3) {
			$('#tabs').tabs({
				active : 2
			});
		} else if (x == 4) {
			$('#tabs').tabs({
				active : 3
			});
		}
	}
	//]]>
</script>

<title>Example of validation</title>

</head>
<body>
	<!-- <form enctype="multipart/form-data" action="reg" method="post">
 -->

	<form enctype="multipart/form-data" method="post" action="reg">
		<div id="tabs">
			<ul>
				<li><a href="#tabs-1">Personal info</a></li>
				<li><a href="#tabs-2">Experience</a></li>
				<li><a href="#tabs-3">Files</a></li>
				<li><a href="#tabs-4">Questions</a></li>
			</ul>
			<div id="tabs-1">

				<table>
					<tr>
						<td><label for="firstname">First Name:</label></td>
						<td><input type="text" id="firstname" name="firstname" /></td>
					</tr>
					<tr>
						<td><label for="lastname">Last Name:</label></td>
						<td><input type="text" id="lastname" name="lastname" /></td>
					</tr>
					<tr>
						<td><label for="email">Email:</label></td>
						<td><input type="text" id="email" name="email" /></td>
					</tr>
					<tr>
						<td><label for="password">Password:</label></td>
						<td><input type="password" id="password" name="password" /></td>
					</tr>
					<!-- <tr><td><label for="home_number">Home Number</label></td><td><input type="home_number" id="home_number" placeholder="(xxx) xxx-xxxx" name="home_number"/></td></tr> -->
					<tr>
						<td><label for="home_number">Home Number</label></td>
						<td><input type="text" name="number" /></td>
					</tr>
					<tr>
						<td><label for="cell_number">Cell Number</label></td>
						<td><input type="cell_number" id="cell_number"
							name="cell_number" /></td>
					</tr>
					<tr>
						<td><label>Personal Photo:</label></td>
						<td><input class="upload-button" type="file"	name=	"photoAttach" id="attachment2" /></td>
					</tr>
				</table>
				<br /> <a class="nexttab navbutton" href="#tabs-2">Next tab</a>


			</div>
			<div id="tabs-2">
				<div id="exp">
					<legend for="experience2">
						<b>Your experience:</b>
					</legend>
					<textarea rows="4" cols="100" id="experience" name="experience"></textarea>
				</div>
				<br /> <a class="nexttab navbutton" href="#tabs-3">Next tab</a>
			</div>
			<div id="tabs-3">
				<div id="uploads-section">
					<table>
						<tr>
							<td><label><b>Please upload the following files:</b></label></td>
							<td></td>
						</tr>
						<tr>
							<td><label>Resume/Work History:</label></td>
							<td><input class="upload-button" type="file"
								name="attachment1" id="attachment1" /></td>
						</tr>

						<tr>
							<td><label>CVOR Abstract:</label></td>
							<td><input class="upload-button" type="file"
								name="attachment3" id="attachment3" /></td>
						</tr>
						<tr>
							<td><label>Driver Abstract:</label></td>
							<td><input class="upload-button" type="file"
								name="attachment4" id="attachment4" /></td>
						</tr>
					</table>


				</div>
				<br /> <a class="nexttab navbutton" href="#tabs-4">Next tab</a>
			</div>
			<div id="tabs-4">

				<table>
					<tr>
						<td><label for="ownerOperator">Are you:</label></td>
						<td><div>
								<label>Owner </label> <input type="radio" name="ownerOperator"
									id="ownerOperator" value="owner_operator" checked="checked" />
								<label>Company</label> <input type="radio" name="ownerOperator"
									id="companyDriver" value="company driver" />
							</div></td>
					</tr>
					<tr>
						<td><label>How big driving expierence do you have?</label></td>
						<td><select name="years_driving" id="years_driving">
								<option value="">Select</option>
								<option value="1 years">1 years</option>
								<option value="2 years">2 years</option>
								<option value="3 years">3 years</option>
								<option value="4 years">4 years</option>
								<option value="5 years">5 years</option>
								<option value="6 years">6 years</option>
								<option value="7 years +">7 years +</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="accidents_lbl">Have you had any
								accidents?</label></td>
						<td>
							<div>
								<input type="radio" name="accidents" id="accidents_no"
									value="no" checked="checked" />NO <input type="radio"
									name="accidents" id="accidents_yes" value="yes" />YES
							</div>
						</td>
					</tr>
					<tr>
						<td><div id="accidents_comments" class="div_comm"
								style="display: none">
								<legend>
									<b>Descirbe it please:</b>
								</legend>
								<textarea rows="4" cols="100" id="accident_comment"
									name="accident_comment"></textarea>
							</div></td>
						<td></td>
					</tr>
					<tr>
						<td><label for="convictions_lbl">Have you had any
								traffic convictions?</label></td>
						<td>
							<div>
								<input type="radio" name="convictions" id="convictions_no"
									value="no" checked="checked" />NO <input type="radio"
									name="convictions" id="convictions_yes" value="yes" />YES
							</div>
						</td>
					</tr>
					<tr>
						<td><div id="convictions_comments" class="div_comm"
								style="display: none">
								<legend>
									<b>Descirbe it please:</b>
								</legend>
								<textarea rows="4" cols="100" id="convictions_comment"
									name="convictions_comment"></textarea>
							</div></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
				<div class="fieldgroup">
					<p id='h' name='h' />
					<input type="submit" value="Submit" class="submit" />
				</div>
			</div>

		</div>



	</form>


</body>
</html>