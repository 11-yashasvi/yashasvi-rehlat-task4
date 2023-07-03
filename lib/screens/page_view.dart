import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg.jpg'),
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
        
        
        Column(
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
        Container(
                  //margin: EdgeInsets.only(right:22.0),
                  child:Column(
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
                )
          
        
          ],
        ),
        
        
        ],
      ),
      

    );
  }
}

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/diving.jpg'),
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
        
        
        Column(
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
        Container(
                  //margin: EdgeInsets.only(right:22.0),
                  child:Column(
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
                )
          
        
          ],
        ),
        
        
        ],
      ),
      

    );
  }
}
class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/pungy.jpg'),
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
        
        
        Column(
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
        Container(
                  //margin: EdgeInsets.only(right:22.0),
                  child:Column(
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
                )
          
        
          ],
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
              return _pages[index % _pages.length];
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