import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my_social_Profile'),
      ),
      body: Column(
          children:[
            Row(
              children: [
                ClipOval(
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFkfNOyU-UQQPha_Kcizp4KUKsSGQG66V47ERcrGMMklHj4zoGkfliIgI&s=10",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("sujdfadfdfsdjfsdjfk"),
              ],
            ),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: () => {} ,
                  child: Text("ติดตาม"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)
                      )
                  ),
                )
                ),
                SizedBox(
                  width: 20,
                  height: 100,
                ),
                Expanded(
                    child: OutlinedButton(
                      onPressed: () => {},
                      child: Text("ข้อความ"),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white54,
                        foregroundColor: Colors.black,
                      ),
                    )
                )
              ],
            )
          ]
      ),
    );
  }
}