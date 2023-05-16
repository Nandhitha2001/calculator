import 'package:flutter/material.dart';
class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar
    (
        title:Text('CALCULATOR'),
      ),
      backgroundColor:Colors.blue,
      body:Padding(
        padding:const EdgeInsets.all(40.0),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            TextField(
              decoration:InputDecoration(
                fillcolor:Colors.black,
                filled:true,
                border:OutlineInputBorder(
                )
              ),
            ),
            Row(
              children:[
                Expanded(child:TextButton(onpressed:(){},child:Text('C'),Style:ButtonStyle(backgroundColor)
                )
                )
              ]
            )
          ]
        )
      )
    );
  }
}
















class Calc extends StatefulWidget {
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