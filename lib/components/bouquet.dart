import 'package:flutter/material.dart';

import '../util/const.dart';

class Bouquet extends StatelessWidget {
  String text;
  String image;
  int? number;

  Function() onPressed;

  Bouquet(this.text, this.image, this.onPressed, {this.number});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (_) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                height: 410,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 185,
                      height: 185,
                      child: Image.asset(
                        'assets/images/company_name.png',
                      ),
                    ),
                    Text(
                      'اسم الشركة',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {},
                      child: Text('حجز'),
                    )
                  ],
                ),
              );
            });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: SizedBox(
          width: 194,
          height: 205,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: number != null
                      ? Text(
                          '$number',
                          style: TextStyle(color: silver),
                        )
                      : Container(),
                ),
              ),
              Image.asset('assets/images/$image'),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
