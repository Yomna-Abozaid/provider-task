import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<StatefulWidget> createState() => _Third();
}

class _Third extends State<Third> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:
          (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
        ),
      ),
      body: Column(
        children: [
          Container(height: 400,width: double.infinity,decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://th.bing.com/th/id/OIP.DHAk8-1Im6kmuk_n9oLdsAHaHa?w=181&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7')
              )
          ),
          )
          ,SizedBox(
            height: 55,
          )
          ,Consumer<Model>(
        builder: (context, model, child){
          return Text('Quantity: ${model.counter}',style: TextStyle(
            fontSize: 30,color: Colors.black
          ),);
        }
          )],
      ),
    );
  }
}
