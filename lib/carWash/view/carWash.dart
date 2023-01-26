import 'package:flutter/material.dart';

class CarWashService extends StatelessWidget {
  const CarWashService({super.key});

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
                    image: AssetImage('assets/images/carwash.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 8),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
