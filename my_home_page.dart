import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/counter/my_home_page_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var homePageController = Get.put(MyHomePageController()); //(get.put)  date access in  one screen to another


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Obx(() =>  Text(
           'You have pushed the button this many times:${homePageController.counter}',
         ),),
          Obx(() =>   Text(
            '${ homePageController.counter}',
            style: Theme.of(context).textTheme.headline4,
          ),),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 500,),
                FloatingActionButton(
                  onPressed: homePageController.incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),

                FloatingActionButton(
                  onPressed: homePageController.Decrement,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),

              ],
            )

          ],
        ),
      ),

    );
  }
}
