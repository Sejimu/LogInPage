import "package:flutter/material.dart";
import "package:log_in_page/style/app_colors.dart";

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }
}

Container _buildBody() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: AppColors.bgColor,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 50,
          child: Image.asset(
            "assets/img/Ellipse 2.png",
            width: 215,
            height: 215,
          ),
        ),
        Positioned(
          bottom: 60,
          right: 0,
          child: Image.asset(
            "assets/img/Ellipse 1.png",
            width: 287,
            height: 287,
          ),
        ),
        Center(
          child: Container(
            width: 430,
            height: 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white.withOpacity(0.2),
            ),
            child: _logInBody(),
          ),
        ),
      ],
    ),
  );
}

Column _logInBody() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Column(
        children: [
          SizedBox(
            height: 23,
          ),
          Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
      _input(),
      _button(),
      _signIn(),
    ],
  );
}

Container _input() {
  return Container(
    width: 309,
    height: 57,
    child: TextField(
      decoration: InputDecoration(
        labelText: "Phone",
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
      ),
    ),
  );
}

ElevatedButton _button() {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      'Sign In',
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      backgroundColor: Colors.white.withOpacity(0.2),
      elevation: 0,
      fixedSize: Size(121, 57),
    ),
  );
}

Row _signIn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Are you a new user?",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Color(0xff02FFF0),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      )
    ],
  );
}
