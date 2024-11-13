import 'package:get/get.dart';
import '../models/counter_model.dart';

class CounterController extends GetxController {
  final counter = CounterModel(0).obs;

  void increment() {
    counter.update((val) {
      val?.count++;
    });
  }
}
