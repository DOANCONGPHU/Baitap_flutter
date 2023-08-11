import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 171, 19),
          title: const Text('TRANG'),
        ),
        body: const Center(
          child: MyWidget(),
        ),
    )
    ),
    debugShowCheckedModeBanner: false,
  )
);
}
class MyLove extends StatelessWidget{
  final bool loading;
  const MyLove(this.loading, {super.key});
  @override
  Widget build(BuildContext context) {
   return loading? const CircularProgressIndicator.adaptive() : const Text('data',
   style: TextStyle(
      color: Color.fromARGB(255, 225, 225, 225),
      backgroundColor: Color.fromARGB(255, 16, 177, 43),
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontFamily: 'Time New Roman',
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.solid
   ));
  }
}

class MyWidget extends StatelessWidget{
  const MyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text('Name:', style:  TextStyle(fontSize: 14,color: Colors.grey),),
              ),
              Text('Doan cong phu', style:  TextStyle(fontSize: 14,color: Colors.grey))
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text('email:', style:  TextStyle(fontSize: 14,color: Colors.grey),),
              ),
              Text('congp848@gmail.com', style:  TextStyle(fontSize: 14,color: Colors.grey))
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Text('Đẹp trai:', style:  TextStyle(fontSize: 14,color: Colors.grey),),
              ),
              Text('Kó', style:  TextStyle(fontSize: 14,color: Colors.grey))
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                  ),
                  onPressed: (){}, 
                  child: const Text('Cancel'))
              ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: (){}, 
                    child: const Text('Submit'))
              )
            ],
          )
        ],
      ),
    );


    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
        
    //     ElevatedButton(onPressed: (){}
    //     , child: const Text('button 1', 
    //     style: TextStyle(fontSize: 20),)
    //     ),
    //     ElevatedButton(onPressed: (){}
    //     , child: const Text('button 2', 
    //     style: TextStyle(fontSize: 20),)
    //     ),ElevatedButton(onPressed: (){}
    //     , child: const Text('button 3', 
    //     style: TextStyle(fontSize: 20),)
    //     )
    //   ]
    // );



      // return Container(
      //   margin: const EdgeInsets.all(10),
      //   child: ElevatedButton.icon(onPressed:null,
      //   style: ElevatedButton.styleFrom(
      //     padding: const EdgeInsets.all(13),
      //     disabledBackgroundColor: Colors.grey,
      //     disabledForegroundColor: Colors.red,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(20)
      //     ),
      //     elevation: 10,
      //     shadowColor: Colors.amber.withOpacity(0.5),
      //     side: const BorderSide(width: 2,color: Color.fromARGB(255, 27, 200, 76))
      //   ),
      //   icon: const Icon(Icons.edit, size: 30),
      //    label: const Text('data',style: TextStyle(fontSize: 30),)),
      // );
  }
}