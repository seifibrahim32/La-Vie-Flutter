import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height:60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: TextField(
              onSubmitted: (searchedString){
                setState((){
                  _searchController.text = searchedString;
                });
              },
              controller: _searchController,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(fontSize: 17),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                filled: true,
                prefixIcon:
                const Padding(
                  padding: EdgeInsets.only(left:22.23,right:17.54),
                  child: Icon(Icons.search,color:Color.fromARGB(255, 151, 151, 151,)),
                ),
                border: const OutlineInputBorder(
                    gapPadding: 17,
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                hintText: 'Search',
                contentPadding: const EdgeInsets.all(0.0),
              ),
            ),
          ),
          const SizedBox(height:22),
          const Padding(
              padding: EdgeInsets.only(left:45),
              child  : Text('Recent Searches',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ))
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43.0),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children : const [
                        Icon(
                            Icons.access_time_outlined
                        ),
                        SizedBox(
                            width:12
                        ),
                        Text('gardenia plant',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                        )),
                        Spacer(),
                        Icon(
                            Icons.close,
                            color: Colors.grey
                        )
                      ]
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 37);
                  },
                  itemCount: 13,

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}