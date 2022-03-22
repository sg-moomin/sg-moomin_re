// boolean - comparison
console.log(true);
console.log(false);


var number1 = 20;
var number2 = 41;

console.log(number1 == number2);
console.log(number1 != number2);
console.log(number1 >= number2);
console.log(number1 <= number2);
console.log(number1 === number2);
console.log(number1 === number2);

if(number1 != number2){
  console.log("일치하지 않습니다.");
} else{
  console.log("일치합니다.");
}

//

var args = process.argv;
console.log(args[1]);
