import 'dart:ui';

import 'package:course_app/sub/circits.dart';
import 'package:course_app/sub/electro.dart';
import 'package:course_app/sub/humminty.dart';
import 'package:course_app/sub/math.dart';
import 'package:course_app/sub/physics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:course_app/constants.dart';
// import 'package:course_app/model/category.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/rendering/box.dart';
import 'constants.dart';
import 'model/category.dart';
import 'sub/fluid.dart';
import 'sub/measur.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'C_engineer',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/icons/menu.svg"),
                // Image.asset("assets/images/"),
              ],
            ),
            SizedBox(height: 30),
            Text("!اهلا صديقى المهندس ", style: kHeadingextStyle),
            Text("!قبل متبدأ افتكر ان....كلووو رااايح",
                style: kSubheadingextStyle),


            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(40),
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Category", style: kTitleTextStyle),
              ],
            ),

            //cards
            SizedBox(height: 30),


            Expanded(

              child:ListView(

              children: <Widget>[
              //   physics
              InkWell(
               child:Container(
              child: Material(
                color: Colors.white,
                elevation: 14,
                borderRadius: BorderRadius.circular(24),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      alignment: Alignment.topRight,
                      child: Text('PHYSICS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24),
                        child: Image(

                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/physics.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
             ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Physics()),
                        );
                      }
                  ),
                //math
                SizedBox(height: 20),
        InkWell(
        child:Container(
              child: Material(
                color: Colors.white,
                elevation: 14,
                borderRadius: BorderRadius.circular(24),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      alignment: Alignment.topRight,
                      child: Text('MATH',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),

                    Container(
                      width: 200,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(24),
                        child: Image(

                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/math.jpg'),
                        ),
                      ),
                    )
                  ],
                ),


              ),
            ),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Math()),
              );
            }
        ),

                //CIRCITS
                SizedBox(height: 20),
              InkWell(
                child:Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 14,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          alignment: Alignment.topRight,
                          child: Text('CIRCITS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Container(
                          width: 200,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24),
                            child: Image(

                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage('assets/images/circits.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Circits()),
                  );
                }
              ),

               //ELECTRO
                SizedBox(height: 20),
                InkWell(
                child:Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 14,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          alignment: Alignment.topRight,
                          child: Text('ELECTRONICS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Container(
                          width: 120,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24),
                            child: Image(

                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage('assets/images/electronics.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Electro()),
                      );
                    }
              ),


                //MEASUR
                SizedBox(height: 20),
                InkWell(
                child:Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 14,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          alignment: Alignment.topRight,
                          child: Text('MEASURMENTS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Container(
                          width: 100,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24),
                            child: Image(

                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage('assets/images/measur.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Measur()),
                      );
                    }
              ),


                //FLUID
                SizedBox(height: 20),
                InkWell(
                child:Container(
                  child: Material(
                    color: Colors.white,
                    elevation: 14,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          alignment: Alignment.topRight,
                          child: Text('FLUID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Container(
                          width: 200,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24),
                            child: Image(

                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage('assets/images/fluid.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fluid()),
                      );
                    }
              ),


                //HUMMINTY
                SizedBox(height: 20),
                InkWell(
                child:Container(
                  child:Stack(
                  children: [

                   Material(
                    color: Colors.white,
                    elevation: 14,
                    borderRadius: BorderRadius.circular(24),
                    shadowColor: Color(0x802196F3),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          alignment: Alignment.topRight,
                          child: Text('HUMMANITY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24),
                            child: Image(

                              fit: BoxFit.cover,
                              alignment: Alignment.topLeft,
                              image: AssetImage('assets/images/humminity.jpg'),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ]
              ),
      ),
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Humm()),
                      );
                    }
               ),
                SizedBox(height: 20),
          ],

        ),
      ),
    ],
    ),
      ),
    );
  }
















         //
            // //

            //   child: StaggeredGridView.countBuilder(
            //     padding: EdgeInsets.all(0),
            //     crossAxisCount: 2,
            //     itemCount: categories.length,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 20,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         padding: EdgeInsets.all(20),
            //         height: index.isEven ? 200 : 240,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(16),
            //           image: DecorationImage(
            //             image: AssetImage(categories[index].image),
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             Text(
            //               'PHYSICS',
            //               style: kTitleTextStyle,
            //             ),
            //             Text(
            //               '${categories[index].numOfCourses} Courses',
            //               style: TextStyle(
            //                 color: kTextColor.withOpacity(.5),
            //               ),
            //             )
            //           ],
            //         ),
            //       );
            // },
            //         staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            //       ),







}

// child:Row(
//
// children: <Widget>[
// Card(
//     clipBehavior: Clip.antiAlias,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(24)
//   ),
//     child: Stack(
//       alignment: Alignment.center,
//            children: [
//              Ink.image(
//              image: AssetImage('assets/images/math.jpg'),
//              child: InkWell(
//                onTap: () {},
//             ),
//             height: 280,
//              fit: BoxFit.cover,
//              ),
//            Text(
//             'MATH',
//             style: TextStyle(
//              fontWeight: FontWeight.bold,
//               color: Colors.white,
//               fontSize: 55,
//             ),
//           ),
//           ],
//          ),
//
//     ),
