void main() {



    int num1 = 10;
    int num2 = 20;
    String operator = '+';
  













    switch (operator) {
      case '+':
        print(num1 + num2);
        break;
      case '*':
        print(num1 * num2);
        break;
      case '-':
        print(num1 - num2);
        break;
      case '/':
        print(num1 / num2);
        break;
      default:
        print('Invalid operator');
    }
}