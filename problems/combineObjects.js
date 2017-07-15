var oldVisit = { name: 'Mary', page: 'apple.com', group: 'student' }
var newVisit = { name: 'Mary', page: 'google.com', group: 'student' }

const visitor = (oldVisit, newVisit) => {
  let keys = Object.keys(newVisit);

  const result = {};

  keys.forEach( key => {
    if (oldVisit[key] === newVisit[key]) {
      result[key] = oldVisit[key];
    } else {
      result[key] = [oldVisit[key], newVisit[key]];
    }
  })
  
  return result;
}

// console.log(Object.keys(oldVisit));
console.log(visitor(oldVisit, newVisit));

// visitor = {name: 'Mary', page: ['apple.com', 'google.com'], group: 'student' }