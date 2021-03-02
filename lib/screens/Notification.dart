
import 'package:flutter/material.dart';

class Notifcation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      child: ListView.builder(

          itemBuilder: (context,index)
          {
            return NotiCard(context);
          }),
    );
  }
  Widget NotiCard(BuildContext context) {

    return Card(
      color: Colors.blue.shade50,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Abdul Rehman Like your post',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                )
              ],
            ),
          ],
        ),
      ),
    );

  }

}
