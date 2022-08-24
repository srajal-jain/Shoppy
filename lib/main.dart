import 'package:flutter/material.dart';
import 'package:shoppy/screens/cartview.dart';
import 'package:shoppy/screens/catalog_screen.dart';
import 'package:shoppy/screens/home_screen.dart';
import 'package:shoppy/screens/settings_screen.dart';
import 'package:shoppy/screens/signin_screen.dart';
import 'package:shoppy/screens/item1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoppy/screens/settings_screen2.dart';
import 'package:get/get.dart';
import 'package:shoppy/screens/cartview2.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomeScreen(title: 'Shoppy'),
      home: SignInScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int index = 0;
  final screens = [
    HomeScreen(),
    CartView(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoppy'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blueAccent,
              height: 200.0,
              child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/user_image.jpg'),
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Ava Jones',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                      ],
                    ),
              ),
            ),
            SizedBox(height: 8.0),
            ListTile(
              leading: Icon(Icons.explore),
              title: const Text('All categories'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: const Text('Shoppy Plus'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: const Text('My Cart'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartView2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: const Text('My Wishlist'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: const Text('My Orders'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartView2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingScreen2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: const Text('Refer and Earn'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              color: Colors.black38,
            ),
            ListTile(
              title: const Text('Privacy policy'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help Centre'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          animationDuration: Duration(seconds: 3),
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              label: 'Orders',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}


// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('assets/images/user_image.jpg'),
// ),
// shape: BoxShape.circle,
// ),
// ),

