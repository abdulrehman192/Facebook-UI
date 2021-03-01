
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
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
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: 150,
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
                                child: Text('Abdul Rehman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              )
                            ],
                          ),
            Row(
              children: <Widget>[
                Text('Post Text goes here')
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
                          Icon(Icons.thumb_up_outlined,size: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Like'),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.comment_bank_outlined,size: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Comment'),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.share_outlined,size: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Share'),
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
