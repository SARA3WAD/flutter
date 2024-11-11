
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sara/Providers/randomuserprovider.dart';
class RandomWidget extends StatelessWidget {
  String picture;
String username;
String city;
String email;
String phone;
RandomWidget({required this.username,
  required this.city,
  required this.email,
  required this.phone,
  required this.picture});
  @override
  Widget build(BuildContext context) {
    var object = Provider.of<RandomUserProvider>(context);
    return RefreshIndicator(
      onRefresh: object.getprovider,
      child: Card(
        child: Column(
          children: [
            Image.network(picture),
            SizedBox(height: 50,),
            Text(username),
            SizedBox(height: 50,),
            Text(city),
            SizedBox(height: 50,),
            Text(email),
            SizedBox(height: 50,),
            Text(phone)

          ],
        ),
      ),
    );
  }
}
