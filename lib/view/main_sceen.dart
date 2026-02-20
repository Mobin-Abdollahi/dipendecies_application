import 'package:dipendecies_application/controller/product_controller.dart';
import 'package:dipendecies_application/model/product_model.dart';
import 'package:dipendecies_application/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class MainSceen extends StatelessWidget {
  
//var counter = 0.obs;
// RxInt counter = 0.obs;
//var counter = RxInt(0);
// var counter = Rx<int>(0);


// widget obx
//getx
//getbuilder

ProductController productController = Get.put(ProductController(productModel:ProductModel(name: "بستنی کیم", price: "15000", off: "50").obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                  Value!.name = "چیتوز سرکه";
                  Value!.price = "1000";
                  Value!.off = "50%";
                  
                });
              }), 
              child: Text("press")),
              
              ElevatedButton(
              onPressed:((){

               Get.to(ProductScreen());
               
              }), 
              child: Text("go"))
          ],
        ),
      )
    );
  }
}