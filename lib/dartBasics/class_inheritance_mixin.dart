void main() {
  // instance of the class
  College coll = College("XYZ", "456");
  coll.collegeName;
  coll.collegeCode;
  coll.collegeDetail();

  Student stud = Student("Hello", "123456", "Hi", 78945612);
  stud.studentResult;
  // stud.studentExamResult();
  // stud.studentExamResult1();
  stud.studentDetails();
}

class College {
  // declare variables
  final String collegeName;
  final String collegeCode;

  // constructor
  College(this.collegeName, this.collegeCode);

  // methods

  void collegeDetail() {
    print("College Name is: $collegeName and college code is: $collegeCode");
  }
}

class College1 {
  // declare variables
  final String collegeName;
  final String collegeCode;

  // constructor
  College1(this.collegeName, this.collegeCode);

  // methods

  void collegeDetail() {
    print("College Name is: $collegeName and college code is: $collegeCode");
  }
}

// Inheritance
class Student extends College with StudentData, StudentData1 {
  final String studentName;
  final int rollNumber;

  Student(
      super.collegeName, super.collegeCode, this.studentName, this.rollNumber);

  @override
  String studentResult = "Distinction";
  String studentResult1 = "Fail";

  void studentDetails() {
    print(
        "Student Name:$studentName , roll Number is:$rollNumber and college Name:$collegeName");
    studentExamResult();
    studentExamResult1();
  }
}

// Mixin

mixin StudentData {
  // variable
  String get studentResult;

  void studentExamResult() {
    print("Student passed the exams with:$studentResult");
  }
}

mixin StudentData1 {
  // variable
  String get studentResult1;

  void studentExamResult1() {
    print("Student passed the exams with:$studentResult1");
  }
}
