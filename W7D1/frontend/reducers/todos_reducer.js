import {RECEIVE_TODOS, RECEIVE_TODO} from '../actions/todo_actions.js';

const initialState = {
  1: {
    id: 1,
    title: 'wash car',
    body: 'with soap',
    done: false
  },
  2: {
    id: 2,
    title: 'wash dog',
    body: 'with shampoo',
    done: true
  },
};

const todosReducer = (state = initialState, action) => {
  let newState = {};

  switch(action.type) {
    case RECEIVE_TODOS:
      Object.assign(newState, state);
      (action.todos).forEach((arg) => {
        newState[arg.id] = arg;
      });
      return newState;

    case RECEIVE_TODO:
      Object.assign(newState, state);
      newState[action.todo.id] = action.todo;
      return newState;

    default:
    return state;
  }
};

export default todosReducer;


// const fruitReducer = (state = [], action) => {
//   Object.freeze(state);
//   switch(action.type) {
//     case 'ADD_FRUIT':
//       return [
//         ...state,
//         action.fruit
//       ];
//     default:
//       return state;
//   }
// };
//
// export default fruitReducer;
