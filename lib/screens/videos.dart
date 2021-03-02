
import 'package:flutter/material.dart';

class Vidoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      child: ListView.builder(

          itemBuilder: (context,index)
          {
            return VideoCard(context);
          }),
    );
  }

  Widget VideoCard(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Stack(
              children: [
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/download.jpg'),
                            fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 100),
                      child: Icon(Icons.play_circle_outline,size: 80,color: Colors.white,)
                  ),
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
