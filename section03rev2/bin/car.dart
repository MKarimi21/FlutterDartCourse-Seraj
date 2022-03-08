
class Car{

    String carColor = "White";
    String carModel = "IranKhodro";
    int carEngine = 12452;

}

class Pride extends Car{
    @override
  // TODO: implement carColor
  String get carColor => "Red";

    @override
  // TODO: implement carModel
  String get carModel => "Saipa";

    @override
  // TODO: implement carEngine
  int get carEngine => 22332;
}

class Pegue extends Car{
    @override
  // TODO: implement carColor
  String get carColor => "Blue";

    @override
  // TODO: implement carModel
  String get carModel => "IranKhodro";

    @override
  // TODO: implement carEngine
  int get carEngine => 4471;
}