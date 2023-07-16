import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caculator"),
      ),
      backgroundColor: Color.fromARGB(205, 217, 215, 228),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('C',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('7',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('4',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('1',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('0',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('X',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      onPressed: () => {},
                      color: Color.fromARGB(255, 38, 168, 194),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
