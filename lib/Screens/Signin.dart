import 'package:flutter/material.dart';
import 'package:sara/Screens/Signup.dart';
import 'package:sara/Screens/switchpages.dart';
import 'package:sara/Screens/todolist.dart';
import 'package:sara/Widgets/Textfeild.dart';
class Signin extends StatelessWidget {
   Signin({super.key});
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
var mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Signin',style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Form(
            key: mykey,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                    width: 200,
                    height: 200,
                    child: Image.network('https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o='),),
                SizedBox(height: 50,),
                MyTextFeilds(mytext: 'Username', mycntroller: username, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }
                  else if(p0.length < 4){
                    return 'Your username must be more than 4 characters';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 20,),
                MyTextFeilds(mytext: 'password', mycntroller: password, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }else if(p0.length < 4){
                    return 'Your password must be strong';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  if(mykey.currentState !.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Switchpages(),));
                  }
                }, child: Text('Signin')),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                }, child: Text('Don’t have an account?'))
              ],
            ),
          ),
        ],
      )
    );
  }
}
