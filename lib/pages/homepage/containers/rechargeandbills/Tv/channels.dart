import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Channels extends StatefulWidget {
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  final List<String> _channels = [
    "ClearTv",
    "DishHome",
    "JagriTv",
    "MAXTV",
    "MERO",
    "PRABHUTV",
    "SIMTV",
    "SKYTV",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("TV"),
            Icon(Icons.search),
          ],
        ),
      ),
      body: Column(
        children: [
          // Wrapping ListView.builder in Expanded to prevent overflow
          Expanded(
            child: ListView.builder(
              itemCount:
                  _channels.length, // Use the length of the channels list
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "lib/assets/smartphones.jpg",
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(
                                  width:
                                      8), // Added spacing between image and text
                              Text(
                                _channels[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text("1.00%"),
                              Icon(
                                Icons.circle,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Icon(Icons.headphones)],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Help & Support"),
                    Text("Facing problems? Get quicl support on your queries")
                  ],
                )
              ])
            ],
          )
        ],
      ),
    );
  }
}
