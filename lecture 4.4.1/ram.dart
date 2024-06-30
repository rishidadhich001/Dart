
class Student{
  int? roll_no;
  String? name,course;
  Student({required this.roll_no,required this.name,required this.course});
  factory Student.fromMap(Map m1)
  {
    return Student(roll_no: m1['roll_no'], name: m1['name'], course: m1['course']);
  }
}