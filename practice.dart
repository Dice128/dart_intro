class saya {
  String? name;
  int? studentID;
  String? major;

  void perkenalan() {
    print("Nama: $name");
    print("Student ID: $studentID");
    print("Major: $major");
  }
}

void main() {
  saya student = saya();
  student.name = "Ray Egans Pramudya";
  student.studentID = 43324122;
  student.major = "Teknologi Rekayasa Komputer";

  student.perkenalan();
}
