import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/StateManigment/favorateScreen.dart';
import 'package:getx_example/StateManigment/sliderAndIncrement.dart';

class stateManigment extends StatefulWidget {
  const stateManigment({Key? key}) : super(key: key);

  @override
  _stateManigmentState createState() => _stateManigmentState();
}

class _stateManigmentState extends State<stateManigment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX State Manigment'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Get.to(()=>const sliderOpacity());
            },
            child: const ListTile(
              tileColor: Colors.purple,
              title: Text("Slider opacity example"),),
          ),
          InkWell(
            onTap: (){
              Get.to(()=>const favoriteScreen());
            },
            child: const ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Favorite Fruits example"),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
       Get.back();
      },
      child: const Icon(Icons.arrow_back),),
    );
  }
}
