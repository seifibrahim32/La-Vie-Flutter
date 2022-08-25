import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class SearchNotFound extends StatefulWidget{

  const SearchNotFound({super.key});

  @override
  State<SearchNotFound> createState() => _SearchNotFoundState();
}

class _SearchNotFoundState extends State<SearchNotFound> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0),
        child: Column(
          children:[
            const SizedBox(height:68),
            TextField(
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
                suffixIcon: Image.asset
                  ('assets/filter_search_icon.png',
                    color:const Color.fromARGB(255, 26, 188, 0)
                ),
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
            const SizedBox(height:24),
            Row(
              children : [
                const Text('Results for “',
                    style : TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize : 20
                    )),
                Text(_searchController.text.substring(0,13),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style : const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color:Colors.greenAccent,
                        fontWeight: FontWeight.w700,
                        fontSize : 20
                    )),
                const Text('”',
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style : TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize : 20
                    )),
                const Spacer(),
                const Text('0 found',
                    style : TextStyle(
                        color:Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize : 16
                    ))
              ]
            ),
            Expanded(
              child: SingleChildScrollView(
                physics : const BouncingScrollPhysics(),
                primary: true,
                child: Column(
                  children :[
                    const SizedBox(height:124),
                    Image.asset('assets/draft_file_empty.png'),
                    const SizedBox(height:40),
                    const Text('Not found',
                        style : TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    const SizedBox(height:12),
                    const Text('Sorry, the keyword you entered cannot be\nfound,'
                        ' please check again or search with\nanother keyword.',
                        textAlign: TextAlign.center,
                        style : TextStyle(
                            color: Color(0x9C212121),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ]
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}