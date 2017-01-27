<html>
	<head>
		<title>Practice</title>
		<script type="text/javascript" src="lib/angular.min.js"></script>
		<script type="text/javascript" src="js/todo.js"></script>
		
		<link rel="stylesheet" href="css/todo.css">
	</head>
	<body ng-app="todoApp">
		<h2>ToDo</h2>	
		<div ng-controller="TodoListController as todoList">
			<span>{{todoList.remaining()}} of {{todoList.todos.length}} remaining</span>
			[<a href="" ng-click="todoList.archieve">archive</a>]
			
			<ul class="unstyled">
				<li ng-repeat="todo in todoList.todos">
					<label class="checkbox">
						<input type="checkbox" ng-model="todo.done">
						<span class="done-{{todo.done}}">{{todo.text}}</span>
					</label>
				</li>
			</ul>
			<form ng-submit="todoList.addTodo()">
				<input type="text" ng-model="todoList.todoText" size="30"
					placeholder="add new todo here">
				<input class="btn-primary" type="submit" value="add">
			</form>
		</div>
	</body>
</html>
