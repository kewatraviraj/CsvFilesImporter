<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Upload File Request Page</title>
</head>

<body>

<div class="container">
    <h2 style="text-align: center; margin-top: 2em">
        Upload Your File With .csv Extension
    </h2>
<div class="row">
	<!--<form method="POST" action="uploadFile" enctype="multipart/form-data">
		File to upload: <input type="file" name="file"><br /> 
		Name: <input type="text" name="name"><br /> <br /> 
		<input type="submit" value="Upload"> Press here to upload the file!
	</form>-->
	
	
	<form method="POST" action="uploadFile" enctype="multipart/form-data" style="margin: 2em; padding: 2em">
   
    <div class="form-group">
      <label for="email">File to upload:</label>
      <input type="file" class="form-control" id="file" placeholder="Upload your file" name="file">
    </div>
   
      <div class="form-group">
      <label for="pwd">File Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name of file" name="name">
     </div>

    <button type="submit" class="btn btn-default">Submit</button>
  </form>
	
	
	
	
</div>

<div class="row" style="margin: 2em; padding: 2em">

   <a href="display"><button type="button" class="btn btn-primary btn-lg btn-block">Click here to view all the data</button></a>


</div>

</div>	

</body>

</html>
	

