import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 80),
            child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Create your account",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: const Color.fromRGBO(255, 255, 255, 1), borderRadius: BorderRadius.circular(8), boxShadow: const [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 10, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: nameController,
                            validator: (value) {},
                            decoration: InputDecoration(
                                hintText: "Name",
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: const Color.fromRGBO(255, 255, 255, 1), borderRadius: BorderRadius.circular(8), boxShadow: const [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 10, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: usernameController,
                            validator: (value) {},
                            decoration: InputDecoration(
                                hintText: "Username",
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          alignment: Alignment.center,
                          height: 55,
                          decoration: BoxDecoration(color: const Color.fromRGBO(255, 255, 255, 1), borderRadius: BorderRadius.circular(8), boxShadow: const [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 10, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: passwordController,
                            validator: (value) {},
                            decoration: InputDecoration(
                                hintText: "Password",
                                contentPadding: const EdgeInsets.all(15),
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: const Color.fromRGBO(255, 255, 255, 1), borderRadius: BorderRadius.circular(8), boxShadow: const [
                            BoxShadow(offset: Offset(0, 3), blurRadius: 10, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                          child: TextFormField(
                            controller: confirmPasswordController,
                            validator: (value) {},
                            decoration: InputDecoration(
                                hintText: "Confirm Password",
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(14, 161, 125, 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              const SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(color: const Color.fromRGBO(0, 0, 0, 0.6), fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sign In",
                    style: GoogleFonts.poppins(color: const Color.fromRGBO(14, 161, 125, 1), fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
            ),
          ),
        ));
  }
}
