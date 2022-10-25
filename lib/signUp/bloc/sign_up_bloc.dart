import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) async {
      if (event is UserSignUpEvent) {
        final FirebaseAuth _auth = FirebaseAuth.instance;
        try {
          await _auth.createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          emit(SignUpSuccess());
        } on FirebaseAuthException catch (e) {
          print(e.code);
          emit(SignUpFailed(errMsg: e.code));
        }
      }
    });
  }
}
