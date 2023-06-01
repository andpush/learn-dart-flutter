

void main() {
  final v = Vehicle.withEngine(const Engine(EngineType.Diesel, power:240, torque: 330));

  v.move(20);
  assert(v.point == 20);
  v.reverse(5);
  assert(v.point == 15);
  assert(v.mileage == 25);

  v.color = 100;

  print('${v.engine!.type}');
}

class Vehicle with PowerAggregate {
  double point = 0;
  double mileage = 0;
  int _color = 0;

  Vehicle({this.point = 0});
  Vehicle.withEngine(Engine engine) {
      this.engine = engine;
  }

  void move(double distance) {
    point += distance;
    mileage += distance.abs();
  }

  set color(newColor) => _color = newColor;

  int get color => _color;
}

extension AddReverse on Vehicle {
  void reverse(double dist) {
    this.move(-dist);
  }
}


enum EngineType {Diesel, Petrol, Electro}

class Engine {
  final EngineType type;
  final double power;
  final double torque;
  const Engine(this.type, {required this.power, required this.torque});
}

mixin PowerAggregate {
    Engine? engine;
}





