import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class Controller extends GetxController {
  RxInt count = 0.obs;
  increment() {
    count++;
  }
}


