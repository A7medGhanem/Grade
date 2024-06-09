import 'package:cars/models/BackBttn.dart';
import 'package:cars/models/custom_icons24.dart';
import 'package:flutter/material.dart';
import '../models/movie_models_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<App> app = allitems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0XFFf8f9fd),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Back(color: Colors.black, ontap: () {}),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(CustomIcons24.search24_),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        hintText: "ابحث عن تفاصيل سيارتك",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        hintTextDirection: TextDirection.rtl,
                      ),
                      textDirection: TextDirection.rtl,
                      onChanged: searchApp,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الاكثر رواجاً',
                          style: TextStyle(fontFamily: 'ibmB'),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                itemCount: app.length,
                itemBuilder: (context, index) {
                  final apps = app[index];
                  return Container(
                    height: 50,
                    color: Colors.white,
                    child: ListTile(
                      selected: true,
                      selectedColor: Colors.orange,
                      leading: Container(
                        height: 50,
                        width: 40,
                        child: Image(
                          image: AssetImage(apps.images),
                          fit: BoxFit.contain,
                          width: 35,
                          height: 60,
                        ),
                      ),
                      title: Text(apps.Items,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => apps.Screens,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void searchApp(String query) {
    final suggestions = allitems.where((apps) {
      final apptitle = apps.Items.toLowerCase();
      final input = query.toLowerCase();
      return apptitle.contains(input);
    }).toList();
    setState(() => app = suggestions);
  }
}
