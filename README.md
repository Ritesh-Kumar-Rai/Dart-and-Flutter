# Dart Programming Language And Flutter Tutorial Codes

## Dart Syllabus

### Phase 1: The Fundamentals (The "Don't Trip" Stage)

Before we get fancy, you need to understand how Dart handles data. It’s a statically typed language, meaning it cares about what’s what.

- Variables & Data Types: int, double, String, bool. Understand var vs dynamic (and why you should almost never use dynamic).

- Safety First: Null Safety. This is where most beginners fail. Learn ?, !, and late.

- Control Flow: if/else, switch (the new patterns in Dart 3 are powerful), and loops.

- Collections: List, Map, and Set. Know when to use a Set over a List (hint: uniqueness and speed).

### Phase 2: Functional Mastery

In modern dev, we don't just write instructions; we write clean, reusable logic.

Functions: Positional vs. Named parameters.

Required vs. Optional: Making your APIs (and Flutter widgets) readable.

Arrow Syntax: For that clean, one-liner logic: void log(msg) => print(msg);.

Higher-Order Functions: Mastering .map(), .where(), and .reduce(). This is how you manipulate data in Flutter.

Phase 3: Object-Oriented Programming (The "Architecture" Stage)
This is where the "20-year dev" in me gets picky. Flutter is "Widgets all the way down," and Widgets are Classes.

Classes & Constructors: Default, Named, and Const constructors (huge for Flutter performance).

Inheritance vs. Mixins: Dart doesn't have multiple inheritance, but it has mixins. Learn them; they are your secret weapon.

Interfaces & Abstract Classes: Designing a "contract" for your code.

Extensions: Adding functionality to existing libraries without touching their source code.

Phase 4: Asynchronous Programming (The "Real World")
The internet is slow. Your code shouldn't be.

The Event Loop: Understanding how Dart handles one thing at a time.

Futures: Handling data that isn't there yet (API calls).

Async/Await: Making async code look like synchronous code.

Streams: The backbone of "Reactive Programming." Think of a pipe of data that never stops.

### 3. Summary of Parameters for HOFs

Function Callback Parameters Description
.map((e)) 1 (Element) Transforms the element.
.where((e)) 1 (Element) Returns true/false for that element.
.any / .every 1 (Element) Checks a condition on the element.
.reduce((a, b)) 2 (Prev, Curr) Combines two elements of the same type.
.fold(init, (a, b)) 2 (Total, Curr) Combines initial value with current element.
List.forEach((e)) 1 (Element) Performs an action on the element.
Map.forEach((k, v)) 2 (Key, Value) Performs an action on key-value pairs.
