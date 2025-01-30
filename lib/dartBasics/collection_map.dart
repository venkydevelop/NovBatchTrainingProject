void main() {
  // Map - Key, value pair based collection. we can with key and value

  // Syntax Map

  // Map<K,V> mapName = {}

  Map<String, String> fruits = {"Apple": "Red", "Banana": "Yellow"};

  print(fruits);
  print(fruits.length);
  print(fruits.isNotEmpty);
  print(fruits.isEmpty);
  print(fruits.entries);
  print(fruits.keys);
  print(fruits.values);

  fruits.addAll({"Orange": "Teal", "Graphes": "Black"});
  print(fruits);
  fruits.remove("Graphes");
  print(fruits);
  fruits.removeWhere((key, value) => value == 'Teal');
  print(fruits);
  fruits.update("Apple", (value) => "Green");
  print(fruits);
  fruits.updateAll((key, value) => value.toUpperCase());
  print(fruits);
  fruits.containsKey("Apple");
  fruits.containsValue("GREEN");

  for (var entry in fruits.entries) {
    print(entry);
    print(entry.key);
    print(entry.value);
  }
  fruits.forEach((key, value) {
    print("Key is $key and Value is $value");
  });
}
