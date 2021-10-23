import 'doctor.dart';
import 'obstetrician.dart';
import 'pediatrician.dart';
import 'resident_anesthesiologist.dart';

void main() {
  // childbirth

  var doctors = <Doctor>{
    ResidentAnesthesiologist(),
    Obstetrician(),
    Pediatrician(),
  };

  // perform childbirth
  for (var doctor in doctors) {
    doctor.surgery();
  }
}
