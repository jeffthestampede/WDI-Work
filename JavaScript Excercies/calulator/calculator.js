// Create a calculator in JavaScript.
// Requirements

// Prompt the user to enter an operator and two operands.
// Support the following operations: addition, subtraction, multiplication, and division.
// Output may appear in the console or in an alert.
// Bonus
// Support the modulus operator.
// Support the square root operator.
// Support more than two operands.

var operand1 = prompt("Enter first operand");
var operand2 = prompt("Enter second operand");
var operator = prompt("Enter operator (+,-,/,*)");



function calulator(operand1, operand2, operator) {
  var result;
  switch (operator) {
  case "+":
    result = parseFloat(operand1,10) + parseFloat(operand2,10);
    return result;
  case "-":
    result = parseFloat(operand1,10) - parseFloat(operand2,10);
    return result;
  case "*":
    result = parseFloat(operand1,10) * parseFloat(operand2,10);
    return result;
  case "/":
    result = parseFloat(operand1,10) / parseFloat(operand2,10);
    return result;
  }
}
//   if (operator === "+") {
//     result = parseFloat(operand1,10) + parseFloat(operand2,10);
//     return result;
//   } else if (operator === "-") {
//     result = parseFloat(operand1,10) - parseFloat(operand2,10);
//     return result;
//   } else if (operator === "/") {
//     result = parseFloat(operand1,10) / parseFloat(operand2,10);
//     return result;
//   } else if (operator === "*") {
//     result = parseFloat(operand1,10) * parseFloat(operand2,10);
//     return result;
//   }
// }

console.log(operand1);
console.log(operator);
console.log(operand2);
console.log(calulator(operand1, operand2, operator));
