import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  final String tipo;
  final double time;
  CreatePage({required this.tipo, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height.round() * 1,
        child: Material(
          color: ThemeData.dark().primaryColor,
          elevation: 12.0,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      tipo.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      (time <= 0 || time == "")
                          ? "0.0"
                          : time.toString() + " secs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }
}
