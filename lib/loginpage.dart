import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();

  bool _firstmobileFocus = false;
  bool _firstuserNameFocus = false;
  bool _firstpassFocus = false;
  bool _isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 69),
                  Center(
                    child: Container(
                      height: 60.5,
                      child: Image.asset("assets/images/samslogo.png"),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Hello! Welcome Back",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),

                  // Mobile number TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Focus(
                      onFocusChange: (value) {
                        _firstmobileFocus = value;
                        setState(() {});
                      },
                      child: TextFormField(
                        cursorColor: Colors.red,
                        cursorHeight: 18,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                          // if (value.length < 10) {
                          //   return 'Mobile number must be at least 10 characters long';
                          // }
                          return null; // Return null if the input is valid.
                        },
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Mobile Number",
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.grey[400],
                            fontSize: 14,
                          ),
                          counterText: "", // Hide character counter
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: _firstmobileFocus
                                    ? Colors.red
                                    : Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.phone,
                                  size: 18,
                                  color: _firstmobileFocus
                                      ? Colors.red
                                      : Colors.grey),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Username TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Focus(
                      onFocusChange: (value) {
                        _firstuserNameFocus = value;
                        setState(() {});
                      },
                      child: TextFormField(
                        cursorColor: Colors.red,
                        cursorHeight: 18,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          if (value.length < 6) {
                            return 'Username must be at least 6 characters long';
                          }
                          return null; // Return null if the input is valid.
                        },
                        maxLength: 20,
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.grey[400],
                            fontSize: 14,
                          ),
                          counterText: "", // Hide character counter
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: _firstuserNameFocus
                                    ? Colors.red
                                    : Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/user.png",
                                height: 20,
                                color: _firstuserNameFocus
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Password TextFormField with Form and validator
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Focus(
                      onFocusChange: (value) {
                        _firstpassFocus = value;
                        setState(() {});
                      },
                      child: Container(
                        height: 53,
                        child: TextFormField(
                          cursorColor: Colors.red,
                          cursorHeight: 18,
                          obscureText:
                              !_isvisible, // Set obscureText to the inverse of _isvisible
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null; // Return null if the input is valid.
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: GoogleFonts.poppins(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            prefixIcon: Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: _firstpassFocus
                                      ? Colors.red
                                      : Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  "assets/images/lock.png",
                                  height: 20,
                                  color: _firstpassFocus
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isvisible = !_isvisible;
                                  });
                                },
                                icon: Icon(
                                  _isvisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),

                  // Checkbox
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Checkbox(
                          activeColor: Colors.green,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "I've read and accepts all",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[500],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Terms and condition",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 46),

                  // Login button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, proceed with form submission.
                          // For example, you can implement login logic here.
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Login')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                        backgroundColor: Colors.red,
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),

                  // Don't have an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create One",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.red[200],
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 38),

                  // Copyright and secure icon
                  Column(
                    children: [
                      Text(
                        "© All rights reserved to Satzy Software Pvt Ltd.",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "100% Secure ",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          Image.asset("assets/images/mark.png", height: 11),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 13),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
