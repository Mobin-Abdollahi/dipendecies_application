import 'package:dipendecies_application/controller/product_getbuilder_controller_unique_id.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';


class ProductScreenGebuilderUniqueId extends StatelessWidget {
  const ProductScreenGebuilderUniqueId({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: ((context , index){
          
          return GestureDetector(
            onTap: ((){
              Get.find<ProductGetbuilderControllerUniqueId>().setNewProduct(index);
            }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: GetBuilder<ProductGetbuilderControllerUniqueId>(
            
                id: index,
                init: ProductGetbuilderControllerUniqueId(),
                builder: (ProductGetbuilderControllerUniqueId productController){
                        
                
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        
                        }),
              ),
            ),
          );

        }))
      )
    );
  }
}