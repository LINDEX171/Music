import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lastmusicapp/components/my_drawer.dart';
import 'package:lastmusicapp/pages/dq_page.dart';
import 'package:lastmusicapp/pages/feat_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Container(
                      //  padding: EdgeInsets.all(5),
                      //  decoration: BoxDecoration(
                      //      color: Color.fromRGBO(244, 243, 243, 1),
                      //      borderRadius: BorderRadius.circular(15)),
                      //  child: TextField(
                      //    decoration: InputDecoration(
                      //        border: InputBorder.none,
                      //        prefixIcon: Icon(
                      //          Icons.search,
                      //          color: Colors.black87,
                      //        ),
                      //        hintText: "Search you're looking for",
                      //        hintStyle:
                      //            TextStyle(color: Colors.grey, fontSize: 15)),
                      //  ),
                      //    ),
                      //   Text(
                      //     'Find Your',
                      //    style: TextStyle(color: Colors.black87, fontSize: 25),
                      //   ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Dip Doundou Guiss',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Albums',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: Colors.white,
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Builder(
                                builder: (context) =>
                                    songCard(context, 'assets/images/lflf.jpeg'),
                              ),
                              Builder(
                                builder: (context) =>
                                    songCard(context, 'assets/images/lnn.jpeg'),
                              ),
                              Builder(
                                builder: (context) =>
                                    songCard(context, 'assets/images/tlk.jpg'),
                              ),
                              Builder(
                                builder: (context) =>
                                    songCard(context, 'assets/images/bnt.jpg'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DqPage()),
                            );
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/dq.jpg'),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [0.3, 0.9],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Dip Quainzaine',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FeatPage()),
                            );
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/dip.jpeg'),
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  stops: [0.3, 0.9],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.2),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Featuring',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget songCard(BuildContext context, String image) {
    return GestureDetector(
      onTap: () {
        switch (image) {
          case 'assets/images/lnn.jpeg':
            Navigator.pushNamed(context, '/lnn');
            break;
          case 'assets/images/lflf.jpeg':
            Navigator.pushNamed(context, '/lflf');
            break;
          case 'assets/images/tlk.jpg':
            Navigator.pushNamed(context, '/tlk');
            break;
          case 'assets/images/bnt.jpg':
            Navigator.pushNamed(context, '/bnt');
            break;

          default:
            break;
        }
      },
      child: AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                  0.1,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ])),
          ),
        ),
      ),
    );
  }
}
