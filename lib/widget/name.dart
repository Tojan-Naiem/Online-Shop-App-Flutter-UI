import 'package:flutter/material.dart';

class Name extends StatelessWidget {
   
  final String? type;
  final bool? isSelected;
  final VoidCallback onTap;

 Name({required  this.type,required this.isSelected,required this.onTap});


  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap:onTap,
      child: Padding(padding: EdgeInsets.all(25),
      
      child: Container(
      margin: const EdgeInsets.only(bottom: 22),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: isSelected!?Colors.black:Colors.white,width: 0.6),
            )
          ),
        child: Text(type!,style: TextStyle(color: isSelected!? Colors.black:Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),),
      ),
      ),
    );
  }
}

