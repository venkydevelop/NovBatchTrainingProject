void main() {
  // Syntax of Set

  // Set<DataType> setName = {};

  Set<int> numbers = {1, 2, 3, 4, 5};
  print(numbers);

  print(numbers.last);
  print(numbers.first);
  print(numbers.isEmpty);
  print(numbers.isNotEmpty);
  print(numbers.length);

  // Add Values

  numbers.add(6);
  print(numbers);
  numbers.addAll({7, 8});
  print(numbers);

  // Remove

  numbers.remove(8);
  print(numbers);
  numbers.removeAll({5, 6});
  print(numbers);

  // Iterate

  for (int name in numbers) {
    print(name);
  }

  // for - each
  numbers.forEach((name) {
    print(name);
  });

  // contains value

  final numberContain = numbers.contains(7);
  print(numberContain);

  // Union and Intersection

  Set<int> num = {4, 5, 7, 9};

  // Union

  final union = numbers.union(num);
  print(union);

  // Intersection

  final intersection = numbers.intersection(num);
  print(intersection);
}
