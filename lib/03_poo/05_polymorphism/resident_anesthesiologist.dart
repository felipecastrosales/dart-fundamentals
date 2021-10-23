import 'anesthetist.dart';

class ResidentAnesthesiologist extends Anesthetist {
  @override
  void surgery() {
    super.surgery();
    print('Doing only prepare equipment');
  }
}
