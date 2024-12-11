import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/dashboard/mood_log.dart';
import 'package:myapp/pages/register.dart';
import 'package:myapp/utils/colors.dart';
import 'package:myapp/utils/fonts.dart';

class ImpresionPage extends StatelessWidget {
  const ImpresionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('assets/elips_result.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 21, vertical: 32),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
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
                                  margin: const EdgeInsets.only(
                                      left: 22, top: 22, right: 22),
                                  child: Column(
                                    children: [
                                      Text(
                                        'How is your day going? How has it affected your mood? Or anything else...',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: const Color(0xff82829E),
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                        ),
                                      ),
                                      const SizedBox(height: 70),
                                      TextFormField(),
                                      const SizedBox(height: 50),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: IconButton.outlined(
                                          onPressed: null,
                                          icon: Icon(Icons.add_box_outlined, color: Colors.black87,),
                                        color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MoodLogPage()),
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: kPrimaryColor),
                              width: double.infinity,
                              child: const Center(
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
