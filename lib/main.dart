import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double coverHeight = 200;
  final double avatarHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(child: buildCoverImage()),
        Positioned(
          top: 15,
          left: 5,
          child: IconButton(
              onPressed: () {
                print("testtt");
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              )),
        ),
        Positioned(
            top: coverHeight - avatarHeight / 2, child: buildProfileAvatar())
      ],
    ));
  }

  Widget buildCoverImage() {
    return Container(
      child: Opacity(
        opacity: 0.5,
        child: Image.network(
            'https://envato-shoebox-0.imgix.net/182a/fdda-0010-4679-a9f3-c7cef4e6bc14/scenic_switzerland_landscape_17978.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=1400&s=49e3795c1d804a0ca9116e46776df7f6',
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover),
      ),
    );
  }

  Widget buildProfileAvatar() {
    return Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .05,
                left: 8.0,
                right: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 8.0 * 2.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(0, 1),
                        blurRadius: 8,
                        spreadRadius: 0.0)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 70),
                    Text('Marian Hart',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          'Director of Project Management at \n GoldenPhase Solar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('Syracuse University - New York',
                          style: TextStyle(
                            color: Colors.grey[600],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Greater San Diego Area . 500 ',
                          style: TextStyle(
                            color: Colors.grey[600],
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            onPressed: () {},
                            child: Container(
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(color: Colors.blue)),
                                child: Text('MESSAGE',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    )))),
                        FlatButton(
                          onPressed: () {},
                          color: Colors.blue,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text('CONNECT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          " I'm a renewable energy executive with 10 years of experience, and have built strong skills in get...",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * .027,
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: ClipOval(
                    child: Image.network(
                  "https://i.pinimg.com/280x280_RS/d1/34/90/d134908d73b85b3fd9cecd73bbf35c00.jpg",
                  fit: BoxFit.fill,
                )),
              ),
            ),
          ),
          Positioned(
              top: 90,
              right: 20,
              width: 120,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "2nd",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
        ]);
  }
}

// Widget buildProfileAvatar() {
//   return
// Positioned(
//   top : coverHeight - avatarHeight/4,
//   child: Container(
//     height: 350,
//     width: 350,
//     color: Colors.blue,
//   ),
// );
//   }
// }
