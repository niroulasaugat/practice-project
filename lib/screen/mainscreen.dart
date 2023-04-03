import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import './steps.dart';
import '../widgets/expansiontile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final newheight = MediaQuery.of(context).size.height;
    final newWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Appbar(newheight, newWidth),
              Card(
                margin: EdgeInsets.all(10),
                child: Container(
                    height: newheight,
                    width: newWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        //  ListTile(
                        //   leading: CircleAvatar(
                        //     backgroundImage: ,
                        //   ),
                        //  )
        
                        newtile(
                            name: 'Elon Musk',
                            edu: 'phd',
                            pos: 'Founder',
                            imgurl:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 5),
                          child: Row(
                            children: [
                              LayoutBuilder(builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return _myTimelineView();
                              }),
                              Expanded(
                                child: newtile(
                                    name: 'Alex Cook',
                                    edu: 'phd',
                                    pos: 'Principle',
                                    imgurl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 5),
                          child: Row(
                            children: [
                              LayoutBuilder(builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return _myTimelineView();
                              }),
                              Expanded(
                                child: newtile(
                                    name: 'Sita White',
                                    edu: 'phd',
                                    pos: 'Deputy Headmaster',
                                    imgurl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 5),
                          child: Row(
                            children: [
                              _myTimelineView(),
                              Expanded(
                                child: newtile(
                                    name: 'Nisha Ojha',
                                    edu: 'Master',
                                    pos: 'Coordinator',
                                    imgurl:
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        // DepartmentName('Department of English'),
                         Padding(
                           padding: const EdgeInsets.only(left: 40),
                           child: Row(children: [
                              _myTimelineView(),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: DepartmentName('Department of English')),
                            ]),
                         ),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.only(left: 40),
                           child: Row(children: [
                              _myTimelineView(),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: DepartmentName('Department of Hindi')),
                            ]),
                         ),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.only(left: 40),
                           child: Row(children: [
                              _myTimelineView(),
                              SizedBox(width: 10,),
                              Expanded(
                                  child: DepartmentName('Department of Nepali')),
                            ]),
                         )
        
                        // Row(children: [
                        //   _myTimelineView(),
                        //   Expanded(
                        //       child: DepartmentName('Department of English')),
                        // ])
                      
                        // Expansiontile()
                        // ExpansionTile(title:Text( 'Department of Nepali'))
                        // Steps()
                        // newtile()
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 40, top: 5),
                        //   child: Row(
                        //     children: [
                        //      _myTimelineView(),
                        //      SizedBox(width: 10,),
                        //       Expansiontile()
                        //     ],
                        //   ),
                        // ),
                      ],
                    )),
              ),
             
            ],
          ),
        ),
      ),
    );
  }

  Widget DepartmentName( String name) {
    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.5)),
                        child: ExpansionTile(
                          title: Text(name),
                          children: [
                            // Row(
                              
                            //   children: [
                              
  
                                
                            //      newtile(
                            //     name: 'Shane Warne',
                            //     edu: 'Master',
                            //     pos: 'Hod',
                            //     imgurl:
                            //         'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw'),
                            //   ],
                            // ),
                            newtile(
                                name: 'Shane Warne',
                                edu: 'Master',
                                pos: 'Hod',
                                imgurl:
                                    'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw'),
                            newtile(
                                name: 'William Regal',
                                edu: 'Master',
                                pos: 'Hod',
                                imgurl:
                                    'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw'),
                            newtile(
                                name: 'Shawn Michael',
                                edu: 'Master',
                                pos: 'Hod',
                                imgurl:
                                    'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRUb3NZBhmNbvFydeq2YuiK92pmjjMAiejJyrXHxkKYUSp5rIj6w5SJ9w9mJbVObQBz489dVtRNG_xLBlw')
                          ],
                        ),
                      );
  }
}

Widget _myTimelineView() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 10,
              height: 10,
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.green),
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        )
      ],
    ),
  );
}

class newtile extends StatelessWidget {
  final String name, edu, pos, imgurl;

  newtile(
      {required this.name,
      required this.edu,
      required this.pos,
      required this.imgurl});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        backgroundImage: NetworkImage(imgurl),
        // backgroundImage: AssetImage(ministers[index].imgurl)
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: Row(
          children: [
            Text(
              name + ',',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              edu,
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(
          left: 8,
        ),
        child: Text(
          pos,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }
}
