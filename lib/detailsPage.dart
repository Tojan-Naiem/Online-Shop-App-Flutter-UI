import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/Bag.dart';
import 'package:online_shop/widget/body.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage(this.bag,{super.key});
  Bag bag;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

 
  @override
  Widget build(BuildContext context) { 
    Size size=MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: widget.bag.color!,
      appBar: AppBar(
        backgroundColor: widget.bag.color!,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, 
          
          icon: const Icon(Icons.search,color: Colors.white,size: 30,),
          ),
            IconButton(onPressed: (){}, 
          
          icon: const Icon(Icons.shopping_cart_outlined,color:Colors.white,size: 30,)
          ),
           
        ],
      ),
       body:Body(widget.bag),
   

    );
  }
}