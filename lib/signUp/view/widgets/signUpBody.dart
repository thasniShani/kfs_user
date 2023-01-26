import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kfs_user/dashboard/dashboard.dart';
import 'package:kfs_user/login/login.dart';
import 'package:kfs_user/routes/Route_constants.dart';
import 'package:kfs_user/signUp/bloc/sign_up_bloc.dart';

class SignUpBody extends StatelessWidget {
  SignUpBody({super.key});
  final _user = TextEditingController();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _mob = TextEditingController();
  final _confirmPass = TextEditingController();
  final _authBloc = SignUpBloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => _authBloc,
        child: BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              Navigator.pushNamed(context, RouteConstants.userSignUp);
            } else if (state is SignUpFailed) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('signUp Failed')));
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'K F S',
                style: TextStyle(fontSize: 18),
              ),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/signup.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Enter Your Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            TextField(
                              controller: _user,
                              decoration: const InputDecoration(
                                hintText: 'User Name',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              controller: _email,
                              decoration: const InputDecoration(
                                hintText: 'abc@gmail.com',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              controller: _pass,
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              controller: _mob,
                              decoration: const InputDecoration(
                                hintText: 'Mobile No.',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextField(
                              controller: _confirmPass,
                              decoration: const InputDecoration(
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _authBloc.add(
                                  UserSignUpEvent(
                                    user: _user.text,
                                    email: _email.text,
                                    password: _pass.text,
                                    confirmpass: _confirmPass.text,
                                    mobile: _mob.text,
                                  ),
                                );
                              },
                              child: const Text('SignUp'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: const Text('SignIn Page'),
                            ),
                          ],
                        ),
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
