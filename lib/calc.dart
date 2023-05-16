
import 'package:flutter/material.dart';
class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void Calculate(){
    double heightd=double.parse(height.text);
    double weightd=double.parse(weight.text);
    double heightsquare=heightd*heightd;
    result=weightd/heightsquare;
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.deepPurpleAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller:height ,),
            TextField(controller: weight,),
            TextButton(onPressed: (){Calculate();}, child: Text('Calculate')),
            Text('Result')
          ],
        ),
      ),
    );
  }
}