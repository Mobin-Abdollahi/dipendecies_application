import 'package:dipendecies_application/controller/product_controller.dart';
import 'package:dipendecies_application/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';


class ProductScreen extends StatelessWidget {
 
 ProductController productController = Get.put(ProductController(productModel: ProductModel(name: "بستنی کیم", price: "15000", off: "50").obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Obx(((){
              return Column(
                children: [
                  Text(
                    
                    "product name: ${productController.productModel.value.name}", style:const TextStyle(fontSize: 18),
                    
                    ),
                     Text(
                    
                    "product price: ${productController.productModel.value.price}", style:const TextStyle(fontSize: 18),
                    
                    ),
                     Text(
                    
                    "product offer: ${productController.productModel.value.off}", style:const TextStyle(fontSize: 18),
                    
                    ),
                ],
              );
            })),

            ElevatedButton(
              onPressed:((){
                productController.productModel.update((Value){

                  Value!.name = "چیتوز فلفل";
                  Value!.price = "1000";
                  Value!.off = "50%";
                  
                });
              }), 
              child: Text("press"))
              ,ElevatedButton(
              onPressed:((){

              Get.back();
              
              }), 
              child: Text("back"))
          ],
        ),
      )
    );
  }
}