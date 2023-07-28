import 'package:cric_score/views/constant.dart';
import 'package:flutter/material.dart';

class MainScore extends StatefulWidget {
  const MainScore({super.key});

  @override
  State<MainScore> createState() => _MainScoreState();
}

class _MainScoreState extends State<MainScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Palette.primary,
        title: Text(
          'Score Board',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Run/Wicket',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '120/9',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade900),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Batsman',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'A:',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '13',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade900),
                            ),
                          ],
                        ),
                        Icon(Icons.add),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'B:',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '16',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade900),
                            ),
                          ],
                        ),
                        Icon(Icons.add),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          'Bowler',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'A:',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '1  4  0  0  1',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey.shade900),
                            ),
                          ],
                        ),
                        Icon(Icons.add),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Palette.primary,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Next Bowler',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
