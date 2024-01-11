import 'package:flutter/material.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: deviceHeight /
                2, // Set the bottom position to half of the screen height
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF9867C5), Color(0xFFFF8DC7)],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 85),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Select Gender',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Laila',
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => (),
                  // ),
                },
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 241, 225, 255),
                    border: Border.all(
                      color: const Color.fromARGB(255, 151, 83, 193),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Female',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Laila',
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 202),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => (),
                  // ),
                },
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF9867C5),
                        Color(0xFFFF8DC7),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Laila',
                    fontSize: 28,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 71,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                // Handle back button press
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: 69,
            right: 19,
            child: IconButton(
              icon: const Icon(Icons.done_rounded),
              onPressed: () {
                // Handle back button press
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: 182,
            left: 150,
            child: Image.asset(
              "assets/images/Female.png",
            ),
          ),
          Positioned(
            bottom: 184,
            left: 150,
            child: Image.asset(
              "assets/images/Male.png",
            ),
          ),
        ],
      ),
    );
  }
}
