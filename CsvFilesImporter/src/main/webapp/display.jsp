<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<title>Details</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	
<script
	src="https://code.jquery.com/jquery-3.3.1.js"></script>	
	
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<title>Data </title>

</head>

<body>
<div class="container">

       <h2 style="text-align: center; margin-top: 2em">
        <b>Goods Details</b>
        </h2>
	<table id="example" class="display" style="width:100%; text-align:center">
        <thead>
            <tr class="row">
                <th class="col-sm-2">Name</th>
                <th class="col-sm-2">Description</th>
                <th class="col-sm-2">length</th>
                <th class="col-sm-2">height</th>
                <th class="col-sm-2">Area</th>
                <th class="col-sm-2">Nr</th>
            </tr>
        </thead>
        <tbody >
          <c:forEach items = "${listData}" var = "listDetail">
                <tr class="row">
                <td class="col-sm-2"><c:out value = "${listDetail.name}" /></td>
                <td class="col-sm-2"><c:out value = "${listDetail.description}" /></td>
                <td class="col-sm-2"><c:out value = "${listDetail.length}" /></td>
                <td class="col-sm-2"><c:out value = "${listDetail.height}" /></td>
                <td class="col-sm-2"><c:out value = "${listDetail.area}" /></td>
                <td class="col-sm-2"><c:out value = "${listDetail.nr}" /></td>
            </tr>
           </c:forEach>
          <!--   <tr class="row">
                <td class="col-sm-2">ABC</td>
                <td class="col-sm-2">DEF</td>
                <td class="col-sm-2">GHI</td>
                <td class="col-sm-2">JKL</td>
                <td class="col-sm-2">MNO</td>
                <td class="col-sm-2">PQR</td>
            </tr>
            -->
        </tbody>
        <tfoot>
            <tr class="row">
                <th class="col-sm-2">Name</th>
                <th class="col-sm-2">Position</th>
                <th class="col-sm-2">Office</th>
                <th class="col-sm-2">Age</th>
                <th class="col-sm-2">Start date</th>
                <th class="col-sm-2">Salary</th>
            </tr>
        </tfoot>
    </table>
    </div>
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