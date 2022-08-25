import 'package:flutter/material.dart';

Widget getPersonalInformationWebView() =>
    Expanded(
      child: Column(children: [
        Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF3FEF1)),
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 15, bottom: 18),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset('assets/points_stars.png'),
                const SizedBox(width: 13),
                const Text('You have 30 points',
                    style:
                        TextStyle(fontSize: 15.88, fontWeight: FontWeight.w500))
              ]),
            )),
        const SizedBox(height: 20),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('First Name',
                          style: TextStyle(
                              color: Color(0xff6f6f6f), fontSize: 14)),
                      const SizedBox(width: 10),
                      TextField(
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'First Name',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 0.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Last Name',
                          style: TextStyle(
                              color: Color(0xff6f6f6f), fontSize: 14)),
                      TextField(
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Last Name',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 0.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ]),
              )
            ]),
        const SizedBox(height: 42),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('E-mail',
                          style: TextStyle(
                              color: Color(0xff6f6f6f), fontSize: 14)),
                      const SizedBox(height: 3.8),
                      TextField(
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Type your email',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 0.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Address',
                          style: TextStyle(
                              color: Color(0xff6f6f6f), fontSize: 14)),
                      const SizedBox(height: 3.8),
                      TextField(
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xFFbdc6cf)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Type your address',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 12.0, top: 0.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF939393)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ]),
              )
            ]),
        const SizedBox(height: 69),
        MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 0,
            minWidth: 112,
            height: 51,
            color: Colors.greenAccent,
            onPressed: () {},
            child: const Text('Save',
                style: TextStyle(color: Colors.white, fontSize: 16))),
      ]),
    );

Widget getProfilePictureWebView() =>
    Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF3FEF1)),
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 15, bottom: 18),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset('assets/points_stars.png'),
              const SizedBox(width: 13),
              const Text('You have 30 points',
                  style:
                      TextStyle(fontSize: 15.88, fontWeight: FontWeight.w500))
            ]),
          )),
          const SizedBox(height: 19),
          Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.greenAccent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: GestureDetector(
              onTap: () {},
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(height: 9),
                    Text('Add Photo',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w400))
                  ]))),
          const SizedBox(height: 19),
          Stack(
        children: [
          TextField(
            enabled: false,
            textAlign: TextAlign.start,
            maxLines: 1,
            style: const TextStyle(fontSize: 17),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'No Image Selected',
              hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0x70000000), width: 1.0),
              ),
              contentPadding: const EdgeInsets.only(left: 12.0, right: 81),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              minWidth: 21,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.greenAccent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 0,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 14, left: 100, right: 101),
                child: Text('Upload',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
        ],
      ),
          const SizedBox(height: 19),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 0,
              minWidth: 112,
              height: 51,
              color: Colors.greenAccent,
              onPressed: () {},
              child: const Text('Save',
                  style: TextStyle(color: Colors.white, fontSize: 16))),
        ],
      ),
        ]
    );
