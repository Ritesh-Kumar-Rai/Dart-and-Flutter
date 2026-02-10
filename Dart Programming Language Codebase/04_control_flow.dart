// control flow

void main() {
  int a = 10;

  // if statement
  if (a >= 10) {
    print("a is greater than 10");
  }

  // if...else statement
  if (a < 10) {
    print("a is less than 10");
  } else {
    print("a is greater or might be equal to 10.");
  }

  // if ... elseif ... else statement
  if (a < 10) {
    print("a is less than 10.");
  } else if (a == 10) {
    print("a is 10.");
  } else {
    print("a is greater than 10.");
  }

  // Note: DART does not have `===` operator like JS, because DART already type strict by nature which checks value and type when we use `==` operator.
  // identical() (Reference Equality): This is the closest equivalent to checking if two variables point to the exact same memory address.
  int first = 10;
  int second = 10;
  int third = first;
  print((first, second, third));
  // example of == operator
  print(first == second);
  print(identical(first, second));
  print(
    identical(first, third),
  ); // why same because first and second has same value the dart pointing second to first variable memory address for optimization.. cool
  print(10 == "10"); // ❌ COMPILE ERROR (Cannot compare int and String)
  if (10 != '10') {
    print(12000);
  }

  // nested if else
  if (first != a) {
    if (first > a) {
      print("first is greater than a");
    } else {
      print("first is less than a");
    }
  } else {
    print("Both a and first has same value");
  }

  const int code = 200;

  // ternary if..else
  var status = (code == 200) ? 'success' : 'failed';
  print(status);
}
