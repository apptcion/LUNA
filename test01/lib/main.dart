import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();

}
  class _MyAppState extends State<MyApp>{

  List<String> todo = [
    "1",
    "123",
    "teadw",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                children: List.generate(todo.length, (index){
                  return
                    ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(74, 208, 208, 208),
                            minimumSize: Size(200,39),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                          
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Center(
                                child: Text(
                                  (index+1).toString() + ".",
                                  style: TextStyle(
                                  color : Colors.black,
                                  fontFamily: "SUITv1",
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                 )
                              )
                            ),
                            width: 50,
                            height: 50,
                          ),
                          Container(
                            child: Center(
                                child : Text(
                              todo[index],
                              style: TextStyle(
                                color : Colors.black,
                                fontFamily: "SUITv1",
                                fontSize: 30
                              ),
                            )),
                            width : 300,
                            height : 50
                          ),
                          Container(
                            child: Checkbox(
                              value: false,
                              onChanged: (value){
                                setState(() {

                                });
                              },
                            ),
                          )
                        ],
                  ));
                }),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(74, 208, 208, 208),
                  minimumSize: Size(369,39),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)
                  )
              ),
              child: Text(
                "할 일 목록",
                style: TextStyle(
                    color : Colors.black,
                    fontFamily: "SUITv1"
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),

      ),
    );
  }
}
