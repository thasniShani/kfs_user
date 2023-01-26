import 'package:flutter/material.dart';

class BatteryService extends StatelessWidget {
  const BatteryService({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('K F S'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/battery.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
