void main() {
  // List Collection :

  // Syntax

  // List<DataType> listName = []

  List<String> names = ["Geetha", "Amit", "Umesh", "Sonu"];

  print(names);
  print(names.isEmpty);
  print(names.isNotEmpty);
  print(names.length);
  print(names.first);
  print(names.last);

  // Add Modifiers

  names.add("Hello");
  print(names);
  names.addAll(["Geetha", "Amit"]);
  print(names);

  // Insert Modifiers

  names.insert(3, "World");
  print(names);
  names.insertAll(2, ["Student", "Hi"]);
  print(names);

  // Delete Values

  names.remove("Student");
  print(names);
  names.removeAt(3);
  print(names);
  print(names.removeLast());
  print(names);

  // Iterate the List Data

  // for-in

  for (String name in names) {
    print(name);
  }

  // for - each
  names.forEach((name) {
    print(name);
  });

  // Shorthand Notation for-each method
  names.forEach((name) => print(name));

  // Index position

  final indexValue = names.indexOf("Sonu");
  print(indexValue);

  // Contains Method

  final valueContain = names.contains("Amit");
  print(valueContain);

  //  Sort

  names.sort();
  print(names);

  //suffle

  names.shuffle();
  print(names);

  // Map List

  final mapList = names.map((name) => name).toList();
  print(mapList);
}
