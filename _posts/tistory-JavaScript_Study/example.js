// alert();
// alert("sg-moomin");

// operators
var number1 = 330;
var number2 = 1330;
console.log(number1 + number2);
console.log(number1 - number2);
console.log(number1 * number2);
console.log(number1 / number2);


var firstName = "sg-moomin";
console.log(firstName);
console.log(133+24);


var Lights = false;
Lights = true;
console.log(Lights);

var weather = "rainy";
weather = "sunny";
console.log(weather);

// Function
function addNumber(x, y, z){
  return x + y + z;
}

console.log("addNumber : " + addNumber(number1, number2, 299));


function selectCheck(x, y){
  if(x == y){
    var outCome = "일치합니다.";
  } else {
    var outCome = "일치하지 않습니다.";
  }
  return outCome;
}

console.log("selectCheck : " + selectCheck(number1, number2));

// array

var dinner = ["사과", "밥", "김치볶음밥", "닭가슴살비빔밥", "떡볶이"];
console.log(dinner);
console.log(dinner[2]);
console.log(dinner.length - 1);
console.log(['포테이토칩'].concat(['사과', "감자칩"]));
console.log(dinner.push(2));
console.log(dinner.reverse());

// object
var sg_moomin = {
    name : "무민",
    startPoint : "2020-10",
    email : "sg-moomin",
    number : "010-1234-1236"
}

console.log(sg_moomin);
console.log(sg_moomin.email);

sg_moomin['email'] = "None page";
console.log(sg_moomin);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions

const factorial = function fac(n) {
  return n < 2 ? 1 : n * fac(n - 1)
 }
console.log(factorial(3))

function map(x, y){
  let result = [];
}


// let const var (https://gist.github.com/LeoHeo/7c2a2a6dbcf80becaaa1e61e90091e5d 참고)
// var a = 'test'
// var a = 'test2'
// a = 'test3'
//
// let b = 'test'
// let b = 'test2' // has already been declared
// b = 'test3'
//
// const c = 'test'
// const c ='test2' //dentifier 'c' has already been declared
// c = 'test3' // Assignment to constant variable.
