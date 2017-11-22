import React from 'react';
import TodoList from './todo_list';
import uniqueId from '../../util/util';


class TodoForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: '',
      body: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(e, field) {
    this.setState({[field]: e.currentTarget.value});

  }

  handleSubmit(e) {
    e.preventDefault();
    const todo = Object.assign(this.state, { id: uniqueId() });
    this.props.receiveTodo(todo);
  }

  render() {
    return (
      <form onSubmit={ this.handleSubmit }>
        <label>Title
          <input type='text' name='title' onChange={(e) => this.handleInput(e, "title")} value={this.state.title}></input>
        </label>

        <label>Body
          <input type='text' name='body' onChange={(e) => this.handleInput(e, "body")} value={this.state.body}></input>
        </label>

        <button type='submit'>Create To-Do</button>
      </form>
    );
  }
}

export default TodoForm;
