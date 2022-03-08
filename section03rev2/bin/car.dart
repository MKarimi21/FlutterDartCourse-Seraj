
class Car{

    String carColor = "White";
    String carModel = "IranKhodro";
    int carEngine = 12452;

}

// class Pride extends Car{
//
//
//     @override
//   // TODO: implement carColor
//   String get carColor => "Red";
//
//     @override
//   // TODO: implement carModel
//   String get carModel => "Saipa";
//
//     @override
//   // TODO: implement carEngine
//   int get carEngine => 22332;
// }

// class Pegue extends Car{
//     @override
//   // TODO: implement carColor
//   String get carColor => "Blue";
//
//     @override
//   // TODO: implement carModel
//   String get carModel => "IranKhodro";
//
//     @override
//   // TODO: implement carEngine
//   int get carEngine => 4471;
// }


// Interface
class TibaSipa implements Car{
  @override
  String carColor = " WhiteBlue";

  @override
  int carEngine = 3478;

  @override
  String carModel = "Saipa";

}


/// For another type of code

abstract class FixInterface{
    void onEngineBroken(String Problem);
}

// Connection between 2 class with interface methods

class MachineFixNeed implements FixInterface{

    @override
    void onEngineBroken(String Problem) {
    // TODO: implement onEngineBroken
  }


}