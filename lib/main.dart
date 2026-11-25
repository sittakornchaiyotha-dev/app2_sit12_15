
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my_social_profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),

      body: Column(
        children: [
          // โปรไฟล์และสถิติ
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1472396961693-142e6e269027?w=300",
                  ),
                ),
              ),

              const Expanded(
                child: Column(
                  children: [
                    Text("0", style: TextStyle(fontSize: 20)),
                    Text("โพสต์"),
                  ],
                ),
              ),

              const Expanded(
                child: Column(
                  children: [
                    Text("1", style: TextStyle(fontSize: 20)),
                    Text("ผู้ติดตาม"),
                  ],
                ),
              ),

              const Expanded(
                child: Column(
                  children: [
                    Text("0", style: TextStyle(fontSize: 20)),
                    Text("กำลังติดตาม"),
                  ],
                ),
              ),
            ],
          ),

          // ข้อมูลแนะนำตัว ชิดขอบซ้ายสุด
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 0,
              right: 12,
              top: 8,
              bottom: 8,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sittakorn chaiyotha",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text("นักศึกษาแผนกเทคโนโลยีสารสนเทศ"),
                Text("ความรักเป็นเครื่องพิสูธร์ ส่วนใบมะกรูดอยู่ในเครื่องต้มยำ"),
              ],
            ),
          ),

          // ปุ่มติดตามและข้อความ
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("ติดตาม"),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("ข้อความ"),
                  ),
                ),
              ),
            ],
          ),

          // แถบไอคอน
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.grid_on, size: 28),
                Icon(Icons.person, size: 28, color: Colors.grey),
              ],
            ),
          ),

          // รูปโพสต์ 3 รูป
          SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),

                Expanded(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?w=400",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),

                Expanded(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=400",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
