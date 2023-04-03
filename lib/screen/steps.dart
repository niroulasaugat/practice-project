import 'package:api/screen/mainscreen.dart';
import 'package:flutter/material.dart';

class Step {
  Step(
    this.title,
    this.body,
    [this.isExpanded = false]
  );
  String title;
  Widget body;
  bool isExpanded;
}

Future<List<Step>> getSteps() async {
  var _items = [
    Step('Department of English',  newtile(name: 'Pamela Evans', edu: 'phd', pos: 'Founder', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),),
    Step('Department of Nepali',  newtile(name: 'Pamela Evans', edu: 'phd', pos: 'Founder', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),),
    Step('Department of Hindi',  newtile(name: 'Pamela Evans', edu: 'phd', pos: 'Founder', imgurl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),),
  ];
  return Future<List<Step>>.delayed(const Duration(seconds: 2), () => _items);
}
class Steps extends StatelessWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder<List<Step>>(
          future: getSteps(),
          builder: (BuildContext context, AsyncSnapshot<List<Step>> snapshot) {
            if(snapshot.hasData) {
              return StepList(steps: snapshot.data ?? []);
            }
            else {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }
        ),
      ),
    );
  }
  Widget newtile(BuildContext context){
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundColor: Theme.of(context).primaryColor,
      // backgroundImage: AssetImage(ministers[index].imgurl)
    ),
    title: Padding(
      padding: const EdgeInsets.only(left: 8, top: 8),
      child: Text(
        "pamela Evans,",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black),
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(
        left: 8,
      ),
      child: Text(
        'Founder',
        style:
            TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
  );
}
}

class StepList extends StatefulWidget {
  final List<Step> steps;
  const StepList({Key? key, required this.steps}) : super(key: key);
  @override
  State<StepList> createState() => _StepListState(steps: steps);
}

class _StepListState extends State<StepList> {
  final List<Step> _steps;
  _StepListState({required List<Step> steps}) : _steps = steps;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _steps[index].isExpanded = !isExpanded;
          });
        },
        children: _steps.map<ExpansionPanel>((Step step) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(step.title),
              );
            },
            body: newtiles(context),
            isExpanded: step.isExpanded,
          );
        }).toList(),
      ),
      SizedBox(height: 5,),
      ],
      
    );
  }


}

Widget newtiles(BuildContext context){
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundColor: Theme.of(context).primaryColor,
      // backgroundImage: AssetImage(ministers[index].imgurl)
    ),
    title: Padding(
      padding: const EdgeInsets.only(left: 8, top: 8),
      child: Text(
        "pamela Evans,",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black),
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(
        left: 8,
      ),
      child: Text(
        'Founder',
        style:
            TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
  );
}