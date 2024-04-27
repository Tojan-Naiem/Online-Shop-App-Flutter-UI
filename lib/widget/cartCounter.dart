import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                      padding: const EdgeInsets.only(top:15),
                      child:  Row(
                      children: [
                       GestureDetector(
                        onTap: (){
                          setState(() {
                            if(counter<=1){
                              counter=1;
                            }
                            else 
                            counter--;
                          });
                        },
                        child:Container(
                        height: 25,
                        width: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black
                          )
                        ),
                        child: Icon(Icons.remove), 
                            
                        )
                       ),
                       Padding(padding: EdgeInsets.all(10),
                       child: Text(counter.toString().padLeft(2,'0'),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                       ),
                       GestureDetector(
                        onTap: (){
                          setState(() {
                            if(counter>=100)
                            {
                              counter=100;
                            }
                            else 
                            counter++;
                          });
                        },
                        child:Container(
                        height: 25,
                        width: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black
                          )
                        ),
                        child: Icon(Icons.add), 
                            
                        )
                       ),
                       
                       
                        
                      ],

                     )
                     
                     );
  }
}