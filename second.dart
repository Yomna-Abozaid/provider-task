import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled33/third.dart';

import 'Model.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<StatefulWidget> createState() => _Second();
}

class _Second extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(
        height: 50,
      ),
      Row(
        children: [
          Consumer<Model>(
            builder: (context, model, child) {
              return CircleAvatar(
                backgroundImage: NetworkImage(model.image),
                radius: 50, // Set a radius for the CircleAvatar if needed
              );
            },
          ),
          SizedBox(width: 120,),Icon(Icons.search,size: 40,color: Colors.black,),SizedBox(width: 10,)
        ,Consumer<Model>(
        builder: (context, model, child) {
          return Stack(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Third(),));
              }, icon:Icon( Icons.shopping_cart,size: 40,color: Colors.black,)
              )
              ,Container(height: 15,decoration: BoxDecoration(
                color: Colors.orange,borderRadius: BorderRadius.circular(15)
              ),child: Text("${model.counter}",style: TextStyle(
                color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
              ),textAlign: TextAlign.center,
              ),
              )
              ,Container(height: 400,width: double.infinity,decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/OIP.DHAk8-1Im6kmuk_n9oLdsAHaHa?w=181&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7')
                )
              ),
              )
              ,Consumer<Model>(
                builder: (context, model, child){
                  return Center(
child: Text('Welcome${model.name
}\n your Email is ${model.email}\n and your mobile number is ${model.mobileNumber}',style: TextStyle(
  fontWeight: FontWeight.bold,fontSize: 20
),
),
                  );
                }
              ),Container(height:30 ,decoration: BoxDecoration(
                color: Colors.grey,borderRadius: BorderRadius.circular(20)
              ),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  Consumer<Model>(
                    builder: (context, model, child){
                      return IconButton(onPressed:() {
                        model.inc();
                      }, icon: Icon(Icons.add));
                    },
                  )
                ,Consumer<Model>(
                  builder: (context, model, child){
                    return Text('${model.counter}'
                    );
                  },
                ),Consumer<Model>(
                  builder: (context, model, child){
                    return IconButton(onPressed:() {
                      model.inc();
                    }, icon: Icon(Icons.minimize));
                  },
                )
              ],
              ),

              )
            ],
          );
        }
        )
        ],
      ),
      // Add more widgets here if needed
    ],
  ),
),
    );
  }
}