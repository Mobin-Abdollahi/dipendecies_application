import 'package:dipendecies_application/model/product_model.dart';
import 'package:get/get.dart';

class ProductGetbuilderControllerUniqueId extends GetxController {

  ProductModel productModel = ProductModel(name: "بستنی کیم", price: "15000", off: "50");

  void setNewProduct(int id){

    //productModel = ProductModel(name: "نوشمک", price: "1000", off: "20%");
    productModel.name = "محصول جدید";
    update([id]);
  }

}