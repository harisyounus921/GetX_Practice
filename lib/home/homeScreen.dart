import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:getx_example/StateManigment/stateManigment.dart';
import 'package:getx_example/Translations/TranslationsScreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GetX Utilities"),
      ),
      body: Column(
        children:  [
          InkWell(
            onTap: (){
              Get.to(()=>translationsScreen(name: "Screen",));
              //Get.toNamed('/screenOne',arguments: ["Muhammad", "Haris", "Younus"]);
            },
            child: const ListTile(
              tileColor: Colors.purpleAccent,
              title: Text("TranslationScreen"),
            ),
          ),
          InkWell(
            onTap: (){
              Get.snackbar("Name", "HARIS YOUNUS",
                icon: const Icon(Icons.email),
                onTap: (snap){},
                backgroundColor: Colors.deepPurple,
                colorText: Colors.white,
                mainButton: TextButton(onPressed: (){}, child: const Text("Done")),
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            child: const ListTile(
              tileColor: Colors.deepPurpleAccent,
              title: Text("SnackBar"),

            ),
          ),
          InkWell(
            onTap: (){
              Get.defaultDialog(
                  title: "Delete Post",
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  middleText: "Are you really want to delete this post?",
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text("Sure")),
                  cancel: TextButton(onPressed: (){Get.back();}, child:Text("cancle") )
              );
            },
            child: const ListTile(
              tileColor: Colors.deepOrangeAccent,
              title: Text("DefaultDialog"),
            ),
          ),
          InkWell(
            onTap: (){
              Get.changeTheme(ThemeData.light());
            },
            child: const ListTile(
              tileColor: Colors.white70,
              title: Text("Light theme"),
            ),
          ),
          InkWell(
            onTap: (){
              Get.changeTheme(ThemeData.dark());
            },
            child: const ListTile(
              tileColor: Colors.black54,
              title: Text("DarkTheme"),
            ),
          ),

          Container(
            height: Get.height * 0.2,
            width: Get.width *0.5,
            color: Colors.purpleAccent,
            child: const Center(
              child: Text('Container'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(()=>stateManigment());
      },
      child: const Icon(Icons.forward),),

    );
  }
}
