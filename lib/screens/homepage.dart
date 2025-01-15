import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notesList = [
      {
        'note': 'How to make your personal brand stand out online.',
        'date': 'May 21, 2020',
        'color': Colors.red,
      },
      {
        'note': 'Beautiful weather app UI concepts we wish existed.',
        'date': 'Mar 18, 2020',
        'color': Colors.green,
      },
      {
        'note': '10 excellent font pairing tools for designers.',
        'date': 'Feb 01, 2020',
        'color': Colors.purple,
      },
      {
        'note':
            'Spotify\'s Reema Bhagat on product design, music, and the key to a happy career.',
        'date': 'Feb 01, 2020',
        'color': Colors.orange,
      },
      {
        'note': '12 eye-catching mobile wallpaper.',
        'date': 'Feb 01, 2020',
        'color': Colors.blue,
      },
      {
        'note':
            'Design For Good: Join The Face Mask Challenge Eye-catching mobile.',
        'date': 'May 21, 2020',
        'color': Colors.pink,
      },
      {
        'note': 'How to improve your productivity with simple tips.',
        'date': 'Jun 10, 2020',
        'color': Colors.yellow,
      },
      {
        'note': 'Top 5 tools every designer should know about.',
        'date': 'Jul 12, 2020',
        'color': Colors.cyan,
      },
      {
        'note': 'Creating stunning visuals for social media.',
        'date': 'Aug 20, 2020',
        'color': Colors.teal,
      },
      {
        'note': 'The ultimate guide to personal finance.',
        'date': 'Sep 05, 2020',
        'color': Colors.lime,
      },
      {
        'note': 'Developing effective communication skills.',
        'date': 'Oct 15, 2020',
        'color': Colors.indigo,
      },
      {
        'note': 'Achieving work-life balance in a busy world.',
        'date': 'Nov 22, 2020',
        'color': Colors.brown,
      },
      {
        'note': 'Innovative design trends for 2021.',
        'date': 'Dec 01, 2020',
        'color': Colors.deepOrange,
      },
      {
        'note': 'Essential soft skills for career advancement.',
        'date': 'Jan 10, 2021',
        'color': Colors.lightGreen,
      },
      {
        'note': 'Building a strong online presence.',
        'date': 'Feb 14, 2021',
        'color': Colors.lightBlue,
      },
      {
        'note': 'The benefits of mindfulness and meditation.',
        'date': 'Mar 03, 2021',
        'color': Colors.deepPurple,
      },
      {
        'note': 'Strategies for successful remote work.',
        'date': 'Apr 08, 2021',
        'color': Colors.amber,
      },
      {
        'note': 'Tips for a healthy and active lifestyle.',
        'date': 'May 19, 2021',
        'color': Colors.pinkAccent,
      },
      {
        'note': 'How to stay motivated and achieve your goals.',
        'date': 'Jun 25, 2021',
        'color': Colors.orangeAccent,
      },
      {
        'note': 'Exploring the latest tech innovations.',
        'date': 'Jul 30, 2021',
        'color': Colors.blueAccent,
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade800,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
        toolbarHeight: 80,
      ),
      body: MasonryGridView.builder(
        itemCount: notesList.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: notesList[index]['color'],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      notesList[index]['note'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      notesList[index]['date'],
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
//  GridView.builder(
//         itemCount: notesList.length,
//         gridDelegate:
//             // ignore: prefer_const_constructors
//             SliverGridDelegateWithMaxCrossAxisExtent(
//           maxCrossAxisExtent: 300,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           childAspectRatio: .8,
//         ),
//         itemBuilder: (context, index) {
//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: notesList[index]['color'],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(15),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Text(
//                       notesList[index]['note'],
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 23,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       notesList[index]['date'],
//                       style: const TextStyle(
//                         color: Colors.black54,
//                         fontSize: 17,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),