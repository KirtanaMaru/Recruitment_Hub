<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    if ((session.getAttribute("userdetails") == null) || (session.getAttribute("userdetails") == "")) {
%>
 <c:redirect url="./"></c:redirect>
<%}else{%>







<%@include file="include/header.jsp"%>
    
   <body>
    
     <center><p class="head1"><h3>Placement Drives</h3></p></center>
     <hr>
     
      <div class="row">
      <c:forEach var="t" items="${sessionScope.appliedstudentList}"> 
  <div class="column">
  
    <div class="card">
   
      <p  id="left0"><i>Company Name : ${t.cid.getCname()}</i></p>
      <p class="left1"><i>Package : ${t.cid.package1}</i></p>
      
      <hr>
      <p class="left3"><b>Location : </b>${t.cid.location}</p>
      <p class="left5"><i><b>Drive Date : </b>${t.cid.date}</i></p>
      
      <p class="left2"><b>Designation : </b> ${t.cid.jobdesignation}</p>
     
      <p id="left4"><b>Apply Link : </b><a class="left8" href="${t.cid.link}">${t.cid.link }</a></p>
       <br><br>
      <div style="margin-top:-5px;"><a href='<spring:url value="/AppliedStudent?cid=${t.cid}"/>' id="view">View</a>
      <a  id="apply2">Applied</a></div>
     </div>
      
  </div>
 </c:forEach>
  </div>
  
      
   
  
  
   
  </section>
  
  
  
  
  
  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}


 </script>
 
 	<script>
        function disableBtn(){
           document.getelementById("apply").disabled=true;
        }
</script>


<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('#dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<script>
 function myFunction44() {
 var x = document.getElementById("dropdown-container1");
 if (x.style.display === "none") {
   x.style.display = "block";
 } else {
   x.style.display = "none";
 }
 var y = document.getElementById("dropdown-container2");
 if (y.style.display === "none") {
   y.style.display = "block";
 } else {
   y.style.display = "none";
 }

}
 </script>
</body>
</html>

</body>
</html>
<%}%>
         