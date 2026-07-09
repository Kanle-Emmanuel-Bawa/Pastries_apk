import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/images/chin1.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Card.filled(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                color: Colors.white,
                child: Column(
                  spacing: 30,
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                      "Fast Delivery Right At \n Your Home!",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight(500),
                      ),
                    ),

                    Text(
                      'We have the best chips you can never miss for all your order we got you',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight(300),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                        ),
                        child: Text('Get Started'),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
