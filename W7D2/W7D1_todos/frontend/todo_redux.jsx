import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store.js';
import {receiveTodos, receiveTodo, removeTodo} from './actions/todo_actions.js';
import App from './components/app.jsx';
import Root from './components/root.jsx';
import allTodos from './reducers/selectors.js';

// class Root extends React.Component{
//
//   render() {
//     return (
//       <h1>Todos App</h1>
//     );
//   }
// }
window.allTodos = allTodos;
window.receiveTodos = receiveTodos;
window.receiveTodo = receiveTodo;
window.removeTodo = removeTodo;

document.addEventListener("DOMContentLoaded", ()=> {
  const store = configureStore();
  window.store = store;

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
  // ReactDOM.render(<Root />, root);
});
