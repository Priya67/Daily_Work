import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './frontend/clock';
import Weather from './frontend/weather';


class Root extends React.Component {
  render() {
    return(
      <div>
        <Clock/>
        <Weather/>
        console.log("Hey");
      </div>
    );
  }
}

document.addEventListener("DOMContentLoaded", () => {
	ReactDOM.render(<Root/>, document.getElementById('main'));
});
