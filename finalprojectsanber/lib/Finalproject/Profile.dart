// import 'package:newsapp/views/Login.dart';
import 'package:finalprojectsanber/Finalproject/LoginScreen2.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D5603AQHdbEgvPE5aVA/profile-displayphoto-shrink_200_200/0/1702267249977?e=1716422400&v=beta&t=aprn1apWE0NuZj3cT9VKMTpk8O-olAbj-Lyp_j2h11c"),
            ),
            SizedBox(height: 16),
            const Text(
              "M.Fadhli A.C",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {
                launch("https://github.com/fadlifadli");
            },
              icon: Icon(Icons.code),
              label: const Text("GitHub: fadlifadli"),
            ),
            SizedBox(height: 8),
            TextButton.icon(
              onPressed: () {
                launch("https://www.instagram.com/Fadhli");
              },
              icon: Icon(Icons.photo),
              label: Text("Instagram: M.Fadhli.ac"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child:  ElevatedButton(
                onPressed: () async {
                // await FirebaseAuth.instance.signOut();
                // Navigator.pushAndRemoveUntil(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Login()
                //       ),
                //       (Route<dynamic> route) => false
                //   );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  backgroundColor: const Color(0xFF1A3665),
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text("Logout"),
              ),
            ),
          ],
        )
      )
    );
  }
}
