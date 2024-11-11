import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/randomuserprovider.dart';
import 'package:sara/Widgets/randomuserwidget.dart';
class RandomUser extends StatelessWidget {
   RandomUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Random User',style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Consumer<RandomUserProvider>(builder: (context, object, child) {
        final res = object.randomUserModel;
        if(res == null){
          object.getprovider();
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(itemBuilder: (context, index) {
            return RandomWidget(username:
            res.users[index]['login']['username'] ?? 'No username',
                city:  res.users[index]['location']['city']??'no city',
                email:  res.users[index]['email']??'No email',
                phone:  res.users[index]['phone']??'No phone',
                picture:  res.users[index]['picture']['large']??'No pisture');
          },
          );
        }
      },),
    );
  }
}
