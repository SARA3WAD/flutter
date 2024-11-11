import 'package:flutter/material.dart';
import 'package:sara/Screens/Signin.dart';
import 'package:sara/Screens/todolist.dart';
import 'package:sara/Widgets/Textfeild.dart';
class Signup extends StatelessWidget {
   Signup({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  var mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Signup',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,),
          Form(
            key: mykey,
            child: Column(
              children: [
                MyTextFeilds(mytext: 'username', mycntroller: username, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }
                  else if(p0.length<4){
                    return 'the username must be at least 4 characters';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 30,),
                MyTextFeilds(mytext: 'password', mycntroller: password, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }
                  else if(p0.length <4){
                    return 'Your password must be strong';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 30,),
                MyTextFeilds(mytext: 'phone number', mycntroller: phone, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }
                  else if(p0.length < 11 || p0.length > 11){
                    return 'Your phone number must be 11';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 30,),
                MyTextFeilds(mytext: 'Email', mycntroller: email, myvalidate: (p0) {
                  if(p0 == null || p0.isEmpty){
                    return 'Please fill the textbox';
                  }
                  else{
                    return null;
                  }
                },),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  if(mykey.currentState !.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                  }
                }, child: Text('Signup')),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                }, child: Text('Already have an account'))
              ],
            ),
          ),
        ],
      )
    );
  }
}
