import 'package:flutter/material.dart';
import 'package:kfs_user/payment/payments.dart';

class BookingBodyWidget extends StatelessWidget {
  const BookingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' K F S'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => PaymentApp())));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text('Confirm'),),
          ],
        ),
      ),
    );
  }
}
