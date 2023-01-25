import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/StateManigment/stateManigment.dart';

class translationsScreen extends StatefulWidget {
  var name;
  translationsScreen({Key? key, this.name}) : super(key: key);

  @override
  _translationsScreenState createState() => _translationsScreenState();
}

class _translationsScreenState extends State<translationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("second "+widget.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('answer'.tr),
          ),
          const SizedBox(height: 50,),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en','Us'));
              }, child: const Text("English")),
              const SizedBox(height: 50,),
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('ur','PK'));
              }, child: const Text("Urdu"))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.back();
        },
        child: const Icon(Icons.arrow_back)),
    );
  }
}
