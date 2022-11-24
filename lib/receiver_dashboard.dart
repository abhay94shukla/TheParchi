import 'package:flutter/material.dart';

class ReceiverDashboard extends StatelessWidget {
  const ReceiverDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Receiver DASHBOARD"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important_sharp),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          height: 470,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                offset: const Offset(2, 2),
                color: Colors.grey.shade400,
                blurRadius: 8,
                spreadRadius: 2,
              ),
              BoxShadow(
                offset: const Offset(-2, -2),
                color: Colors.grey.shade400,
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Perchi.png',
                height: 130,
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber[800],
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Create Challan",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
