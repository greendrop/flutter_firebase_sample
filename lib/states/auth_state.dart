import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:state_notifier/state_notifier.dart';

class AuthState {
  User user;
  bool isUserCreating = false;
  bool isFetching = false;
  bool isError = false;
  String errorCode;
  String errorMessage;
}

class AuthStateNotifier extends StateNotifier<AuthState> with LocatorMixin {
  AuthStateNotifier() : super(AuthState());

  @override
  void initState() {
    super.initState();
    initializeUser();
  }

  void initializeUser() {
    final user = FirebaseAuth.instance.currentUser;
    setUser(user);
  }

  AuthState setUser(User user) {
    state.user = user;
    return state;
  }

  // ignore: avoid_positional_boolean_parameters
  AuthState setIsUserCreating(bool isUserCreating) {
    state.isUserCreating = isUserCreating;
    return state;
  }

  // ignore: avoid_positional_boolean_parameters
  AuthState setIsFetching(bool isFetching) {
    state.isFetching = isFetching;
    return state;
  }

  // ignore: avoid_positional_boolean_parameters
  AuthState setIsError(bool isError) {
    state.isError = isError;
    return state;
  }

  AuthState setErrorCode(String errorCode) {
    state.errorCode = errorCode;
    return state;
  }

  AuthState setErrorMessage(String errorMessage) {
    state.errorMessage = errorMessage;
    return state;
  }

  Future<AuthState> createUserWithEmailAndPassword(
      String email, String password) async {
    final completer = Completer<AuthState>();

    setIsUserCreating(true);
    setUser(null);
    setIsError(false);
    setErrorCode(null);
    setErrorMessage(null);

    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      setUser(userCredential.user);
    } on FirebaseAuthException catch (error) {
      setIsError(true);
      setErrorCode(error.code);
      setErrorMessage(error.message);
    }

    setIsUserCreating(false);

    completer.complete(state);
    return completer.future;
  }

  Future<AuthState> signInWithEmailAndPassword(
      String email, String password) async {
    final completer = Completer<AuthState>();

    setIsFetching(true);
    setUser(null);
    setIsError(false);
    setErrorCode(null);
    setErrorMessage(null);

    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      setUser(userCredential.user);
    } on FirebaseAuthException catch (error) {
      setIsError(true);
      setErrorCode(error.code);
      setErrorMessage(error.message);
    }

    setIsFetching(false);

    completer.complete(state);
    return completer.future;
  }
}
