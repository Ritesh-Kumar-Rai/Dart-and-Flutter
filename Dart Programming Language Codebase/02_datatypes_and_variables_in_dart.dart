DateTime getData() {
  // print(DateTime.now());
  print(DateTime.now().runtimeType);
  return DateTime.now();
}

void main() {
  // DataTypes in DART
  /**
   * 1. int: for whole numbers (integers)
   * 2. double: for 64bit floating-point numbers
   * 3. num: for both either integer or float numbers
   * 4. String: for string value can be used ('', "")
   * 5. bool: for boolean values (true/false) 
   * 6. Records ((value1, value2)): (New in Dart 3.0) Anonymous, immutable aggregate types that allow you to return multiple values from a function easily.
   * 7. Collection Lists:
   *    a. Lists (List): Ordered groups of objects (similar to Arrays).
   *    b. Sets (Set): Unordered collections of unique items.
   *    c. Maps (Map): Key-value pairs (similar to Dictionaries or JSON objects). 
   */

  // Variables:

  //A. The "I’m sure" Types (Explicit)
  String name = "Ritesh Kumar Rai";
  int age = 25;
  double version = 3.9;
  bool isDeveloper = true;

  print(name);
  print(age);
  print(version);
  print(isDeveloper);
  // or string interpolation
  print("$name $age $version $isDeveloper");
  // or printing by grouping values using records
  print((name, age, version, isDeveloper));
  print(name is String); // to check whether it was a expected typed or not

  // check for which type the variable/value was
  print(age.runtimeType);
  print(null.runtimeType);

  // B. The "Figure it out" Types (Inferred)
  // Inside methods, we use var. Dart looks at the value and locks the type forever.
  var name1 = 'Architect'; // Dart infers this as a String.
  // name = 10; <--- Error! You can't change the type after it's set.
  print(name1);
  // name1 = "Programmer"; yeah it will works and allowed
  print(name1);

  // C. Constant Variables:  The "Safe Havens" (final vs const)
  /**
    * Immutable data is safer data.

    * 1. final: A "write-once" variable. You can set it at runtime (e.g., getting data from an API), but once set, it’s locked.

    * 2. const: A compile-time constant. It must be known before the app even runs. 
    In Flutter, const widgets stay in memory and don't re-render, saving massive CPU cycles.
   */

  final data;
  data = getData();
  print(data);

  //  or final with type
  final bool isDateTimeTypedValue;
  isDateTimeTypedValue = getData() is DateTime;
  print('Is data is datetime: $isDateTimeTypedValue');

  // The "Null Safety" Revolution
  /**
   * Back in the day, the NullPointerException was the "billion-dollar mistake." Dart solved this with Sound Null Safety.
   * In Dart, variables are non-nullable by default.
   */
  // int age2;
  //print(age2); //  Error: Non-nullable variable 'age2' must be assigned before it can be used.
  int? age3;
  print(age3);

  // The "I Know Better" Operator (!)
  // If you have a nullable variable but you guarantee it isn't null at that moment, you use !.
  //int myAge = age3!; // Dangerous! If it's null, the app crashes.
  // Note: Undefined means the variable isn't declared wheareas Null means the variable declared but it's value isn't initialised

  // The "Default Value" Operator (??)
  int userAge = age3 ?? 18; // If flexibleAge is null, use 18.
  print(userAge);

  // How can i declare a dynamic typed variable like javascript
  dynamic game =
      "Watchdogs 2"; // dynamic data-type allows to turn off the type checking for any variable which was declared using `dynamic`
  print('game name is $game');
  game = 108;
  print('now game is changed to int type: $game');
}
