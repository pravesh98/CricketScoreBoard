<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
</head>
<body ng-app="myApp">

	
<form action="upload" method="post" enctype="multipart/form-data">
    <input type="text" name="description" />
    <input type="file" name="file" />
    <input type="submit" name="upload"/>
</form>


	<div ng-controller="JSONController">
	Hello Pravesh 
	{{test}} 
	
	
	<p ng-repeat="del in delivery">
		  
		  <p ng-show="del.innings.inning[0]">
			<p ng-repeat="aa in del.innings.inning[0]">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			 {{ aa }}
		<br><br><br><br><br><br>
		</p>
			  
		  </p>
		--------------------------------------
		--------------------------------------
		
		<br>
		<br>
		<br>
	</p>
	
	
	</div>
	<script type="text/javascript">
		
		var application=angular.module("myApp",[])	
		application.controller("JSONController",function($scope,$http){
			$scope.test=" good morning";
			$http.get('sam.txt')
			
			.success(function(data){
				$scope.delivery=data;
			})
			.error(function(data){
				console.error("failure",status,data);
				$scope.delivery={};
			})
		});
	</script>
</body>
</html>