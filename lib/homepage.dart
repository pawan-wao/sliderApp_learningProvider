import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_usingprovider/Provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Slider Using Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(builder: (context,value,child){
              return  Slider(value: provider.valp, onChanged: (val){
                //setiing or changing value
                provider.setValue(val);
              });
            }),


            //containers
            SizedBox(height: 30,),

            Consumer<SliderProvider>(builder: (context, value, child){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    //first container
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green.withOpacity(value.valp),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    //second container
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.deepOrangeAccent.withOpacity(value.valp),
                        ),
                      ),
                    ),


                  ],
                ),
              );
            })
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
