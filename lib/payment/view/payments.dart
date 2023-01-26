// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// class PaymentApp extends StatefulWidget {
//   const PaymentApp({super.key});

//   @override
//   State<PaymentApp> createState() => _PaymentAppState();
// }

// class _PaymentAppState extends State<PaymentApp> {
//   late Razorpay _razorpay;
//   @override
//   void initState() {
//     super.initState();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _razorpay.clear();
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     print(response.orderId);
//     print(response.paymentId);
//     print(response.signature);

//     Fluttertoast.showToast(
//       textColor: Colors.green,
//       msg: 'SUCCESS: ${response.paymentId!}',
//       toastLength: Toast.LENGTH_SHORT,
//     );
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     Fluttertoast.showToast(
//       msg: 'ERROR: ${response.code} - ${response.message}',
//     );
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     Fluttertoast.showToast(
//       msg: 'EXTERNAL_WALLET: ${response.walletName}',
//       toastLength: Toast.LENGTH_SHORT,
//     );
//   }

//   void openCheckOut() {
//     final options = {
//       'key': 'rzp_test_0AOJEE1inQ6aEt',
//       'amount': 100 * 100,
//       'name': 'thasni',
//       'descriptioln': 'payment',
//       'prefill': {
//         'contact': 9526071167,
//         'email': 'abc@gmail.com',
//       },
//       'external': {
//         'wallets': [
//           'paytm',
//         ],
//       }
//     };
//     try {
//       _razorpay.open(options);
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child:
//             ElevatedButton(onPressed: openCheckOut, child: const Text('Pay')),
//       ),
//     );
//   }
// }
