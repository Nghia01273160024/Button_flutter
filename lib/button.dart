import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('xxx');
                        },
                        child: Text(
                          'Setup your study plan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                              ),
                            ),
                    ),
                    Container(
                      width: 1,
                      height: 25,
                      color: Colors.white
                    )
                  ],
                ),
              decoration:  BoxDecoration(
              color: Color(0xfff1E90FF),
              borderRadius:  BorderRadius.only(
                topLeft: const Radius.circular(25),
                bottomLeft: const Radius.circular(25))),
              ),
              Container(
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: (){
                    print('yyy');
                  },
                 icon:const Icon(Icons.calendar_month_outlined,
                 color: Colors.white,
                 )
                 ),
              decoration:  BoxDecoration(
              color: Color(0xfff084B8A),
              borderRadius:  BorderRadius.only(
                topRight:  Radius.circular(25),
                bottomRight:  Radius.circular(25))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
