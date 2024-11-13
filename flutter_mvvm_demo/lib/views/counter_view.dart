import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter MVVM with GetX'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Count: ${controller.counter.value.count}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
