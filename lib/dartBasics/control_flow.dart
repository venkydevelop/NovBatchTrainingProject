void main() {
  // Control Flow - Based on condition we can excute the code.

  // if- else , else if , nested if else , switch,for , while and do -while

  int marks = 80;

  // if - else

  if (marks > 80) {
    // 80 > 80
    print("Student got the A Grade");
  } else {
    print("Student Pass the Subject");
  }

  // else if

  if (marks > 90 && marks <= 100) {
    // 80 > 90 && 80 <= 100
    print("Student got the A+ Garde");
  } else if (marks > 80 && marks <= 90) {
    // 80 > 80 && 80 <= 90
    print("Student got the A Grade");
  } else if (marks > 70 && marks <= 80) {
    // 80 > 70 && 80 <= 80
    print("Student got the B Garde");
  } else {
    print("Student Pass the Subject");
  }

  // nested if -else

  if (marks >= 80) {
    // 80 >= 80
    if (marks > 90 && marks <= 100) {
      print("Student got distinction");
    } else {
      print("Student Pass the Subject");
    }
  } else {
    print("Student fail the subject");
  }

  // Switch

  int day = 4;

  switch (day) {
    case 1:
      print("Sunday");
    case 2:
      print("Monday");
    case 3:
      print("Tuesday");
    case 4:
      print("Thursday");
    default:
      print("No Day Present");
  }

  // for

  for (int i = 0; i <= 10; i++) {
    //  0 <= 10 // 1 <= 10 .... 10 <= 10, 11 <= 10
    print("Number is:$i");
  }

  // for -in

  List<String> names = ["Sonu", "Umesh", "Geetha", "Amit"];
  print(names);

  for (String name in names) {
    print(name);
  }

  // for -each

  names.forEach((name) {
    print(name);
  });

  // while

  int count = 5;

  while (count < 5) {
    // 5 < 5
    print(count);
    count++;
  }

  do {
    print(count);
    count++;
  } while (count < 5);
}
