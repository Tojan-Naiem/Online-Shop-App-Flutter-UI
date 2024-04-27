import 'package:flutter/material.dart';
import 'package:online_shop/models/Bag.dart';
import 'package:online_shop/widget/itemCard.dart';
import 'package:online_shop/widget/name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Bag>list=Bag.Bags;

List type=[
  ['Hand bag',true],
  ['Jewellery',false],
  ['Footwear',false],
  ['Dresses',false],
];

void isSelected(int index){

setState(() {

  for(int i=0;i<type.length;i++)
  {
    type[i][1]=false;
  }
  type[index][1]=true;

});
  

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Icon(Icons.arrow_back,color: Color.fromARGB(255, 101, 98, 98),),
            Row(children: [
              Icon(Icons.search,color: Color.fromARGB(255, 101, 98, 98),size: 30,),
               SizedBox(width: 17,),
              Icon(Icons.shopping_cart_outlined,color:Color.fromARGB(255, 101, 98, 98),size: 30,)
            ],)

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //For the title
             const Row(
              children: [ 
                 SizedBox(width: 20,),
                Text('Women',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 54, 52, 52),fontWeight: FontWeight.bold),) 
              ],
            ),
            
            const SizedBox(height: 5,),

            //The list
            Container(
              height: 100,
              width: double.infinity,
              child:ListView.builder(
                itemCount: type.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Name(type:type[index][0] , isSelected: type[index][1], onTap:(){isSelected(index);}, );
                }
              )
            ),
            Row(children: [
              Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [ 
                for(int i=0;i<list.length;i+=2)ItemCard(list[i])
              ],),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [ 
                for(int i=1;i<list.length;i+=2)ItemCard(list[i])
              ],),
            )
            ],)

            
            
            


           
            
          ],
        ),
      ),
    );
  }
}