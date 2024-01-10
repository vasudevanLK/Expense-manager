import 'package:flutter/material.dart';
/*import 'package:flutter_icons/flutter_icons.dart';*/
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _email =
      TextEditingController(text: "someone@example.com");
  TextEditingController dateOfBirth = TextEditingController(text: "12-34-0000");
  TextEditingController password = TextEditingController(text: "business");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.05),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.01),
                spreadRadius: 10,
                blurRadius: 3,
                // changes position of shadow
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60, right: 20, left: 20, bottom: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Icon(Icons.settings_display_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: (size.width - 40) * 0.4,
                        child: Stack(
                          children: [
                            RotatedBox(
                              quarterTurns: -2,
                              child: CircularPercentIndicator(
                                  circularStrokeCap: CircularStrokeCap.round,
                                  backgroundColor:
                                      Colors.green.withOpacity(0.3),
                                  radius: 110.0,
                                  lineWidth: 6.0,
                                  percent: 0.53,
                                  progressColor: Colors.green),
                            ),
                            Positioned(
                              top: 16,
                              left: 13,
                              child: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.pngmart.com/files/10/User-Account-PNG-Transparent-Image.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (size.width - 40) * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "VASUDEVAN",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Credit score: 85.20",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 7, 134, 11),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 3,
                            // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 25, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "My Bank",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "₺3201.80",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white)),
                            child: const Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                                "Update",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xff67727d)),
                ),
                TextField(
                  controller: _email,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: const InputDecoration(
                      hintText: "Email", border: InputBorder.none),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xff67727d)),
                ),
                TextField(
                  controller: dateOfBirth,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: const InputDecoration(
                      hintText: "Date of birth", border: InputBorder.none),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MYSELF",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xff67727d)),
                ),
                TextField(
                  controller: password,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: const InputDecoration(
                      hintText: "professional Carrer",
                      border: InputBorder.none),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
