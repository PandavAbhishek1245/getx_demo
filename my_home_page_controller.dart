import 'package:get/get.dart';

class MyHomePageController extends  GetxController{

  RxInt counter = 0.obs;

  void incrementCounter() {
    counter++;
      print("VALUE:::: ${counter}");

  }

  void Decrement(){
    if(counter!=0){
      counter--;
    }
    print("VALUE:::: ${counter}");
  }

}
