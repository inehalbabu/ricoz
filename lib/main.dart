import 'package:ricoz/views/home/home.dart';

import 'constant/const.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: roboto
      ),
      home:  Home(),
    );
  }
}
