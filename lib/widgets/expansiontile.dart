import 'package:api/screen/mainscreen.dart';
import 'package:flutter/material.dart';


class Expansiontile extends StatefulWidget {
  const Expansiontile({super.key});

  @override
  State<Expansiontile> createState() => _ExpansiontileState();
}

class _ExpansiontileState extends State<Expansiontile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey
              ),
              child: ExpansionTile(
                title: Text('Department of English'),
                children: [
                  Row(
                    children: [
                      
                    ],
                  ),

      
                  newtile(name: 'Shane Warne', edu: 'Master', pos: 'Hod', imgurl: 'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw'),
                  newtile(name: 'William Regal', edu: 'Master', pos: 'Hod', imgurl: 'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw'),
                  newtile(name: 'Shawn Michael', edu: 'Master', pos: 'Hod', imgurl: 'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw')
                ],
              ),
            );
        
        }),
      ),
      ],
    );
  }
}