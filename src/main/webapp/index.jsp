<html>
	<head>
		<title>Practice</title>
		<script type="text/javascript" src="lib/angular.min.js"></script>
		<script type="text/javascript" src="js/todo.js"></script>
		
		<link rel="stylesheet" href="todo.css">
	</head>
	<body ng-app>
		<h2>ToDo</h2>	
		<div ng-controller="TodoListController as todoList">
			<span>{{todoList.remaining()}} of {{todoList.todos.length}} remaining</span>
			<label>Name:</label>
			<input type="text" ng-model="yourname" placeholder="Enter your name here"/>
			<hr>
			<h1>Hello {{yourname}}</h1>
		</div>
	</body>
</html>
