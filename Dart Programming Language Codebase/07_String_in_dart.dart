void main() {
  String name = "Ritesh Kumar Rai";
  var chant = "Hare Krsna";

  print("$name chants $chant");

  // some properties of string
  print(chant.length);
  print(chant.isEmpty);
  print(chant.isNotEmpty);

  // some methods
  print(name.toLowerCase());
  print(name.toUpperCase());
  print("  krsna   ".trim()); // others are trimLeft() and trimRight()
  print("CREDIT CARD No.: ${'7353'.padLeft(15, 'X')}"); // other are padRight()
  print(name.startsWith("Ritesh"));
  print(name.endsWith("Ritesh"));
  print(name.endsWith("Rai"));
  print(name.indexOf('a')); // if not match then -1 (case-sensitive)
  print(
    name.split(' '),
  ); // split converts the string into a list based on a pattern

  String convertedStr = [1, 2, 4].toString();
  print('$convertedStr -> [datatype: ${convertedStr.runtimeType}]');

  print("\n Hare \t krsna.\n");
  print(
    r"\n Hare \t krsna.\n",
  ); // Creates a raw string that ignores escape characters.
}
