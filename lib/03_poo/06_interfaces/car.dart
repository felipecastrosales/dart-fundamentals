// abstract class, because have methods implementeds
abstract class CarAbstract {
  void maximunVelocity() {}
}

// This is a interface, because not have methods implemented
abstract class Car {
  // mandatory -> have
  abstract int doors;
  abstract int wheels;
  abstract String motor;

  int maximunVelocity();

}
