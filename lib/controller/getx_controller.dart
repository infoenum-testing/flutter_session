import 'package:get/get.dart';

class GetxdemoController extends GetxController {
  int counter = 0;

  void addFunction() {
    counter++;
    update();
  }

  RxInt cout = 0.obs;

  void addFunctionRective() {
    cout++;
  }
}
