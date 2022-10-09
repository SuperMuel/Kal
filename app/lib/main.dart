import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kal_app/auth/firebase_auth_facade.dart';
import 'package:kal_app/auth/i_auth_facade.dart';
import 'package:kal_app/firebase_options.dart';
import 'package:kal_app/user/i_user_repository.dart';
import 'package:kal_app/user/kal_api_user_repository.dart';
import 'package:shared/shared.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  GetIt.I.registerSingleton<IAuthFacade>(FirebaseAuthFacade());
  GetIt.I.registerSingleton<IUserRepository>(KalApiUserRepository());
  GetIt.I.registerSingleton<Dio>(Dio(BaseOptions(
    baseUrl: 'http://localhost:8080/',
    // contentType: 'application/json; charset=utf-8' set by default
  )));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const CurrentUser(),
      ),
    );
  }
}

class CurrentUser extends StatefulWidget {
  const CurrentUser({super.key});

  @override
  State<CurrentUser> createState() => _CurrentUserState();
}

class _CurrentUserState extends State<CurrentUser> {
  User? _user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: GetIt.I.get<IAuthFacade>().logInWithGoogle,
          child: const Text("sign in"),
        ),
        ElevatedButton(
            onPressed: () async {
              final either = await GetIt.I.get<IUserRepository>().currentUser;
              either.fold(
                (l) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(l.toString())));
                },
                (r) {
                  _user = r;
                },
              );
            },
            child: Text("Get user")),
        Text("User: $_user"),
      ],
    );
  }
}
