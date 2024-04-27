import 'package:flutter/material.dart';
import 'package:online_shop/models/Bag.dart';
import 'package:online_shop/widget/cartCounter.dart';
import 'package:online_shop/widget/row.dart';

class Body extends StatefulWidget {
   Body(this.bag,{super.key});
   Bag bag;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Column(
        children:<Widget> [
          SizedBox(
            height:size.height,
            child: Stack(
              children: [
                Container(
                  height: 500,
                  width: 500,
                  margin:  EdgeInsets.only(top: size.height*0.35,),
                  padding: EdgeInsets.only(top: size.height*0.12,left: 20,right: 20),
                  decoration: const BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                  ),
                   child: Column(
                  
                    children: [ 

                      //To add the color and the size 
                     RowC(bag: widget.bag),
                     Padding(padding:const EdgeInsets.only(top: 20),
                     child:Text(widget.bag.descreption!,style: TextStyle(color: Colors.black,),maxLines: 4,)
                     ,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    CartCounter(),
                    Padding(padding:const EdgeInsets.only(top: 15), 
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                      child: Icon(Icons.favorite,color: Colors.white,),
                     )
                    ,)
                     
                    
                      ],
                     ),
                     Row(
                      children: [ 
                       Container(
                        margin: const EdgeInsets.only(top: 20),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: widget.bag.color!,
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: IconButton( 
                        icon: Icon(Icons.shopping_cart_outlined,color: widget.bag.color,size: 25,),
                        onPressed: (){},
                      ),
                     ),


                     Container(
                      height: 60,
                      width: 280,
                      margin: const EdgeInsets.only(top:20,left: 20),
                      decoration: BoxDecoration(
                        color: widget.bag.color,
                        borderRadius: BorderRadius.circular(15),

                      ),
                      child: TextButton( 
                        child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        onPressed: (){},
                      ),
                     )
                     ],)
                    
                   
                  
                    ],
                  )
                  
                  
                ),
             



                Padding(
                  padding: const EdgeInsets.all(20),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                  const Text('Aristrocratic Hand Bag',style: TextStyle(fontSize: 15,color: Colors.white),),
                   Text(widget.bag.title!,style:const TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                    Row( children: [ 
                   RichText(
                    text: TextSpan(
                  children: [
                TextSpan(text: 'Price\n'),
                TextSpan(text:'\$'+widget.bag.price.toString(),
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)
                )
                 ]
                 )
                ),

                  Expanded(child: Image.asset(widget.bag.image!,fit: BoxFit.fitWidth,)),
          ],
          ),

            ],
          ),
                ),

            ]
            ),
          )

        ]
      )
        );

       
  } 
 
}