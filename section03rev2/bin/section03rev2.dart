// import 'SchoolName';


import 'car.dart';

void main(){
    
    List<String> _name = [
        "Master",
        "Main",
        "Branch",
    ];

    // print('My list: ${_name.elementAt(1)}');
    // print("List: ${_name}");

    for(int i = 0; i<_name.length; i++){
        print("Name ${(i+1).toString()} is ${_name.elementAt(i)}");
    }

}

void main2() {

    // School School1 = School();
    // School School2 = School(name: "Test Uni");
    // School School3 = School();
    // School School4 = School(schoolCode: 34);
    // School School5 = School(name: "A", schoolCode: 12);
    //
    // print("School name = ${School1.name}");
    // print("School name = ${School2.name}");
    // print("School name = " + (School3.name??"evrything typing return default"));
    // print("School name = " + (School3.schoolCode?? 12).toString());
    // print("School name = " + (School4.schoolCode).toString());
    // print('School 5 = ${School5}');

    TibaSipa New2020 = new TibaSipa();          // #1 class name  #2 new name =  #3 new   #class name();
    print('main color Tiba new 2020 is: ${New2020.carColor}');

    TibaSipa New2021 = new TibaSipa();          // #1 class name  #2 new name =  #3 new   #class name();
    New2021.carColor = "Blue";                          // set another color
    print('main color Tiba new 2021 is: ${New2021.carColor}');
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

