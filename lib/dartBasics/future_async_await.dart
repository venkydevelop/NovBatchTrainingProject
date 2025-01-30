void main() {
  updateData();
  fetchData();
}

void updateData() {
  print("My Data");
}

// Server , Cloud

// Future

// Data Type

Future<String> fetchDetails() async {
  return "Hello World";
}

// Handling with try- Catch

Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    print("Fecth Data");
  } catch (e) {
    throw Exception("Error:${e.toString()}");
  }
}
