import 'package:dipendecies_application/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {

  Rx<ProductModel> productModel = ProductModel(name: "بستنی کیم", price: "15000", off: "50").obs;



}