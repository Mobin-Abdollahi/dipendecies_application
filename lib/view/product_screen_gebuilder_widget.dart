import 'package:dipendecies_application/controller/product_getbuilder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';


class ProductScreenGebuilderWidget extends StatelessWidget {
  const ProductScreenGebuilderWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GetBuilder<ProductGetbuilderController>(
            
             init: ProductGetbuilderController(),
              builder: (ProductGetbuilderController productController){

              
              return Column(
                children: [
                  Text(
                    
                    "product name: ${productController.productModel.name}", style:const TextStyle(fontSize: 18),
                    
                    ),
                     Text(
                    
                    "product price: ${productController.productModel.price}", style:const TextStyle(fontSize: 18),
                    
                    ),
                     Text(
                    
                    "product offer: ${productController.productModel.off}", style:const TextStyle(fontSize: 18),
                    
                    ),
                ],
              );

            })
            ,

            ElevatedButton(
              onPressed:((){
             
                Get.find<ProductGetbuilderController>().setNewProduct();

              }), 
              child: Text("press")),
              
              ElevatedButton(
              onPressed:((){
             
                Get.delete<ProductGetbuilderController>();

              }), 
              child: Text("delete"))
              ,
          ],
        ),
      )
    );
  }
}