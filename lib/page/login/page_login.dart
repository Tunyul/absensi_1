import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;

    final bodyHeight = mqHeight - MediaQuery.of(context).padding.top;
    final bodyWidth = mqWidth - MediaQuery.of(context).padding.vertical;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: mqWidth * 0.1,
          ),
          SizedBox(
            child: Column(
              children: [
                Image.asset(
                  'assets/image/profile.png',
                  width: mqWidth * 0.3,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 46),
                )
              ],
            ),
          ),
          Container(
            height: mqHeight,
            width: mqWidth,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: bodyHeight * 0.05,
                  bottom: bodyHeight * 0.05,
                  left: bodyWidth * 0.1,
                  right: bodyWidth * 0.1),
              child: Column(
                children: [
                  Container(
                    height: mqHeight * 0.1,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
