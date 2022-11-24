import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Drawer appDrawer() => Drawer(
      backgroundColor: Color(0xfff5f5f5),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  "Hi",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[400],
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(height: 50),
            TextButtonTile(text: 'HOW "THE PARCHI" WORKS'),
            TextButtonTile(text: 'FREE TRIAL'),
            TextButtonTile(text: 'PRICING'),
            TextButtonTile(text: 'ALL FEATURES'),
            TextButtonTile(text: 'SUB USERS'),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

class TextButtonTile extends StatelessWidget {
  const TextButtonTile({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 250,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          onPressed: () {},
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
