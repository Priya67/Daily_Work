import React from 'react';

class Weather extends React.Component {
    constructor(props) {
      super(props);
      this.state {
        weather: null,
        position: [0,0,0,0,0]
      };
    }

    componentDidMount() {
    navigator.geolocation.getCurrentPosition(this.State.position);
  }
}

export default Weather;


// API Key: 5cc2ef0d3951fc96881d7f63ca8357ae
