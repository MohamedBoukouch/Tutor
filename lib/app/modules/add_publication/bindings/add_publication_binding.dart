import 'package:get/get.dart';

import '../controllers/add_publication_controller.dart';

class AddPublicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPublicationController>(
      () => AddPublicationController(),
    );
  }
}
