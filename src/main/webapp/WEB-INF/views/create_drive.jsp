<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("tpodetails") == null) || (session.getAttribute("tpodetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>
<%@include file="include/header2.jsp"%>
<link rel="stylesheet" type="text/css" href="<spring:url value='/css/create_drive.css'/>" />
		<div class="container1">
			<div class="row">
				<div class="col-sm-12">
					<header>Placement Drive</header>
				</div>
			</div>
		
		
			<div class="row">
			<div class="form-outer">
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
				<form action='<spring:url value="/save_create_drive"/>' method="post">
					<div class="page slide-page ">
						<div id="personal">
							<div class="row">
								<div class=" col-sm-12 title">Create Drive:</div>
								<div class="col-sm-12 mt-3 ">
									<hr>
										<h3 style="color:green;">${requestScope.message}</h3>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label d-flex  label ">
									Company Name:</label>
								<div class="col-sm-5 mt-3">
									<input type="text" name="cname"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">
									Package:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="package1"  required>
								</div>
                            <label class=" col-sm-1 mt-3 col-form-label label ">Job Location:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="location"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Apply Link:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="link"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Job Role:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="text" name="jobdesignation"  required>
								</div>
								<label class=" col-sm-1 mt-3 col-form-label label ">Drive Date:</label>
								<div class="col-sm-5 mt-3 ">
									<input type="date" name="date"   min="2023-05-08" required>
								</div>
								
								
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Eligibility Criteria:</label>
								<div class="col-sm-11 mt-3 ">
									<textarea name="criteria" rows="5" cols="80" type="text" required></textarea>
								</div>

								<label class=" col-sm-2 mt-3 col-form-label label ">
									Job Description:</label>
								<div class="col-sm-10 mt-3 ">
									<textarea name="jD" rows="5" cols="80" type="text" required></textarea>
								</div>
								
								<label class=" col-sm-1 mt-3 col-form-label label ">Selection Process:</label>
								<div class="col-sm-5 mt-3 ">
									<textarea rows="5" cols="80" name="process" type="text" required></textarea>
								</div>	<br><br><br><br>
							
								<button id="next1" class="col-sm-3 next-1 next ">Submit</button>
								<div class="col-sm-12 mt-5"></div>
								<div class="col-sm-12 mt-5 field">
								    <div class="col-sm-9"></div>
									

</div>
								</div>
							</div>
						</div>
				</form>
			
</body>
</html>



<%}%>