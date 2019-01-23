import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        heroTag: 'message',
        child: Icon(Icons.message),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment(0.0, 0.9),
              colors: [
                Colors.purple[200],
                Colors.lightBlue[200],
                Colors.cyanAccent[200],
              ],
            ),
            image: DecorationImage(
              image: new ExactAssetImage('assets/images/textura.png'),
              fit: BoxFit.cover,
            )),
        child: Stack(
          children: <Widget>[
            ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Designer',
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trending Collections',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AvatarCard(),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trending Collections',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                ListHorizontal(),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trending Collections',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EpicCard(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 40.0),
          child: new Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'This month (1)',
                    style: theme.textTheme.subtitle,
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomCard(),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          top: 0,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/200/200/?random'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
                color: Colors.purple[50],
                blurRadius: 5.0,
                offset: Offset(0, 2)),
          ]),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 65,
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment(0.0, 0.9),
                colors: [
                  Colors.pink[300],
                  Colors.orange[300],
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'MAY',
                  style: theme.textTheme.caption.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '23',
                  style: theme.textTheme.subhead.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListTile(
              dense: true,
              title: Text(
                'Fri, 01:00 pm',
                style: theme.textTheme.caption,
              ),
              subtitle: Text(
                'Epic client story',
                style: theme.textTheme.subhead,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListHorizontal extends StatelessWidget {
  final List<Widget> cards = new List.generate(5, (i) => new CardProyects());
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200,
      padding: const EdgeInsets.all(8.0),
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }
}

class CardProyects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Container(
          width: 160.0,
          child: Column(
            children: <Widget>[],
          )),
    );
  }
}

class EpicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                  color: Colors.purple[50],
                  blurRadius: 5.0,
                  offset: Offset(0, 2)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                image: DecorationImage(
                  image: new ExactAssetImage('assets/images/screen.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Fri, 01:00 pm',
                style: theme.textTheme.caption,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Epic Clients story',
                style: theme.textTheme.headline,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua'),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink[300],
                      Colors.orange[300],
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  )),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 60.0,
                      child: Center(child: Text('compartir',style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60.0,
                      child: Center(child: Text('compartir',style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
