import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
   const VideoScreen({super.key, required this.filepath, required this.maintxt, required this.contenttxt, required this.btntxt, required this.likecount});

  final String filepath; 
  final String maintxt;
  final String contenttxt;
  final String btntxt; 
  final String likecount;
  

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  void initState()  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
          decoration:  BoxDecoration(
            image: DecorationImage(image: AssetImage(widget.filepath),
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
                    decoration: BoxDecoration(
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
                child: Center(
                  child:  Text(
                         widget.btntxt,
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
         Padding(
          padding: EdgeInsets.only(left:16),
          child: Text(
          maxLines:3,
          widget.maintxt,
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
         Padding(
          padding: EdgeInsets.only(left:18),
          child: Text(
          maxLines:3,
          widget.contenttxt,
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
                        Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              widget.likecount,
                            
                            textAlign: TextAlign.end,
                             style: const TextStyle(
                            
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