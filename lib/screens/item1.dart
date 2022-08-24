import 'package:flutter/material.dart';
import 'package:shoppy/screens/cartview.dart';
import 'package:shoppy/screens/home_screen.dart';
import 'package:shoppy/screens/cartview2.dart';
import 'package:shoppy/main.dart';

class Item1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomeScreen(title: 'Shoppy')));
            },
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/item1.jpg'),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'Nike BTX Lite',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
              child: Text(
                'Rs. 3,999',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'Sizes : ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(onPressed: () {} , child: Text('UK 8')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(onPressed: () {} , child: Text('UK 9')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(onPressed: () {} , child: Text('UK 10')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'The Air Jordan 13 Retro brings back the memorable game shoe that Michael Jordan wore during the 97–98 season, all the way to his 6th championship title. All the classic details are there like the quilted overlay, iconic sculpted midsole and holographic eye.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(onPressed: () {},
                      child: Text('Buy Now')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartView2()));
                  }, child: Text('Add to cart')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// RaisedButton(onPressed: () {} , child: Text('8')),
// RaisedButton(onPressed: () {} , child: Text('9')),
// RaisedButton(onPressed: () {} , child: Text('10')),
// RaisedButton(onPressed: () {} , child: Text('11')),