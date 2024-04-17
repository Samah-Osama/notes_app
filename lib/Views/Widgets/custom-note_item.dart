import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 214, 200, 76),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  'Hello To My World , let me take u to  a journey to the sky ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 33,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'May 21 , 2022',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
