import 'package:flutter/material.dart';

class VisiblePage extends StatefulWidget {
  const VisiblePage({super.key});

  @override
  State<VisiblePage> createState() => _VisiblePageState();
}

class _VisiblePageState extends State<VisiblePage> {
  String selectedText = 'Text1';

  Widget buildVisibilityContainer(String text) {
    Color containerColor;
    String displayText;

    switch (text) {
      case 'Text1':
        containerColor = Colors.green;
        displayText = 'Text1 Data';
        break;
      case 'Text2':
        containerColor = Colors.blue;
        displayText = 'Text2 Data';
        break;
      case 'Text3':
        containerColor = Colors.orange;
        displayText = 'Text3 Data';
        break;
      default:
        containerColor = Colors.grey;
        displayText = '';
    }

    return Visibility(
      visible: selectedText == text,
      child: Container(
        width: double.infinity,
        height: 200,
        color: containerColor,
        alignment: Alignment.center,
        child: Text(
          displayText,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility Widget"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedText = 'Text1';
                  });
                },
                child: Text(
                  "Text1",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: selectedText == 'Text1' ? Colors.green : Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedText = 'Text2';
                  });
                },
                child: Text(
                  "Text2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: selectedText == 'Text2' ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedText = 'Text3';
                  });
                },
                child: Text(
                  "Text3",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color:
                        selectedText == 'Text3' ? Colors.orange : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Use the function to display visibility widgets
          buildVisibilityContainer(selectedText),
        ],
      ),
    );
  }
}
//   bool isVisible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Visibility Widget"),
//       ),
//       body: Column(
//         children: [
//           GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isVisible = !isVisible;
//                 });
//               },
//               child: Center(
//                 child: Text(
//                   isVisible ? "Hide Data" : "Show Data",
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                       color: isVisible ? Colors.green : Colors.red),
//                 ),
//               )),
//           Visibility(
//             visible: isVisible,
//             // replacement: Container(
//             //   width: double.infinity,
//             //   height: 200,
//             //   color: Colors.red,
//             // ),
//             child: Container(
//               width: double.infinity,
//               height: 200,
//               color: Colors.green,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
