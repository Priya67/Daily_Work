import React from 'react';
import { Provider } from 'react-redux';
import App from './app.jsx';
import configureStore from '../store/store.js';

const Root = ({ store }) => (
  <Provider store={ store }>
    <App />
  </Provider>
);

export default Root;
