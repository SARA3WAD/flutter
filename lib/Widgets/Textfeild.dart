import 'package:flutter/material.dart';
class MyTextFeilds extends StatelessWidget {
final TextEditingController mycntroller;
final String mytext;
final String? Function(String?) myvalidate;
MyTextFeilds({
  required this.mytext,
  required this.mycntroller,
  required this.myvalidate
});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
            Container(
              width: 400,
              child: TextFormField(
                validator: myvalidate,
                controller: mycntroller,
                decoration: InputDecoration(
                  hintText: mytext,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            )
        ],
      ),
    );
  }
}
