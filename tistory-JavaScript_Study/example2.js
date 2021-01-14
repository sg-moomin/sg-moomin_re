function foodCheck(food, foodNeed){
    var count = 0;
    while(food <= foodNeed){
        if(food >= foodNeed){
          break;
        } else {
          // console.log("food : " + food + " count : " + count);
          food += 2;
          count += food;
        }
    }
    return count;
}

console.log(foodCheck(3, 100));

// test2
var cats = ['a', 'b', 'c', 'd', 'e', 'f'];
var info = 'information';
let i = 0;

do {
  if (i === cats.length - 1) {
    info += 'and ' + cats[i] + '.';
  } else {
    info += cats[i] + ', ';
  }
  i++;
} while (i < cats.length);

console.log('info : ' + info);

// object

var sg_moomin = {
  name : ['sg', 'moo'],
  age : 27,
  gender : 'man',
  interests : ['music', 'cook'],
}

console.log(sg_moomin)
console.log(sg_moomin.name[0])


var person1 = {
  name: 'Chris',
  greeting: function() {
    alert('Hi! I\'m ' + this.name + '.');
  }
}

console.log(person1)

// document - cheerio, jsdom,
