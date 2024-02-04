import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_publication_controller.dart';

class AddPublicationView extends GetView<AddPublicationController> {
  const AddPublicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPublicationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddPublicationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
