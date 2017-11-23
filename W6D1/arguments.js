function sum1(nums) {
  let sum = 0;

  for(let i = 0; i<arguments.length; i++) {
      sum += arguments[i];
  }
  return sum;
}

console.log(sum1(1,2,3,4));


function sum2(...nums) {
  let sum = 0;
  for(let i = 0; i<nums.length; i++) {
      sum += nums[i];
  }
  return sum;
}

console.log(sum2(1,2,3,4));
//
// Function.prototype.myBind = function (ctx, ...bindTime) {
//   console.log(this);
//   return () => this.apply(ctx, bindTime);
// };
//

Function.prototype.myBind1 = function (ctx, ...bindTime) {
  const fn = this;
  return function(...callTime) {
    return fn.apply(ctx, bindTime.concat(callTime));
  };
};


Function.prototype.myBind2 = function (ctx, bindTime) {
  const fn = this;
  const args = Array.from(arguments).slice(1);
  return function(callTime) {
    // console.log();
    return fn.apply(ctx, args.concat(Array.from(arguments)));
  };
};


class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

// const markov = new Cat("Markov");
// const breakfast = new Cat("Breakfast");
//
// console.log(markov.says("meow", "Ned"));
// // Markov says meow to Ned!
// // true
//
// // bind time args are "meow" and "Kush", no call time args
// markov.says.myBind2(breakfast, "meow", "Kush")();
// // Breakfast says meow to Kush!
// // true
//
// // no bind time args (other than context), call time args are "meow" and "me"
// markov.says.myBind2(breakfast)("meow", "a tree");
// // Breakfast says meow to a tree!
// // true
//
// // bind time arg is "meow", call time arg is "Markov"
// markov.says.myBind2(breakfast, "meow")("Markov");
// // Breakfast says meow to Markov!
// // true

function curriedSum(numArgs) {
  let numbers = [];
  var _curriedSum = function (num) {
    numbers.push(num);
    if (numbers.length === numArgs) {
      let sum = 0;
      for (let i = 0; i < numbers.length; i++) {
        sum += numbers[i];
      }
      return sum;
    }

  };
  return _curriedSum;
}

Function.prototype.curry1 = function (numArgs) {
  let params = [];
  const fn = this;
  var _curry = function(param) {
    params.push(param);
    if (params.length === numArgs) {
      return fn(...params);
    }
  };
  return _curry;
};

Function.prototype.curry2 = function (numArgs) {
  let params = [];
  const fn = this;
  var _curry = function(param) {
    params.push(param);
    if (params.length === numArgs) {
      return fn.apply('lol', params);
    }
  };
  return _curry;
};



function join(strings) {
  const arr = Array.from(arguments);
  console.log(arr);
  return Array.from(arguments).join(' ');
}
