import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);
final ImageProvider _imageProvider = const AssetImage('assets/images/bg.jpg');

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  late final ImageProvider _imageProvider;
  @override
  void initState() {
    super.initState();
    
    _imageProvider = const AssetImage('assets/images/bg.jpg');
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_imageProvider, context);
  }
  //double _sheetTopPosition = 500.0; // Initial position of the bottom sheet
 // bool _sheetExpanded = false; // Whether the bottom sheet is expanded or collapsed  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
        Container(
          decoration:   BoxDecoration(
            image: DecorationImage(
            image: _imageProvider,
            fit:BoxFit.fill ,
            ),
          ),
        ),
       Positioned(
        left: 15,
        top: 32.8,
        
         child: Stack(children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 5,
                    right: 0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ]),
       ),
        
        
        Hero(
          tag: 'page_one',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:16, top:193),
                child: Container(
                  width:90,
                  height:25,
                  decoration: const BoxDecoration(
                    color:Colors.redAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(
                    child:  Text(
                           "'MIDDLE EAST'",
                           textAlign: TextAlign.center,
                           maxLines: 1,
                           softWrap: false,
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            
                           ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
          height:8
          ),
           const Padding(
            padding: EdgeInsets.only(left:16),
            child: Text(
            maxLines:3,
            'Top 5 Water Sports That Even Non-Swimmers Can Enjoy In Dubai',
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 24,
            color: Colors.white
            ),
            
            ),
          ),
          const SizedBox(
          height:15
          ),
           const Padding(
            padding: EdgeInsets.only(left:18),
            child: Text(
            maxLines:3,
            'Many holiday goers love Dubai for its pristine white beaches and the unlimited water sports.',
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 16,
            color: Colors.white
            ),
            
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:22.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/heart.png', scale: 1.5)),
                ),
                const SizedBox(
                  height:6,
                ),
                const Padding(
                  padding: EdgeInsets.only(right:20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '1.3k',
                    
                    textAlign: TextAlign.end,
                     style: TextStyle(
                    
                        fontSize: 12, color: Colors.white,fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.normal)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(left:330,right:20.0),
                 child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/bookmark.png', scale: 1.5)),
               ),
               const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(right:20,bottom:49),
                 child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/upload.png', scale: 1.5)),
               )  
              ]
          ),
          Container(
                      width: double.infinity,
                      
                      child: Positioned(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.grey,
                                
                              ),
                              onTap: ()
                                {
                                  showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  enableDrag: true,
                                  context: context, 
                                  builder: (BuildContext context){
                                      return Scaffold(
                                        body: 
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Stack(children:<Widget> [
                                                Container(
                                                   height:100,
                                                   width:400,
                                                decoration:const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage("assets/images/forest.jpg"),
                                                    fit:BoxFit.cover,
                                                    )
                                                ),
                                                //color: Colors.deepOrange,
                                                ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:16.0, top:50),
                                                    child: Container(
                                                      width: 36,
                                                      height: 36,
                                                      decoration: const BoxDecoration(
                                                              shape: BoxShape.circle,
                                                              color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(left:30,top:60),
                                                    child: Icon(
                                                            Icons.arrow_back_ios,
                                                            color: Colors.white,
                                                            size: 15,
                                                    ),
                                                  )
                                                         
                                                                          ]),
                  const SizedBox(
                    height:23.9,
                  ),
                  

                  Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: Container(
                      
                    width:90,
                    height:25,
                    decoration: const BoxDecoration(
                      color:Colors.redAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: const Center(
                      child:  Text(
                             "MIDDLE EAST",
                             textAlign: TextAlign.center,
                             maxLines: 1,
                             softWrap: false,
                             style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              
                             ),
                      ),
                    ),
                                  ),
                  ), 
                  const SizedBox(
                    height:12
                  ),
                  const Padding(
            padding: EdgeInsets.only(left:16),
            child: Text(
            maxLines:3,
            'Top 5 Water Sports That Even Non-Swimmers Can Enjoy In Dubai',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Poppins-Medium',
              fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Colors.black
            ),
            
            ),
          ),    
                                            ],
                                          ),
                                      
                                      );
                            
                            
                                    },
                                  );
                                },
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              'Read more',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),  
          
            ],
          ),
        ),
        // AnimatedPositioned(
        //     duration: Duration(milliseconds: 300),
        //     curve: Curves.easeInOut,
        //     left: 0,
        //     right: 0,
        //     top: _sheetTopPosition,
        //     height: MediaQuery.of(context).size.height - _sheetTopPosition,
        //     child: GestureDetector(
        //       onTap: () {
        //         setState(() {
        //           // Toggle between expanded and collapsed states
        //           _sheetExpanded = !_sheetExpanded;
        //           _sheetTopPosition = _sheetExpanded ? 0.0 : 1.0;
        //         });
        //       },
        //       child: Container(
        //         decoration: BoxDecoration(
        //           //color: Colors.white,
                  
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(16.0),
        //             topRight: Radius.circular(16.0),
        //           ),
        //           boxShadow: [
        //             BoxShadow(
        //               color: Colors.black.withOpacity(0.1),
        //               blurRadius: 6.0,
        //               // offset: Offset(0, -3),
        //               offset:Offset.zero,
        //               blurStyle: BlurStyle.normal,
        //             ),
        //           ],
        //         ),
        //         child: Column(
        //           children: [
        //             // Drag handle with arrow and text
        //             Container(
        //               width: double.infinity,
        //               padding: const EdgeInsets.all(16.0),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Icon(
        //                     Icons.keyboard_arrow_up,
        //                     color: Colors.grey,
        //                   ),
        //                   SizedBox(width: 8.0),
        //                   Text(
        //                     'Read more',
        //                     style: TextStyle(
        //                       fontSize: 18.0,
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             // Content of the bottom sheet
        //             Expanded(
        //               child: SingleChildScrollView(
        //                 child: 
        //                 AppBar(actions: <Widget>[
        //                   Stack(children: [
        //           Container(
        //             width: 36,
        //             height: 36,
        //             decoration: const BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: Colors.black,
        //             ),
        //           ),
        //           const Positioned(
        //             top: 0,
        //             bottom: 0,
        //             left: 5,
        //             right: 0,
        //             child: Icon(
        //               Icons.arrow_back_ios,
        //               color: Colors.white,
        //               size: 15,
        //             ),
        //           )

        //                   ],),
        //                   ]),
                        
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        
        ],
      ),
      

    );
  }
}

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);
  final ImageProvider _imageProvider = const AssetImage('assets/images/diving.jpg');

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  late final ImageProvider _imageProvider;
  @override
  void initState() {
    super.initState();
    _imageProvider = const AssetImage('assets/images/diving.jpg');
    
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_imageProvider, context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
        Container(
          decoration:   BoxDecoration(
            image: DecorationImage(image: _imageProvider,
            fit:BoxFit.fill ,
            ),
          ),
        ),
       Positioned(
        left: 15,
        top: 32.8,
        
         child: Stack(children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 5,
                    right: 0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ]),
       ),
        
        
        Hero(
          tag:'page_two_hero',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:16, top:193),
                child: Container(
                  width:90,
                  height:25,
                  decoration: const BoxDecoration(
                    color:Colors.redAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(
                    child:  Text(
                           "1",
                           textAlign: TextAlign.center,
                           maxLines: 1,
                           softWrap: false,
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            
                           ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
          height:8
          ),
           const Padding(
            padding: EdgeInsets.only(left:16),
            child: Text(
            maxLines:3,
            "Under Water Walking – Walk under the water; come closer to nature in Dubai",          
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 24,
            color: Colors.white
            ),
            
            ),
          ),
          const SizedBox(
          height:15
          ),
           const Padding(
            padding: EdgeInsets.only(left:18),
            child: Text(
            maxLines:3,
            "Many holiday goers love Dubai for its pristine white beaches and the unlimited water sports.",
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 16,
            color: Colors.white
            ),
            
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:22.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/heart.png', scale: 1.5)),
                ),
                const SizedBox(
                  height:6,
                ),
                const Padding(
                  padding: EdgeInsets.only(right:20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '1.3k',
                    
                    textAlign: TextAlign.end,
                     style: TextStyle(
                    
                        fontSize: 12, color: Colors.white,fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.normal)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(left:330,right:20.0),
                 child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/bookmark.png', scale: 1.5)),
               ),
               const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(right:20,bottom:49),
                 child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/upload.png', scale: 1.5)),
               )  
              ]
          )
            
          
            ],
          ),
        ),
        
        
        ],
      ),
      

    );
  }
}
class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);
    final ImageProvider _imageProvider = const AssetImage('assets/images/pungy.jpg');

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  late final ImageProvider _imageProvider;
  @override
  void initState() {
    super.initState();
    _imageProvider = const AssetImage('assets/images/pungy.jpg');
    
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_imageProvider, context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
        Container(
          decoration:   BoxDecoration(
            image: DecorationImage(image: _imageProvider,
            fit:BoxFit.fill ,
            ),
          ),
        ),
       Positioned(
        left: 15,
        top: 32.8,
        
         child: Stack(children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    left: 5,
                    right: 0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  )
                ]),
       ),
        
        
        Hero(
          tag:'page_three_hero',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:16, top:193),
                child: Container(
                  width:90,
                  height:25,
                  decoration: const BoxDecoration(
                    color:Colors.redAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Center(
                    child:  Text(
                           "2",
                           textAlign: TextAlign.center,
                           maxLines: 1,
                           softWrap: false,
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            
                           ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
          height:8
          ),
           const Padding(
            padding: EdgeInsets.only(left:16),
            child: Text(
            maxLines:3,
            "Banana Boat Rides – Fun & frolicon the banana boat!",
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 24,
            color: Colors.white
            ),
            
            ),
          ),
          const SizedBox(
          height:15
          ),
           const Padding(
            padding: EdgeInsets.only(left:18),
            child: Text(
            maxLines:3,
            "Many holiday goers love Dubai for its pristine white beaches and the unlimited water sports.",
            textAlign: TextAlign.start,
            style: TextStyle(
            fontSize: 16,
            color: Colors.white
            ),
            
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:22.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/heart.png', scale: 1.5)),
                ),
                const SizedBox(
                  height:6,
                ),
                const Padding(
                  padding: EdgeInsets.only(right:20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '1.3k',
                    
                    textAlign: TextAlign.end,
                     style: TextStyle(
                    
                        fontSize: 12, color: Colors.white,fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.normal)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(left:330,right:20.0),
                 child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/bookmark.png', scale: 1.5)),
               ),
               const SizedBox(
                  height: 25,
                ),
               Padding(
                 padding: const EdgeInsets.only(right:20,bottom:49),
                 child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/upload.png', scale: 1.5)),
               )  
              ]
          )
            
          
            ],
          ),
        ),
        
        
        ],
      ),
      

    );
  }
}


class _PageViewDemoState extends State<PageViewDemo> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index];
            },
          ),

          Positioned(
            //bottom: 0,
            left: 0,
            right: 0,
            top:25,
            height: 50,
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: _activePage == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    )),
              ),
            
          ),
        ],
      ),
    );
  }
}