import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:edulink_mobile/features/auth/login/data/models/auth_request_model.dart';
import 'package:edulink_mobile/features/auth/login/presentation/bloc/auth_bloc.dart';
import 'package:edulink_mobile/features/auth/login/presentation/widgets/my_form_field.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class Login extends StatefulWidget implements AutoRouteWrapper {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => AuthBloc(),
        child: this,
      );
}

class _LoginState extends State<Login> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late ValueNotifier<bool> obscured;

  late ValueNotifier<String> errorMessage;
  late bool valid;

  @override
  void initState() {
    super.initState();
    obscured = ValueNotifier(true);
    errorMessage = ValueNotifier("");
    valid = true;
  }

  void _validateUsername(String value) {
    if (value.isEmpty) {
      setState(() {
        errorMessage.value = "Veuillez saisir votre nom d'utilisateur";
        valid = false;
      });
    } else {
      setState(() {
        errorMessage.value = '';
        valid = true;
      });
    }
  }

  void _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        errorMessage.value = "Veuillez saisir votre mot de passe";
        valid = false;
      });
    } else if (value.length < 6) {
      setState(() {
        errorMessage.value =
            "Le mot de passe doit contenir au moins 6 caractères";
        valid = false;
      });
    } else {
      setState(() {
        errorMessage.value = '';
        valid = true;
      });
    }
  }

  void _onSubmit() {
    _validateUsername(_usernameController.text);
    if (valid) {
      _validatePassword(_passwordController.text);
    }
    if (valid) {
      final userModel = AuthRequestModel(
        code: _usernameController.text,
        password: _passwordController.text,
      );
      context.read<AuthBloc>().add(
            LoginEvent(request: userModel),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            context.router.replace(const ChooseChildRoute());
          }
        },
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(40),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF5652),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Se Connecter',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Username :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Raleway',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: MyFormField(
                            controller: _usernameController,
                            onSubmitted: (_) => _onSubmit,
                            hintText: '123XYZ1234',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Mot De Passe :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Raleway',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: ValueListenableBuilder<bool>(
                            valueListenable: obscured,
                            builder: (_, obs, __) => MyFormField(
                              controller: _passwordController,
                              obscured: obscured.value,
                              hintText: '..................',
                              onSubmitted: (_) => _onSubmit,
                              suffixIcon: InkWell(
                                onTap: () {
                                  obscured.value = !obs;
                                },
                                child: obs
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ValueListenableBuilder(
                          valueListenable: errorMessage,
                          builder: (context, value, child) {
                            return Text(
                              errorMessage.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          },
                        ),
                      ),
                      // const Expanded(child: SizedBox()),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          _onSubmit();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                          child: const Text(
                            'Se Connecter',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 86, 82, 1),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            context.router.push(const ForgetPassword()),
                        child: const Text(
                          'Mot de passe oublié ?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Raleway',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
