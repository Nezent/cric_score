import 'package:cric_score/views/add_player.dart';
import 'package:cric_score/views/constant.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'Teams',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: TeamName(),
    );
  }
}

class TeamName extends StatelessWidget {
  const TeamName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Team A',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Team A name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.primary),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Team B',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Team B name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.primary),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Players per team',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: '7, 9, 11, etc',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Palette.primary),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddPlayers()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Palette.primary,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Save',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
