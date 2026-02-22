import 'package:dipendecies_application/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';


class ProductScreenGetx extends StatelessWidget {
  const ProductScreenGetx({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GetX(
              autoRemove: true,
              dispose: (state) {
                state.dispose();
              },
              init: ProductController(),
              builder: (ProductController productController){

              
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

            })
            ,

            ElevatedButton(
              onPressed:((){
              Get.find<ProductController>().productModel.update((Value){

                Value!.name = "نوشابه";
                Value.price = "9000";
                Value.off = "20%";

              });
              }), 
              child: Text("press"))
              ,
          ],
        ),
      )
    );
  }
}