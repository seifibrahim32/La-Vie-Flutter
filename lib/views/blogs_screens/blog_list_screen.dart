import 'package:flutter/material.dart';

class BlogListScreen extends StatelessWidget{

  const BlogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children:[
            Container(
              width: 428,
              height:299,
              color: Colors.blue,
            ),
            const SizedBox(height:37),
            SingleChildScrollView(
              child: Row(
                  children: const [
                      SizedBox(width:25),
                      Text('5 Simple Tips to treat plants',
                        overflow: TextOverflow.ellipsis,
                        style : TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize : 23
                        )
                    )
                  ]
              ),
            ),
            Container(
              margin : const EdgeInsets.only(
                  left:29,right:58,top:22,bottom:144
              ),
              child: const Text('leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                  ' green outgrowth from the stem of  ',
                  style : TextStyle(
                    color: Color(0xC77D7B7B),
                      fontWeight: FontWeight.w400,
                      fontSize : 16
                  )
              ),
            )
          ]
        ),
      )
    );
  }
}