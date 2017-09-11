import React from 'react';

class Clock extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      this.time = new Date();
    };
    this.tick = this.tick.bind(this);
  }

  componentDidMount() {
    this.intervalId = setInterval(this.tick, 1000);
  }

  componentWillMount() {
    this.intervalId.clearInterval();
  }

  tick() {
    this.setState({time = new Date()});
  }

  render() {
    return (
      <div>
        <h1>Clock</h1>
        <div>
          <p>Time:  {this.State.time.getHours()}:
                    {this.State.time.getMinutes()}
                    {this.State.time.getSeconds()}
          </p>
          <p>date:{this.state.time.toDateString()}</p>
        </div>
      </div>
    );
  }
}


export default Clock;
