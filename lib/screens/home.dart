import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/MessagePage.dart';
import 'package:instagram/screens/PostView.dart';
import 'package:instagram/screens/SearchPage.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map> _people = [
    {
      'name': 'john',
      'picture':
          "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg"
    },
    {
      'name': 'judy',
      'picture':
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100__340.jpg"
    },
    {
      'name': 'lucy',
      'picture':
          "https://cdn.pixabay.com/photo/2016/11/16/10/27/girl-1828538__340.jpg"
    },
    {
      'name': 'maryjane',
      'picture':
          "https://cdn.pixabay.com/photo/2017/08/30/17/27/business-woman-2697954__340.jpg"
    },
    {
      'name': 'jackie',
      'picture':
          "https://cdn.pixabay.com/photo/2017/06/15/11/40/beautiful-2405131__340.jpg"
    },
    {
      'name': 'boyie',
      'picture':
          "https://cdn.pixabay.com/photo/2016/12/09/09/52/little-girl-1894125__340.jpg"
    },
    {
      'name': 'old man',
      'picture':
          "https://cdn.pixabay.com/photo/2017/06/26/02/47/people-2442565__340.jpg"
    },
    {
      'name': 'Alicia',
      'picture':
          "https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959__340.jpg"
    },
    {
      'name': 'Kim',
      'picture':
          "https://cdn.pixabay.com/photo/2017/07/22/20/40/kid-2529907__340.jpg"
    },
    {
      'name': 'Dannie',
      'picture':
          "https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825__340.jpg"
    },
    {
      'name': 'ham',
      'picture':
          "https://cdn.pixabay.com/photo/2016/11/29/20/22/child-1871104__340.jpg"
    },
    {
      'name': 'Shem',
      'picture':
          "https://cdn.pixabay.com/photo/2014/05/03/00/50/flower-child-336658__340.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _size = 250.0;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt,
          size: 30.0,
        ),
        centerTitle: true,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 30.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.send,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MessagePage()));
              })
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 120,
                color: Colors.white,
                // padding: EdgeInsets.all(25.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _people.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PostView())),
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 35.0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 32.0,
                                  backgroundImage:
                                      NetworkImage(_people[index]['picture']),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            _people[index]['name'],
                            style: TextStyle(color: Colors.black),
                          ),
                          Divider()
                        ],
                      );
                    }),
              ),
              Profile(),
              Container(
                constraints: BoxConstraints.expand(height: 1),
                color: Colors.grey,
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 282),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/download2.jpg'),
                        fit: BoxFit.cover)),
              ),
              CustomIcon(),
              Followers(),
              SizedBox(height: 5.0),
              Comments(),
              Profile(),
              Container(
                constraints: BoxConstraints.expand(height: 1),
                color: Colors.grey,
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 282),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Biggest alley oop.jpg'),
                        fit: BoxFit.cover)),
              ),
              CustomIcon(),
              Followers(),
              SizedBox(height: 5.0),
              Comments(),
              Profile(),
              Container(
                constraints: BoxConstraints.expand(height: 1),
                color: Colors.grey,
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 282),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/blogging-strategy.png'),
                        fit: BoxFit.cover)),
              ),
              CustomIcon(),
              Followers(),
              SizedBox(height: 5.0),
              Comments(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                iconSize: 30.0, 
                onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0, 
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => SearchPage()
                  ));
                }
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                iconSize: 30.0, 
                onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                iconSize: 30.0, 
                onPressed: (){}
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                iconSize: 30.0, 
                onPressed: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIcon extends StatefulWidget {
  const CustomIcon({
    Key key,
  }) : super(key: key);

  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
    bool isliked = false;
    bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(FontAwesomeIcons.heart, size: 30.0),
                color: isliked ? Colors.red : Colors.black,
                onPressed: () {
                  setState(() {
                    isliked = !isliked;
                  });
                }),
            IconButton(
                icon: Icon(FontAwesomeIcons.comment, size: 30.0),
                onPressed: () {}),
            IconButton(
                icon: Icon(FontAwesomeIcons.paperPlane, size: 30.0),
                onPressed: () {}),
          ],
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.bookmark, size: 30.0),
          color: isSaved ? Colors.grey : Colors.black,
          onPressed: () {
            setState(() {
              isSaved = !isSaved;
            });
          },
        )
      ],
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[SizedBox(width: 10.0), Text('View all 41 comments')],
    );
  }
}

class Followers extends StatelessWidget {
  const Followers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10.0,
        ),
        CircleAvatar(
          radius: 13.0,
          backgroundImage: AssetImage('images/Lee.jpg'),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Liked by _josh.viral and 1,190 others',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              actions: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      child: Text('Report...'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Turn On Post Notifications'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Copy Link'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Share to...'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Unfollow'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Mute'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            );
          }
        );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 19.0,
                backgroundImage: AssetImage('images/Lee.jpg'),
              ),
            ),
            Text('#coding')
          ],
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {
            _showDialog();
          },
          iconSize: 20.0,
        )
      ],
    );
  }
}
