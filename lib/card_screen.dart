import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cardScreen extends StatelessWidget {
  const cardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('lib/asset/ima/img1.JPG'),
              radius: 50,
            ),
            const Text(
              "Kerolos Essa",
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 40, color: Colors.white),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(fontSize: 18, color: Colors.grey[300]),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.white,
                thickness: .2,
                indent: 100,
                endIndent: 100,
              ),
            ),
            info(
                num: "01065659127",
                icon: const Icon(Icons.phone, color: Colors.teal)),
            const SizedBox(
              height: 20,
            ),
            info(
                num: "kokoessa@gmail.com",
                icon: const Icon(Icons.email, color: Colors.teal)),
          ],
        ),
      ),
    );
  }

  Padding info({required num, required icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(3)),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 50,
              ),
              Text(
                num,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
