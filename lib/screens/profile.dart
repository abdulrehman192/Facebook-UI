
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : ListView(
        children: [
          Stack(

            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/download.jpg')
                    )
                ),
              ),
              Positioned(
                left: 125,
                top: 140,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),

                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Center(child: Text('Abdul Rehman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(left: 30,right: 30,top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade700,
            ),

            child: FlatButton(onPressed: null,
                child: Text('Send Request',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
          )
        ],
      )

    );
  }
}
