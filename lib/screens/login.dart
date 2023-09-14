import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Color greenland = const Color(0xff0E5F00);
    TextEditingController userController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/loginbackground.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.75),
                  // Colors.transparent,
                ])),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/logo_otris.png"))),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            "Login OTRIS",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Enter Username & Password to Access your Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 650,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: greenland,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextFormField(
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                controller: userController,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 650,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: greenland,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: true,
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                controller: passwordController,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Container(
                          width: 650,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () => context.goNamed('list_room'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(greenland),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
