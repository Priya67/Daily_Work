import React from 'react';
import TodoList from './todo_list';

const TodoListItem = (props) => {

    return (
      <li>{props.todo.title}</li>
    );


};

export default TodoListItem;
