import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/model/stateManigment.dart';

class sliderOpacity extends StatefulWidget {
  const sliderOpacity({Key? key}) : super(key: key);

  @override
  _sliderOpacityState createState() => _sliderOpacityState();
}

class _sliderOpacityState extends State<sliderOpacity> {

  final SliderWithOpasity opasity=Get.put(SliderWithOpasity());
  final CounterValue number=Get.put(CounterValue());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("slider Opacity"),
        centerTitle: true,
      //  automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(()=>Center(
            child: Container(height: Get.height * 0.2,
              width: Get.width *0.5,
              color: Colors.purpleAccent.withOpacity(opasity.opacity.value),
              child: Center(child: Text(number.counter.toString(),style: const TextStyle(fontSize: 50),),
              ),
            ),
          ),),
          Obx(
                  ()=>    Slider(
              value: opasity.opacity.value, onChanged: (value){
            opasity.setOpacity(value);
          })),
          Obx(
                  ()=>Text(opasity.opacity.value.toStringAsFixed(2),
            style: const TextStyle(
                color: Colors.purpleAccent,
                fontSize: 20),)),


        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        number.incrementCounter();
      },
        child: const Icon(Icons.add),),
    );
  }
}
