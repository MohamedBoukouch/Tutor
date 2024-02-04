import 'package:get/get.dart';

class ProfileController extends GetxController {
  // Use RxBool to enable reactivity
  RxBool enable = true.obs;

  // Method to update the enable value
  @override
  void update([List<Object>? ids, bool condition = true]) {
    enable.value = condition;
    super.update(ids, condition);
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
