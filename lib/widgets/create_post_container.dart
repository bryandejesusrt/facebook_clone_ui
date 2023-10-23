import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  Expanded buildTextField(String hintText) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration.collapsed(
          hintText: hintText,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 10.0),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: '¿Qué estás pensando?',
                    ),
                  ),
                ),
                // Center(
                //   child: Transform.rotate(
                //       angle: -35 *
                //           (3.1415926535 /
                //               180), // Ángulo en radianes (45 grados en este ejemplo)
                //       child: const Icon(
                //         Icons.send,
                //         color: Color.fromARGB(255, 39, 39, 39),
                //         size: 20.0,
                //       )),
                // )
              ],
            ),
            const Divider(
              height: 15.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Live',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 2.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text(
                      'Fotos',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    width: 2.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text(
                      'Videos',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
