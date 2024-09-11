import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled33/model.dart';
import 'package:untitled33/second.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Container(
        margin: EdgeInsets.all(35),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Consumer<Model>(
                  builder: (context, model, child) {
                 return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          ' Full Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                            ),
                            onChanged: (value){
                              model.name=value;
                              model.nameNotifier();
                            }

                          ),
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 15),Consumer<Model>(
    builder: (context, model, child) {
    return
     Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14),
                        ),
                          onChanged: (value){
                            model.email=value;
                            model.emailNotifier();
                          }

                      ),
                    ),
                  ],
                      );}
                ),
                SizedBox(height: 10),Consumer<Model>(
    builder: (context, model, child) {
    return
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Image URL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14),
                        ),
    onChanged: (value){
    model.image=value;
    model.imageNotifier();
    }
                      ),
                    ),
                  ],);}
                ),
                SizedBox(height: 10),Consumer<Model>(
    builder: (context, model, child) {
    return
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 10),
                        ),onChanged: (value){
                        model.mobileNumber=value;
                        model.mobileNumberNotifier();
                      }
                      ),
                    ),
                  ],);}
                ),
                SizedBox(height: 15),Consumer<Model>(
    builder: (context, model, child) {
    return
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14),
                        ),
                          onChanged: (value){
                            model.password=value;
                            model.passwordNotifier();
                          }
                      ),
                    ),
                  ],);}
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: status,
                      onChanged: (val) {
                        setState(() {
                          status = val ?? false;
                        });
                      },
                    ),
                    Text(
                      'I Agree With Terms',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 5),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Second(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


