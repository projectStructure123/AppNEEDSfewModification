import 'package:get/get.dart';

class CartController extends GetxController {
  final itemList = List<String>.generate(5, (index) => 'Item $index').obs;

  void addItem() {
    itemList.add('New Item');
  }

  void removeItem(int index) {
    itemList.removeAt(index);
  }
}
