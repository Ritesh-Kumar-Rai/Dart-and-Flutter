/*In Dart programming, List data type is similar to arrays in other programming languages. List is used to representing a collection of objects. It is an ordered group of objects. The core libraries in Dart are responsible for the existence of the List class, its creation, and manipulation.*/

void main() {
  // types of list
  // 1. Fixed Length List
  // 2. Growable List

  // 1. Syntax of Fixed Length List
  // List ? list_Name = List.filled(number of elements, E, growable:boolean);
  List? arr = List.filled(5, null, growable: false);
  print(arr);
  arr[0] = 120;
  for (int i = 1; i < arr.length; i++) {
    arr[i] = i * 5;
  }
  print(arr);
  print("length: ${arr.length}");
  // arr[5] = 255; will cause an error
  // print(arr);

  // fixed via .generate
  List<int> arr2 = List.generate(20, (index) => index + 25);
  print(arr2);
  // modify element
  arr2[0] = arr2[0] * 2;
  print(arr2);

  // 2. Growable List syntax
  List listwa = []; // default <dynamic>
  List? listwa2; // now it accepts null
  List<dynamic> courses = [
    "JS",
    "Frontend Development",
    "Backend Development",
    2025,
    2026,
    false,
  ];

  print(listwa);
  print(listwa2);
  print("A dynamic array/list: $courses");

  // strictly typed list
  List<int> ids = [10, 20, 30];
  print(ids);

  // const vs final in List
  // in const we can't update,add and change the appearance of an list [compile + runtime fixed]
  // in final we can update and add the list but can't change the appearance [runtime fixed]
  const List constArr = [10, 20, 30, true, 'A'];
  // constArr = ['new1', 'new2']; Error: can't assign to constant variable
  //constArr.add(90); // Error: cannot add and modify list
  print(constArr);

  final List finalArr = [1000, 2000, 'krsna'];
  // finalArr = [true, false]; // Error: can't assign to constant variable
  finalArr.add('balram'); // yes can add, change, delete
  print(finalArr);

  // how can i make final list to be unmodifiable
  final List finalArr2 = List.unmodifiable([1, 2, 3, 4, 9]);
  // finalArr2.add(5); Error
  // finalArr2[2] = 90; Error

  // concate 2 lists
  var list1 = [1, 2, 3, 4];
  var list2 = [5, 6, 7, 8];
  List? list3;
  print(list1 + list2);

  // using spread operator
  print([...list1, ...list2, ...?list3]);

  // Collection if
  const isLoggedIn = true;

  List<dynamic> nav = ['Home', 'About', if (isLoggedIn) 'Logout'];

  print(nav);

  // Core properties of List
  print([].isEmpty);
  print([].isNotEmpty);
  print(list1.length);
  print(finalArr.first);
  print(finalArr.last);
  print(
    list1.reversed,
  ); // .reversed: Returns an Iterable of the list in reverse order.

  // built-in methods of list
  // we can divide the methods into 3 categories:
  // a. mutators (adding/removing) [add, addAll, insert, insertAll, remove, removeAt, clear]
  // b. accessors (searching) [indexOf, contains]
  // c. iterators [forEach, map, where, any/every]

  // a. mutators
  List cars = ['hammer ev', 'mercedes benz', 'bmw', 'rolls royce'];
  cars.add('mahindra');
  cars.insert(2, 'tata'); // at the place of bmw tata will placed
  print(cars);
  cars.remove('tata'); // remove by value
  print(cars);
  cars.add('tata');
  print(cars);
  cars.removeAt(cars.length - 1); // remove by index
  print(cars);
  // cars.clear(); // to remove all items
  // print(cars);

  // b. accessors
  print(cars.indexOf('mercedes benz')); // if not found then return -1
  print(cars.contains('mahindra'));

  // c. iterators [all iterators except forEach will returns iterable which are highly optimised and efficient than List]

  // 1. .map<T>((e) => T) — The Transformer
  /// How it works: It takes every item, passes it through a function, and returns a new item.
  /// Usage: Converting "Raw Data" (Maps) into "UI Objects" (Classes).
  /// [Note: <T> stands for "Generic Type" like a datatype or anything which you want's to show that this loop methods will return this type of data]
  var newCars = cars.map<String>((value) => value + ' : year (2026)');
  print(newCars.toList());

  /// without <Generic Type> <T>
  print([1, 2, 4, 5].map((val) => val));

  /// All looping methods does not accept index and list like JS for optimised purpose
  /// like in JS: [].map((val, index, arr) => {...})
  /// But in Dart we have to manually do so, we required to convert list to map then loop through using forEach(), yes forEach is dynamic in List it accepts only 1 argument but in Map it accepts 2 arguments which is key and value.
  print(
    cars.asMap(),
  ); // converted to map like {index:value, ...} where index is key and value is value.
  cars.asMap().forEach((key, value) => print('$key : $value'));

  // 2. forEach((value) => print()): this does not return anything just used to loop through and printing
  cars.forEach((value) {
    print('This is the car name: $value');
  }); // note in map only it accepts 2 arguments which is key, value

  // 3. .where((e) => bool) — The Filter
  /// How it works: It checks every item against a true/false condition. If true, the item stays.
  /// Usage: Searching for a video or filtering "Liked" posts.
  const likesPerVideo = [120, 67, 21, 6739, 890, 35, 23];
  print(
    likesPerVideo.where((likes) => likes > 150),
  ); // show me videos which likes more than 150 peoples

  // 4. .reduce((value, element) => value) — The Combiner
  /// How it works: It "shrinks" the list into a single value by combining items. The return type must be the same as the list type.
  /// Usage: Summing up total video views.
  var prices = [10, 20, 30, 40, 50];
  var sum = prices.reduce((value, element) => value + element);
  print(sum); // result: 150

  // 5. .fold<T>(initialValue, (prev, e) => T) — The Super-Combiner
  /// How it works: Like reduce, but you can start with an initialValue and return a different type.
  /// Usage: Counting how many "Trending" videos exist (List of Objects -> returns an int).
  var orders = [10, 20, 30];
  var message = orders.fold(
    "Total Orders: ",
    (prev, amount) => prev + amount.toString() + ' ',
  );
  print(message);

  // 6. .any((e) => bool) and .every((e) => bool) — The Checkers
  /// How it works: any returns true if one matches. every returns true if all match.
  /// Usage: Checking if a user has any unread notifications.

  List<String> tasks = ["done", "pending", "done"];
  bool isAnyOneTaskDone = tasks.any((task) => task == 'done'); // true
  bool isAllTaskDone = tasks.every((task) => task == 'done'); // false
  print("$isAnyOneTaskDone, $isAllTaskDone");

  // 7. .firstWhere((e) => bool) — The Searcher
  /// How it works: Returns the first actual item that matches.
  /// Usage: Finding a specific user by their ID.
  var users = [
    {"id": 1, "name": "Maruti"},
    {"id": 2, "name": "Ganesh"},
  ];
  var user2 = users.firstWhere((user) => user['id'] == 2);
  print('Searched User is $user2');

  // 8. .expand() — The Flattener
  /// The Goal: If you have a list of lists, turn it into one flat list.
  var pairs = [
    [1, 2],
    [3, 4],
    [5, 6, 7],
    [
      8,
      [9, 10],
    ],
  ];
  var flat = pairs.expand((pair) => pair).toList();
  print(flat);

  /// Since expand() only works on 2D array if the array is deeply nested then it fails, to fix it we need to create a new recursion function
  Iterable<dynamic> flattenDeep(Iterable<dynamic> list) {
    return list.expand((el) => el is Iterable ? flattenDeep(el) : [el]);
  }

  print(flattenDeep(pairs).toList());

  print(
    [].firstWhere((val) => val.startsWith('a'), orElse: () => 'List is empty'),
  );

  // The orElse is a functional safety feature which supported by firstWhere, lastWhere, singleWhere methods as 2nd argument
  var arr3 = [];
  for (int i = 0; i <= 100000000; i++) {
    arr3.add(i);
  }
  var find = 100000;
  arr3.add(find);

  print(arr3.firstWhere((v) => v == find));
  // lastWhere() starts iterating from last then if it finds the item it returns those last element
  print(arr3.lastWhere((v) => v == find));

  // print(arr3.singleWhere((v) => v == find)); // will throw an error: too many elements
  // print(arr3.singleWhere((v) => v == find, orElse: () => null)); // will not throw an error if item is not exists rather returns null

  /// why error: too many elements?
  /// -> because it iterates on each element until it reaches to end if it found one targetted value still it moves next until the end, it throws an error in 2 cases if the element is repeated (non-unique) or the element is missing

  // Incase if you want to use where() or any loop which returns iterable loop and if the item is not found then it will cause an error to fix it either use orElse or use .firstOrNull and related properties for example:
  var admin = [
    'user_client',
    'tester_client',
    'demo_client',
  ].where((v) => v.startsWith('admin')).firstOrNull;

  if (admin == null) {
    print("Safe: No admin found");
  } else {
    print("Admin found: $admin");
  }
}
