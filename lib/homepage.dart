import 'package:flutter/material.dart';
import 'package:theparchi/drawer.dart';
import 'package:theparchi/sender_dashboard.dart';

import 'receiver_dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const CircleAvatar(backgroundColor: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_important_sharp),
          ),
        ],
      ),
      drawer: appDrawer(),
      body: currentIndex == 0
       ?Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 110,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SenderDashboard(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sender",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReceiverDashboard(),
                      ),
                    );
                  },
                  child: const Text(
                    "Receiver",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text("Sender (Last 7 days)"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  offset: const Offset(-2, -2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Challans Sent",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Qty: 0.0",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Value: Rs 0.0",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  offset: const Offset(-2, -2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Challans Received",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Qty: 0.0",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Value: Rs 0.0",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text("Receiver (Last 7 days)"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  offset: const Offset(-2, -2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Challans Sent",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Qty: 0.0",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Value: Rs 0.0",
                  style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  offset: const Offset(-2, -2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Challan Received",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Qty: 0.0",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                ),
                Text(
                  "Value: Rs 0.0",
                  style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      )
      : SizedBox(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outlined),
            label: "Chats",
          ),
        ],
      ),
    );
  }

}
