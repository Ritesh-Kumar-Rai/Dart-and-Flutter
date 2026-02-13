/** Datatypes in DART (detail exploration):
 * 1. Number
 *    a. Keywords: int, double, num, BigInt
 *    b. Description: Numbers in Dart are used to represent numeric literals.
 * 2. Strings
 *    a. Keywords: String
 *    b. Description: Strings represent a sequence of characters.
 * 3. Booleans
 *    a. Keywords: bool
 *    b. Description: It represents Boolean values true and false.
 * 4. Lists
 *    a. Keywords: List
 *    b. Description: An ordered list of elements (like arrays in other languages).
 * 5. Sets
 *    a. Keywords: Set
 *    b. Description: A list of distinct elements (unsorted).
 * 6. Maps
 *    a. Keywords: Map
 *    b. Description: Collection of key-value pairs where keys are unique.
 * 7. Runes
 *    a. Keywords: Runes
 *    b. Description: Used for manipulating Unicode characters (although characters API is now preferred).
 * 8. Symbols
 *    a. Keywords: Symbol
 *    b. Description: It is an identifier symbol, which is primarily utilized in reflection and debugging.
 * 8. Null
 *    a. Keywords: Null
 *    b. Description: Represents the lack of a value.
 */

void main() {
  // 1. Numbers:
  print(('-' * 10) + "1. Numbers:" + ('-' * 10));

  int num1 = 50;
  double num2 = 100.5;
  var sum = num1 + num2;
  print("Sum of num1 and num2 is: $sum");
  BigInt bigNum = BigInt.parse('88747474748484376363633');
  print(bigNum);

  // 2. Strings:
  print(('-' * 10) + "2. Strings:" + ('-' * 10));

  String myName = "Ritesh Kumar Rai";
  print(myName); // print the string
  String str1 = "Dart";
  String str2 = ' is ';
  String str3 = 'great';
  // concatenation
  print(str1 + str2 + str3);

  // 3. Boolean (true/false):
  print(('-' * 10) + "3. Boolean:" + ('-' * 10));

  bool isActive = true;
  print(isActive);
  bool areBothSame = (num1 == num2);
  print(areBothSame);

  // Note List, Set and Map will be covered in details in the upcoming chapters

  // 7. Runes
  print(('-' * 10) + "7. Runes:" + ('-' * 10));

  // Unicode for heart symbol (♥)
  String heart = '\u2665';

  // Unicode for smiley face (☺)
  String smiley = '\u263A';

  // Unicode for star symbol (★)
  String star = '\u2605';

  // Unicode for musical note (♫)
  String musicNote = '\u266B';

  // Printing all Unicode symbols
  print(heart); // Output: ♥
  print(smiley); // Output: ☺
  print(star); // Output: ★
  print(musicNote); // Output: ♫

  // 8. Symbols
  print(('-' * 10) + "8. Symbols:" + ('-' * 10));

  Symbol sym1 = #mySymbol;
  Symbol sym2 = Symbol("anotherSymbol");

  print(sym1);
  print(sym2);

  // 9. Null:
  print(('-' * 10) + "9. Null:" + ('-' * 10));

  String? name; // Can be null
  int? age; // this also can be null

  print(
    '$name : $age [type: (name -> ${name.runtimeType}) (age -> ${age.runtimeType})]',
  );
  name = "Dart";
  age = null;
  print(name ?? "Unknown");
  print(age ?? "No age provided");

  // find length
  print(name?.length);
}
