import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/model/stateManigment.dart';

class favoriteScreen extends StatefulWidget {
  const favoriteScreen({Key? key}) : super(key: key);

  @override
  _favoriteScreenState createState() => _favoriteScreenState();
}

class _favoriteScreenState extends State<favoriteScreen> {

  final FruitController fruitController=Get.put(FruitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Screen"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: fruitController.fruitName.length,
          itemBuilder: (context,index){
        return  Card(
          child: ListTile(
            onTap: (){
              fruitController.favoriteFruits.contains(fruitController.fruitName[index].toString())?
              fruitController.removeToFavourite(fruitController.fruitName[index].toString()):
              fruitController.addToFavourite(fruitController.fruitName[index].toString());
            },
            title: Text(fruitController.fruitName[index]),
            trailing:Obx(()=> Icon(Icons.favorite,
                color:  fruitController.favoriteFruits.contains(fruitController.fruitName[index].toString())?
                Colors.redAccent:
                Colors.black54),),
          ),
        );
      }),
    );
  }
}
