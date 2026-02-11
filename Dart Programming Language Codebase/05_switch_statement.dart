// switch statement in dart

void main() {
  const int qty = 2;

  // Classic switch statement
  switch (qty) {
    case 1:
      print("qty is 1");
      break;
    case 2:
      print("qty is 2 yay");
      break;
    case 3:
      print("qty is 3");
      break;
    default:
      print("qty is even more than 3");
  }

  const int age = 21;

  switch (age) {
    case <= 18:
      {
        print("you are a Minor");
      }
      break;
    case > 18 && <= 60:
      {
        print("you are an Adult");
      }
      break;
    default:
      print("you are an Senior");
  }

  // Switch Expression (new in Dart 3.0)
  String message = switch (71) {
    <= 18 => "Minor",
    > 18 && <= 60 => "Adult",
    _ => "Senior",
  };

  print(message);
}
