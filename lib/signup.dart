import 'package:flutter/material.dart';
import 'package:sign/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  
                }, icon: const Icon(Icons.arrow_back_ios),),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create an account ✨",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome Please enter your details.",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    border: OutlineInputBorder(),
                    hintText: "Enter your email",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_outline),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: _togglePasswordVisibility,
            ),
            border: const OutlineInputBorder(),
            hintText: "Enter your password",
          ),
        ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      activeColor: Colors.blue,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    const Text('Must be at least 8 charcters'),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or sign up with',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: const Icon(
                        Icons.apple,
                      ),
                    ),
                    const SizedBox(width: 10), // Space between icons
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/300/300221.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 10), // Space between icons
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      color: Colors.white,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/5968/5968764.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
