<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ABC | Email Confirmation</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<core:url value="/resources/css/confirmation.css" />">
</head>
<body>
	<%@ include file="/WEB-INF/views/formNav.jsp"%>
	<div class="container mt-5 pb-5 pt-5 mb-5">
		<h2 class="text-center pt-5 title">Verify Your Email Address</h2>
		<p class="text-center">
			Please enter the verification code that we had just sent into your
			email, <br> if your email is real then verification code will be
			in above with green background
		</p>
		<form class="pt-5"
			action="nextStep?mode=${mode}&email=${user.email}&ps=${user.password}"
			method="post">
			<div class="container">
				<div class="form-floating normal mb-3">
					<input type="text" class="form-control" id="code"
						name="code" placeholder="verification_code" >
					<label for="floatingInput">Verification Code</label>
				</div>
				<div class="d-grid btn-div">
					<button type="submit" class="btn btn-primary btn-lg">Confirm</button>
				</div>
			</div>
		</form>
	</div>
	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>
	<core:set var="errorMsg" scope="session" value="${error}"/>
            <core:if test="${error == 'true'}">
        	<div id="errorMsg" class="modal" tabindex="-1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title"><i class="fa-solid fa-circle-exclamation text-danger"></i> Error Message</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <p>Incorrect Verification code please carefully validate your email</p>
                  </div>
                </div>
              </div>
            </div>
            </core:if>
     <script type="text/javascript" src="<core:url value="/resources/javaScript/confirm.js"/>"></script>
     <script src="https://code.jquery.com/jquery-3.6.1.min.js"
             	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
             	crossorigin="anonymous"></script>
     <script type="text/javascript"
     	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>