import 'package:flutter/material.dart';
import 'package:myapp/pages/register.dart';
import 'package:myapp/utils/colors.dart';
import 'package:myapp/utils/fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/elips_result.png'),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 21 ,vertical: 24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: const Offset(3, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 31 , top: 31, right: 31),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Your current mood is sad :(',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(179, 0, 0, 0)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 44),
                                      child: Image.asset(
                                        'assets/sad.png',
                                      ),
                                    ),
                                    const SizedBox(height: 31),
                                    const Text(
                                      'Here are some activities we recommend to help lift your mood and make you feel better!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54),
                                      textAlign: TextAlign.justify,
                                    ),
                                    const SizedBox(height: 24),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
