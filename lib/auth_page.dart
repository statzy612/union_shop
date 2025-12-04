import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4d2963),
        title: const Text("Account"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: "Login"),
            Tab(text: "Sign Up"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          _LoginPage(),
          _SignupPage(),
        ],
      ),
    );
  }
}

class _LoginPage extends StatelessWidget {
  const _LoginPage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Login to Your Account",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text("Email"),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Password"),
          const SizedBox(height: 8),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter your password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4d2963),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text("LOGIN"),
            ),
          ),
        ],
      ),
    );
  }
}

class _SignupPage extends StatelessWidget {
  const _SignupPage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Create an Account",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text("Full Name"),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your full name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Email"),
          const SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Password"),
          const SizedBox(height: 8),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Create a password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4d2963),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text("SIGN UP"),
            ),
          ),
        ],
      ),
    );
  }
}
