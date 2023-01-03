import 'package:exam1/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam1/signUp.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 75, bottom: 75, left: 50, right: 50),
            child: Column(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 200,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The store of your",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "dreams. You will find",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "here what you need",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 75,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewPage(),));
                    });
                  },
                  child: Container(
                    height: 80,
                    width: 275,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Start Shopping",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Didn't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Sign in here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
