import 'package:carApp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/specific_card.dart';
import '../pages/book.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {this.title,
      this.price,
      this.color,
      this.gearbox,
      this.fuel,
      this.brand,
      this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(
            brand,
            style: BasicHeading,
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: '1 Day',
                price: price,
                name2: 'INR',
              ),
              SpecificsCard(
                name: '1 Week',
                price: price * 7,
                name2: 'INR',
              ),
              SpecificsCard(
                name: '1 Month',
                price: price * 30,
                name2: 'INR',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                name2: color,
              ),
              SpecificsCard(
                name: 'Gearbox',
                name2: gearbox,
              ),
              SpecificsCard(
                name: 'Fuel',
                name2: fuel,
              )
            ],
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookNow()),
              );
            },
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 20, color: Color(0xff000000)),
            ),
          )
        ],
      ),
    );
  }
}
