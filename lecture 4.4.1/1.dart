
import'ram.dart';

List student=[
    {"roll_no": 101, "name": "John Doe", "course": "Computer Science"},
    {"roll_no": 102, "name": "Jane Smith", "course": "Electrical Engineering"},
    {"roll_no": 103, "name": "Michael Johnson", "course": "Biology"},
    {"roll_no": 104, "name": "Emily Brown", "course": "History"},
    {"roll_no": 105, "name": "David Lee", "course": "Mathematics"},
    {"roll_no": 106, "name": "Sarah Wilson", "course": "Economics"},
    {"roll_no": 107, "name": "James Garcia", "course": "Physics"},
    {"roll_no": 108, "name": "Olivia Martinez", "course": "English Literature"},
    {"roll_no": 109, "name": "Daniel Davis", "course": "Mechanical Engineering"},
    {"roll_no": 110, "name": "Sophia Rodriguez", "course": "Chemistry"},
    {"roll_no": 111, "name": "Ethan Miller", "course": "Political Science"},
    {"roll_no": 112, "name": "Isabella Taylor", "course": "Business Administration"},
    {"roll_no": 113, "name": "Liam Moore", "course": "Fine Arts"},
    {"roll_no": 114, "name": "Ava Anderson", "course": "Psychology"},
    {"roll_no": 115, "name": "Noah Wilson", "course": "Sociology"},
    {"roll_no": 116, "name": "Mia Thomas", "course": "Linguistics"},
    {"roll_no": 117, "name": "Jacob White", "course": "Geology"},
    {"roll_no": 118, "name": "Emma Garcia", "course": "Environmental Science"},
    {"roll_no": 119, "name": "Alexander Hernandez", "course": "Music"},
    {"roll_no": 120, "name": "Chloe Lopez", "course": "Civil Engineering"},
    {"roll_no": 121, "name": "Benjamin Scott", "course": "Architecture"},
    {"roll_no": 122, "name": "Grace Hill", "course": "Philosophy"},
    {"roll_no": 123, "name": "Lucas Green", "course": "Journalism"},
    {"roll_no": 124, "name": "Lily Adams", "course": "Public Health"},
    {"roll_no": 125, "name": "Christopher Hall", "course": "Nursing"},
    {"roll_no": 126, "name": "Madison Young", "course": "Anthropology"},
    {"roll_no": 127, "name": "Isaac King", "course": "Information Technology"},
    {"roll_no": 128, "name": "Aria Allen", "course": "Criminology"},
    {"roll_no": 129, "name": "Gabriel Turner", "course": "Communication Studies"},
    {"roll_no": 130, "name": "Hannah Baker", "course": "Social Work"}
];

void main()
{
  int a=1;
  List<Student> l1=[];
  for(var r in student){
    Student s1=Student.fromMap(r);
    l1.add(s1);
  }

  for(var data in l1)
  {
    print("students detais:$a");
    print("Roll_no:${data.roll_no}");
    print("Name :${data.name}");
    print("course:${data.course}");
    a++;
    print("\n");
  }
}