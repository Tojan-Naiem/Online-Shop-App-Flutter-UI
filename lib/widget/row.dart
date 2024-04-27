import 'package:flutter/material.dart';
import 'package:online_shop/models/Bag.dart';

class RowC extends StatelessWidget {
   RowC({required this.bag });
   final Bag bag;

  @override
  Widget build(BuildContext context) {
    return  Row(children: [ 
                          Expanded(child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(' Color',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
                              Row(children: [
                                Circle(bag.color!),
                                Circle(const Color(0xFFD3A984), ),
                                Circle(const Color(0xFF989493),),

                              ],)
                               
                          ],
                        ),
                          ),
                          Expanded(child: 
                        RichText(
                          text: TextSpan(
                            children: [ 
                              const TextSpan(text:'Size\n',style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold)),
                              TextSpan(text: bag.size!.toInt().toString()+' cm',style:const TextStyle(color: Color.fromARGB(255, 93, 91, 91),fontWeight: FontWeight.bold,fontSize: 20))
                            ]
                          )
                        )
                        
                          )

                      ],);
  }
   Container Circle(Color color){
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(left: 5,right: 5),
      height: 24,
      width: 24,
      decoration: BoxDecoration( 
      
        shape: BoxShape.circle,
        border: Border.all(
          color:color
        )
      ),
      child: DecoratedBox(decoration: BoxDecoration(color: color,shape: BoxShape.circle)),

    );
          
        }
}