// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.red,
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'บันทึกการกิน',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          ),
          body: Center(
            child: Column( 
              children: [ 
                SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2023/04/20/12/22/globe-7939725_1280.jpg',
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.45,
                  fit: BoxFit.cover,
                ),
              ),
              ],
            ),
          ),

    );
  }
}