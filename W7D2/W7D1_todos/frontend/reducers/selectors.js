// export const getAllTodos = ({ todos }) => (
// 	Object.keys(todos).map(id => todos[id])
// );


export const allTodos = ({ todos }) => {
  console.log(todos);
  return Object.keys(todos).map(id => todos[id]);
};
