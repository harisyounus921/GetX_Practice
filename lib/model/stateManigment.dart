
import 'package:get/get.dart';

class CounterValue extends GetxController{
  RxInt counter=1.obs;

  incrementCounter()
  {
    counter.value++;
  }
}

class SliderWithOpasity extends GetxController{
  RxDouble opacity=0.4.obs;

  setOpacity(double value)
  {
    opacity.value=value;
  }
}

class FruitController extends GetxController{
  RxList fruitName=["apple","mango","grapes","watermanel"].obs;
  RxList favoriteFruits=[].obs;

  addToFavourite(String value)
  {
    favoriteFruits.add(value);
  }

  removeToFavourite(String value){
    favoriteFruits.remove(value);
  }
}