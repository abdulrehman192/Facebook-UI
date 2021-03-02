
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      child: ListView.builder(

          itemBuilder: (context,index)
          {
            return PostCard(context);
          }),
    );
  }

  Widget PostCard(BuildContext context) {

    return Card(
      margin: EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.white,
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
                  padding: const EdgeInsets.only(left : 8.0),
                  child: Text('Abdul Rehman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Icon(Icons.navigate_next_outlined,size: 25,),
                Text('Group Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Aslam Aalikum \nAll members ko Bolta ho k Post kro nhi to Zero post membro ko group se nikal diya jae ga phir koi bhi member na kahe muje kyo nikala gaya is liye ko member group join kr k sojati hain k plz yar posting kran admin k sahari koi bhi group nhi chalta umeed krta ho k sab member post kren gy nhi to bad me koi bhi member pm me na aye',
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 18),
                  ),
                ),

                )
              ],
            ),
            Container(
              height: 0.5,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.thumb_up,size: 25,color: Colors.blue.shade700,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Like',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade700),),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.comment,size: 25,color: Colors.blue.shade700,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Comment',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade700),),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.share,size: 25,color: Colors.blue.shade700,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Share',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue.shade700),),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );

  }
}
