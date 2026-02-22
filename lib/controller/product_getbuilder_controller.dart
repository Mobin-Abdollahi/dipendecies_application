import 'package:dipendecies_application/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetbuilderController extends GetxController {

  ProductModel productModel = ProductModel(name: "بستنی کیم", price: "15000", off: "50");

  setNewProduct(){

    productModel = ProductModel(name: "نوشمک", price: "1000", off: "20%");
    update();
  }

}