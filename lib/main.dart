import 'package:flutter/material.dart';

void main() {
  runApp(IdolGroup());
}

class IdolGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Idol Group";

    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'BTS',
          description:
              'The first K-pop group to perform at the American Music Awards and win a Billboard Music Award, and the first South Korean act to reach 10 million followers on Twitter, BTS, also known as Bangtan Boys and Beyond the Scene, has put the world under the K-pop spell! They are considered to be the most tweeted about celebrity in 2017: they were liked and retweeted more than half a billion times worldwide! The band is comprised of seven members: RM, J-Hope, Jimin, V, Jin, Suga, and Jungkook. BTS blend dance-oriented K-pop with hip-hop influences; they compose, produce, and write lyrics for performances themselves.',
          imglink: 'https://usercontent1.hubstatic.com/13897378_f496.jpg'),
      const Choice(
          title: 'EXO',
          description:
              'EXO was formed by S.M. Entertainment in 2011. The band made their debut in 2012 with twelve members – they were separated into two subgroups, EXO-M and EXO-K, performing music in different languages (Mandarin and Korean respectively). The K-pop boy band was considered the "most influential celebrity" by Forbes Korea Power Celebrity in both 2014 and 2015! Currently, EXO consists of nine members: Xiumin, Baekhyun, Suho, Lay, Chen, Chanyeol, Sehun, D.O., and Kai.',
          imglink: 'https://usercontent2.hubstatic.com/14732741_f496.jpg'),
      const Choice(
          title: 'Wanna One',
          description:
              'Wanna One has been formed by CJ E&M, and it’s the second group in this list that was formed through the 2017 series Produce 101 Season 2! Wanna One has been chosen as the Best New K-Pop Act of 2017 (Billboard). With their electro-pop tracks and highly-stylized choreography garnering a lot of attention, the boy band became a top act in Korea from its very formation on Produce 101 in 2017. Even though they are planned to disband by the end of 2018, after which its members plan to focus on their solo careers, there’s still time left for the group to impress their fans. Wanna One consists of eleven members: Ji Seong, Sung Woon, Min Hyun, Seong Woo, Ji Hoon, Woo Jin, Jae Hwan, Kang Daniel, Jin Young, Dae Hwi, and Kuan Lin.',
          imglink: 'https://usercontent1.hubstatic.com/14732742_f496.jpg'),
      const Choice(
          title: 'SEVENTEEN',
          description:
              'Despite the group’s name, Seventeen (also stylized as SVT) consists of only thirteen members: S.Coups, Jeonghan, Joshua, Jun, DK, Mingyu, The8, Seungkwan, Hoshi, Wonwoo, Woozi, Vernon, and Dino. However, sometimes, the boy band did consist of 16 members! So then what does the name Seventeen signify? It turns out that the number signifies the medium age of the members at the time of band formation! The group is divided into three teams, each with a different area of specialization: vocal, hip-hop, and performance. Moreover, they are involved in composition and production of their own choreography and discography, so they even have been given the nickname of a “self-producing” idol group. The group was formed by Pledis Entertainment in 2015.',
          imglink: 'https://usercontent2.hubstatic.com/14732743_f496.jpg'),
      const Choice(
          title: 'Stray Kids',
          description:
              'This K-pop group didn’t get its name just for no reason. Stray Kids is how the reality competition show is called! After going through the competition, the chosen boys formed the K-pop boy group of the same name. It debuted in 2018 with 9 members: Woojin, Changbin, Hyunjin, Han, Lee Know, Felix, Seungmin, I.N, and Bang Chan. With their super carefree and wild image, the band became a global hit with their first album being number one in iTunes Charts in multiple countries!',
          imglink: 'https://usercontent1.hubstatic.com/14732084_f496.jpg'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
