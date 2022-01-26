import 'package:dependency_injection_getx/dependency_injection/controller.dart';
import 'package:get/get.dart';
class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Controller>(()=>Controller(),tag: "second");
    Get.put(Controller(),permanent: true,tag: "first");
  }
}