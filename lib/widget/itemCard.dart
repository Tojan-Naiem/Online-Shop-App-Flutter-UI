import 'package:flutter/material.dart';
import 'package:online_shop/detailsPage.dart';
import 'package:online_shop/models/Bag.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.bag,{super.key});
   Bag bag;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Wrap with GestureDetector
      onTap: () {
         Navigator.of(context).push(_createRoute());
      },
      child: Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      child:  Column(
      children:[
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(10),
            color: widget.bag.color,
            image:DecorationImage(image: AssetImage(widget.bag.image!),fit: BoxFit.scaleDown)
            
          ),
               ),
               const SizedBox(height: 10,),
               Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [ 
                  const SizedBox(width: 14,),
                  Text(widget.bag.title!,style: TextStyle(color: Colors.grey,fontSize: 14),),
                ],)
                  
               ),
               const SizedBox(height: 3,),
                Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [ 
                  const SizedBox(width: 14,),
                  Text('\$'+widget.bag.price.toString()!,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                ],)
                  
               ),
             
    
      ]
       ,
      ),
    )
    
  
      

    );
  }
  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DetailsPage(widget.bag),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
}