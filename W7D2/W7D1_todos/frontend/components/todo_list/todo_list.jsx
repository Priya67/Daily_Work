import React from 'react';
import TodoListItem from './todo_list_item';
import TodoForm from './todo_form';

class TodoList extends React.Component {
  render() {
    const props = this.props;
    const listItems = [];
    props.todos.forEach((prop) => {
      listItems.push(<TodoListItem key={prop.id} todo={prop} receiveTodo={ props.receiveTodo }/>);
    });

    return (
      <div>
        <ul>
          { listItems }
        </ul>
        <TodoForm receiveTodo={ props.receiveTodo }/>
      </div>
    );
  }
}

export default TodoList;
