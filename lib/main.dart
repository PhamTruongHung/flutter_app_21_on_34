import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Simple Hung App",
      home: SIForm(),
    )
  );
}

class SIForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm>{

  var _currencies = ['VND', 'YEN', 'DOLLAR'];
  final _minimunPadding = 5.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Hung App'),
      ),
      body: Container(
        margin: EdgeInsets.all(2*_minimunPadding),
        child: Column(
          children: <Widget>[
            getImageAsset(),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Principal',
                hintText: 'enter principal...',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageAsset(){
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);

    return Container(child: image, margin: EdgeInsets.all(10*_minimunPadding),);
  }

}