import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Dehello',
    theme: ThemeData(primarySwatch: Colors.grey),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              // Container 1
                child: Image.network('https://images.unsplash.com/photo-1471115853179-bb1d604434e0?dpr=1&auto=format&fit=crop&w=767&h=583&q=80&cs=tinysrgb&crop=',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                )
            ),
            Container(
              // Container 2
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                        )
                      ],
                    ),
                  ),
                  //SizedBox(width: 250,),
                  // Padding(padding: EdgeInsets.only(right: 230)),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 28,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '41',
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              // Container 3
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('CALL',
                          style: TextStyle(color: Colors.blue, fontSize: 15))
                    ],
                  ),
                  Column(children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('ROUTE',
                        style: TextStyle(color: Colors.blue, fontSize: 15))
                  ]),
                  Column(children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('SHARE',
                        style: TextStyle(color: Colors.blue, fontSize: 15))
                  ]),
                ],
              ),
            ),
            Expanded(child: Container(
              padding: EdgeInsets.all(30),
              // Container 4
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                    'Alps. Situated 1,578 meters above sea level, it is one of the '
                    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                    'half-hour walk through pastures and pine forest, leads you to the '
                    'lake, which warms to 20 degrees Celsius in the summer. Activities '
                    'enjoyed here include rowing, and riding the summer toboggan run.',
                style: TextStyle(fontSize: 18),
                softWrap: true,
              ),
            ))
          ],
        ));
  }
}
