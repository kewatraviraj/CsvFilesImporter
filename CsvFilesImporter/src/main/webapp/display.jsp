<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Details</title>
<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">-->

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<!--

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
-->

	
<script
	src="https://code.jquery.com/jquery-3.3.1.js"></script>	
<!--
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
-->
	
	
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<title>Data </title>
</head>

<body>

	<table id="example" class="display" style="width:100%; text-align:center">
        <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>length</th>
                <th>height</th>
                <th>Area</th>
                <th>Nr</th>
            </tr>
        </thead>
        <tbody>
           <c:forEach items = "${listData}" var = "listDetail">
                <tr>
                <td><c:out value = "${listDetail.name}" /></td>
                <td><c:out value = "${listDetail.description}" /></td>
                <td><c:out value = "${listDetail.length}" /></td>
                <td><c:out value = "${listDetail.height}" /></td>
                <td><c:out value = "${listDetail.area}" /></td>
                <td><c:out value = "${listDetail.nr}" /></td>
            </tr>
           </c:forEach>
           
        </tbody>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>

	<script>
	$(document).ready(function() {
    $('#example').DataTable( {
        "language": {
            "lengthMenu": "Display _MENU_ records per page",
            "zeroRecords": "Nothing found - sorry",
            "info": "Showing page _PAGE_ of _PAGES_",
            "infoEmpty": "No records available",
            "infoFiltered": "(filtered from _MAX_ total records)"
        }
    } );
} );
	</script>

</body>

</html>