import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class FloatView extends StatefulWidget {
  const FloatView({super.key});

  @override
  State<FloatView> createState() => _FloatViewState();
}

class _FloatViewState extends State<FloatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Float View"),
      backgroundColor: Colors.purple.shade800,),
      body: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          resizeToAvoidBottomInset: !isFloating,
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 100),
                    const Center(child: Text("Shantanu Khadse")),
                    const SizedBox(height: 50),
                    MaterialButton(
                      onPressed: () {
                        PIPView.of(context)!.presentBelow(const BackgroundScreen());
                      },
                      child: const Text("Start Floating", style: TextStyle(color: Colors.white)),
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(child: const Text("This is the background page")),
        ),
      ),
    );
  }
}
