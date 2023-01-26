import 'package:flutter/material.dart';
import 'package:kfs_user/routes/route_constants.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text('KFS'),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.menu),
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/dash.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kerala Fuel Service',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              'Fuel Delivery and time ,\nsaving vehicle services',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              ' 24 hours service \n Delivered anywhere in Kerala \n will be with you in less than 35 minutes ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userFuelDelivery,
                                      );
                                    },
                                    child: const Text(
                                      'Fuel Delivery',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userCarWash,
                                      );
                                    },
                                    child: const Text(
                                      'Car Wash',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userEngineOil,
                                      );
                                    },
                                    child: const Text(
                                      'Engine Oil',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userBatteryServices,
                                      );
                                    },
                                    child: const Text(
                                      'Battery Service',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userTyre,
                                      );
                                    },
                                    child: const Text(
                                      'Tyres',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RouteConstants.userFeedback,
                                      );
                                    },
                                    child: const Text(
                                      'Feedback',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
