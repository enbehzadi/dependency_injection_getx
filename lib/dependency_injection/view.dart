import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);
  @override
  Widget build(context){
    return Scaffold(
        appBar:
        AppBar(
          title: const Text("Dependency Injection"),
        ),
        body:Center(
          child:Obx((){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${Get.find<Controller>(tag: "first").count}",
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                MaterialButton(onPressed: (){
                  Get.find<Controller>(tag: "first").increment();
                },
                  child: const Text('increment first',style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                  color: Colors.redAccent,
                ),

                Text("${Get.find<Controller>(tag: "second").count}",
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                MaterialButton(onPressed: (){
                  Get.find<Controller>(tag: "second").increment();
                },
                  child: const Text('increment second',
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                  color: Colors.redAccent,
                ),
              ],
            );

          }),
        )
    );
  }
}