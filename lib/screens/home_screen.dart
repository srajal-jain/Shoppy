import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppy/screens/cartview.dart';
import 'package:shoppy/screens/item1.dart';
import 'package:shoppy/screens/payment_screen.dart';
import 'package:shoppy/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/screens/item1.dart';
import 'package:shoppy/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 192,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage('assets/images/offers3.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage('assets/images/offers1.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage('assets/images/offers2.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item1.jpg'),
                  ),
                ),
              ),
              title: Text("Nike BTX Lite"),
              subtitle: Text("Rs. 3,999 "),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Item1()));
              } ,
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item2.jpg'),
                  ),
                ),
              ),
              title: Text("Adidas Men Trainers"),
              subtitle: Text("Rs. 2,999 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item3.jpg'),
                  ),
                ),
              ),
              title: Text("Woodland Canvas VX"),
              subtitle: Text("Rs. 2,599 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item4.jpg'),
                  ),
                ),
              ),
              title: Text("Tommy Hilfiger Watch"),
              subtitle: Text("Rs. 7,995 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item5.jpg'),
                  ),
                ),
              ),
              title: Text("Fossil Men's Neutra"),
              subtitle: Text("Rs. 12,495 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item6.jpg'),
                  ),
                ),
              ),
              title: Text("Titan EMX "),
              subtitle: Text("Rs. 6,999 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item7.jpg'),
                  ),
                ),
              ),
              title: Text("iPhone XR"),
              subtitle: Text("Rs. 45,999 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item8.jpg'),
                  ),
                ),
              ),
              title: Text("Dell Inspiron 5502"),
              subtitle: Text("Rs. 67,999 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item9.jpg'),
                  ),
                ),
              ),
              title: Text("Ultralight Keyboard"),
              subtitle: Text("Rs. 3,799 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item10.jpg'),
                  ),
                ),
              ),
              title: Text("Apple iPad Air 5th Gen"),
              subtitle: Text("Rs. 52,499 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item11.jpg'),
                  ),
                ),
              ),
              title: Text("Sony WH-C510"),
              subtitle: Text("Rs. 2,790 "),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: AssetImage('assets/images/item12.jpg'),
                  ),
                ),
              ),
              title: Text("HP Wireless Z3700"),
              subtitle: Text("Rs. 1,099 "),
            ),
            SizedBox(height: 10),

          ],
        ),
      ),
    );
  }

  // ListView _buildListView(BuildContext context){
  //   return ListView.builder(
  //     itemCount: 12,
  //     itemBuilder: (_, index){
  //       return ListTile(
  //         title: Text('The list item #$index'),
  //         subtitle: Text('The subtitle'),
  //         // leading: Image.asset('assets/images/item$index+1.png'),
  //         onTap: (){
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => DetailPage(index)));
  //         },
  //       );
  //     }
  //   );
  // }
}


// appBar: AppBar(
// title: Text('Hello User'),
// leading: IconButton(
// icon: Icon(
// Icons.menu,
// color: Colors.white,
// ),
// onPressed: () {},
// ),
// actions: [
// IconButton(onPressed: () {}, icon: Icon(Icons.search)),
// ],
// ),


