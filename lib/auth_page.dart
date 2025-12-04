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
          Center(child: Text("Login Page Placeholder")),
          Center(child: Text("Signup Page Placeholder")),
        ],
      ),
    );
  }
}
