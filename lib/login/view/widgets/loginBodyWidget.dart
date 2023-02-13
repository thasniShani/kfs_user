import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfs_user/dashboard/dashboard.dart';
import 'package:kfs_user/login/bloc/login_bloc.dart';
import 'package:kfs_user/routes/route_constants.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});
  final _user = TextEditingController();
  final _pass = TextEditingController();
  final authBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => authBloc,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashBoard()),
              );
            } else {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Login Failed')));
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('K F S'),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/loginpage.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 125),
                          child: Text(
                            'Enter Your UserName:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _user,
                          decoration: const InputDecoration(
                            hintText: 'PhoneNumber/email',
                          ),
                        ),
                        TextField(
                          controller: _pass,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            authBloc.add(
                              UserLoginEvent(
                                email: _user.text,
                                password: _pass.text,
                              ),
                            );
                          },
                          //style: ElevatedButton.styleFrom(
                          //backgroundColor: Colors.amber),
                          child: const Text('Go'),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RouteConstants.userSignUp,
                            );
                          },
                          child: const Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
