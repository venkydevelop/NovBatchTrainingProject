void main() {
  basicFunction();
  parameterFunc(10, 15);
  final value = returnTypeFunc();
  print(value);
  final data = paraReturnFunc('Student', 22, false);
  print(data);

  // Create Instance of the Class

  Student stud = Student();
  stud.basicMethod();
  stud.parameterMethod(20, 50);
  final ret = stud.returnTypeMethod();
  print(ret);
  final data1 = stud.paraReturnMethod("Venky", 25, false);
  print(data1);
}

// Function - Set of statements together to perform a specific task.

// Basic Function, Function With Parameters, Function With Return Types and Function with parameters and Return type

// Syntax

// void functionName() {
//
// }

// Basic Function

void basicFunction() {
  print("It's Basic Function");
}

// Function with parameters

void parameterFunc(int a, int b) {
  int c = a + b;
  print(c);
}

// Function with Return Type

String returnTypeFunc() {
  return "Hello world";
}

// Function with different parameters and return type

String paraReturnFunc(String name, int age, bool isLogin) {
  if (isLogin) {
    return "User Name is:$name and Age is: $age";
  } else {
    return "No User Data";
  }
}

// Methods

class Student {
  // Methods
  void basicMethod() {
    print("Basic Method");
  }

  void parameterMethod(int a, int b) {
    int c = a + b;
    print(c);
  }

// Function with Return Type

  String returnTypeMethod() {
    return "Hello world";
  }

// Function with different parameters and return type

  String paraReturnMethod(String name, int age, bool isLogin) {
    if (isLogin) {
      return "User Name is:$name and Age is: $age";
    } else {
      return "No User Data";
    }
  }
}
