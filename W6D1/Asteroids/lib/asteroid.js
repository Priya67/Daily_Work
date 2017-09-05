const MovingObject = require('./moving_object');
const Util = require('./util');

function Asteroid(options = {}) {
  options.pos = null;
  options.vel = null;
  options.color = Asteroid.COLOR;
  options.radius = Asteroid.RADIUS;

  MovingObject.call(this, options);

  // Return a randomly oriented vector with the given length.


  // Other properties are filled in for you.
}

Asteroid.COLOR = 'blue';
Asteroid.RADIUS = 5;


Util.inherits(Asteroid, MovingObject);
new Asteroid({ pos: [30, 30] });

module.exports = Asteroid;
