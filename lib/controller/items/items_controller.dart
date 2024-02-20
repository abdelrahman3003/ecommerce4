import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  changeCategory(int i);
}

class ItemsControllerImp extends ItemsController {
  int categoryNumer = 0;
  List<String> itemsList = [
    'Laptops',
    'Cameras',
    'Phones',
    'Shoses',
    'HeadPhones',
    'Tee_Shirts',
    'Suits'
  ];
  @override
  changeCategory(i) {
    categoryNumer = i;
    update();
  }
}
