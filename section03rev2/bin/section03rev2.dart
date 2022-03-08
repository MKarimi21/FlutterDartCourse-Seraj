// import 'SchoolName';


void main() {

    School School1 = School();
    School School2 = School(name: "Test Uni");
    School School3 = School();
    School School4 = School(schoolCode: 34);
    School School5 = School(name: "A", schoolCode: 12);

    print("School name = ${School1.name}");
    print("School name = ${School2.name}");
    print("School name = " + (School3.name??"evrything typing return default"));
    print("School name = " + (School3.schoolCode?? 12).toString());
    print("School name = " + (School4.schoolCode).toString());
    print('School 5 = ${School5}');
}


class School{
    String? name;
    int? schoolCode;
    String? _school_national_code;

//    School({this.name = "Union-Global", this.schoolCode = 067});

    School({this.name = "Global", this.schoolCode = 23}){
        // _school_national_code = "\$";
        _school_national_code = "$name\_$schoolCode";
        print('School.School $_school_national_code');
  }
}

class Motahari extends School{
    
}