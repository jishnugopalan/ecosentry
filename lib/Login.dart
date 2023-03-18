import 'package:flutter/material.dart';
//import 'package:ecosentry/UserRegistration.dart';
import 'package:ecosentry/Registration.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/signin.png'),
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: false,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.alternate_email,
                  color: Colors.black.withOpacity(.3),
                ),
                hintText: 'Enter Email',
              ),
              cursorColor: Colors.black.withOpacity(.5),
            ),
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black.withOpacity(.3),
                ),
                hintText: 'Enter Password',
              ),
              cursorColor: Colors.black.withOpacity(.5),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 53, 87, 33),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: const Center(
                  child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 62, 59, 59)),
                  ),
                  TextSpan(
                    text: '  Reset Here',
                    style: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 10,
            ),
                        Center(
             child: TextButton(
           style: ButtonStyle(
           foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 62, 59, 59)),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp()));
             },
           child: Text('Register'),
          ),),

            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset('assets/images/google.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}