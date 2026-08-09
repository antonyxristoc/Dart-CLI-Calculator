#!/usr/bin/env dart

import 'dart:io'; // io -> stands for input and ouptut
import 'dart:math';
void main(List<String> args){  
      int factorial(int n) {
        if (n < 0) throw ArgumentError('Factorial needs a non‑negative integer');
        int result = 1;  // 0!

        for (int i = 2; i <= n; i++) result *= i;
        // 

        return result;
      }

      int gcd(int a, int b) {
        a = a.abs(); b = b.abs();
        while (b != 0) {
          int t = a % b;
          a = b;
          b = t;
        }
        return a;
      }

      int lcm(int a, int b) => (a * b) ~/ gcd(a, b);


      print("####### CALCULATOR ######");


      // enter first number
      stdout.write("please enter your first number :  ");

      String userinputcalc = stdin.readLineSync()?? '00';
      int inputNumber = int.tryParse(userinputcalc.trim()) ?? 0;


      int num1 = inputNumber;


      // enter second number
      stdout.write("please enter your second number :  ");

      String userinputcalc2 = stdin.readLineSync()?? '01';
      int inputNumber2 = int.tryParse(userinputcalc2.trim()) ?? 0;


      int num2 = inputNumber2;


      print("Select operation:");
      print("1. Add");
      print("2. Subtract");
      print("3. Multiply");
      print("4. Divide");
      print("5. Modulo (remainder)");
      print("6. Floor Division");
      print("7. Power (x^y)");
      print("8. Square Root");
      print("9. Factorial");
      print("10. Absolute Value");
      print("11. GCD");
      print("12. LCM");
      print("13. Round");
      stdout.write("your option is : ");
      //enter your option 

      String calcOption = stdin.readLineSync()?? '00';
      int calcOptionNum = int.tryParse(calcOption.trim()) ?? 0;


      if(calcOptionNum >= 1 && calcOptionNum <= 13 ){
        //it works

        //enter first number 
        
        if (calcOptionNum == 1){
          print("by Adding the result is ${num1 + num2}");
        }
        if (calcOptionNum == 2){
          print("by Subtracting the result is ${num1 - num2}");
        }
        if (calcOptionNum == 3){
          print("by Multiplying the result is ${num1 * num2}");
        }
        if (calcOptionNum == 4){
          print("by Dividing the result is ${num1 / num2}");
        }
        if (calcOptionNum == 5){
          print("the remainder is ${num1 % num2}");
        }
        if (calcOptionNum == 6) {
          print("Floor division result is ${(num1 ~/ num2)}");
        }
        if (calcOptionNum == 7) {
          BigInt result = BigInt.from(num1).pow(num2); //simply take num1 make in bigint and then power it to num2 and make it bigint
          print("Power ($num1 ^ $num2) is $result");
        }
        if (calcOptionNum == 8) {
          print("Square root of $num1 is ${sqrt(num1)}");
        }
        if (calcOptionNum == 9) {
          print("Factorial of $num1 is ${factorial(num1.toInt())}");
        }
        if (calcOptionNum == 10) {
          print("Absolute value of $num1 is ${num1.abs()}");
        }
        if (calcOptionNum == 11) {
          print("GCD of $num1 and $num2 is ${gcd(num1.toInt(), num2.toInt())}");
        }
        if (calcOptionNum == 12) {
          print("LCM of $num1 and $num2 is ${lcm(num1.toInt(), num2.toInt())}");
        }
        if (calcOptionNum == 13) {
            // num1 and num2 are now double
          print("$num1 rounded is ${num1.round()}");
          print("$num2 rounded is ${num2.round()}");
        }
        }else{
          return;
        }



}
