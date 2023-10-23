import 'package:facebook/models/models.dart';

const User currentUser = User(
  name: 'Bryan De Jesus',
  imageUrl:
      'https://media.licdn.com/dms/image/D4D03AQEhksMyuissKA/profile-displayphoto-shrink_800_800/0/1695239262394?e=2147483647&v=beta&t=yGdM1Dn6b2SD_zK74UwLYyYI6N7WHtPoL81mavumIk4',
);

const List<User> onlineUsers = [
  User(
    name: 'Mark Zuckerberg',
    imageUrl:
        'https://img.buzzfeed.com/buzzfeed-static/complex/images/lzvxhuq9vha7k1lyvvmp/the-social-network-01.jpg?output-format=jpg&output-quality=auto',
  ),
  User(
    name: 'Eduardo Saverin',
    imageUrl:
        'https://s.yimg.com/ny/api/res/1.2/bt1lG.hekTHYl8xYZih_XA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://media.zenfs.com/es/lanacion.com.ar/9fd1602c9de38eb0812de568b3c28338',
  ),
  User(
    name: 'Sean Parker',
    imageUrl:
        'https://cinepremiere.com.mx/assets/images/noticias/2014/11-noviembre/Mark-Zuckerberg-Jesse-Eisenberg.jpg',
  ),
  User(
    name: 'Cameron Winklevoss ',
    imageUrl:
        'https://i.insider.com/5f7b23672400440019129e99?width=1000&format=jpeg&auto=webp',
  ),
  User(
    name: 'Tyler Winklevoss ',
    imageUrl: 'https://spacetext.github.io/SpaceText/img/david.jpg',
  ),
  User(
    name: 'Divya Narendra',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Christy Lee',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Marylin Delpy',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'Larry Summers ',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: 'Dustin Moskovitz',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Chris Hughes',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[1],
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Jesse_Eisenberg_by_Gage_Skidmore.jpg/1200px-Jesse_Eisenberg_by_Gage_Skidmore.jpg',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://i.pinimg.com/474x/29/34/26/29342677f28082654a2761b24bf8b123.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://www.the-sun.com/wp-content/uploads/sites/6/2022/09/LG-THE-SOCIAL-NETWORK-CAST-OFFPLAT-1.jpg?strip=all&quality=100&w=1920&h=1080&crop=1',
  ),
  Story(
    user: onlineUsers[4],
    imageUrl:
        'https://scriptmag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY3Mzc4NTQ1ODQ3ODM4NTA5/the-social-network.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[5],
    imageUrl:
        'https://i.insider.com/5f7b2375282c500018c7887d?width=1000&format=jpeg&auto=webp',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl: 'https://www.otroscines.com/images/fotos/RedSocial500.jpg',
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
        'https://cdn.arstechnica.net/wp-content/uploads/2016/06/thesocialnetwork.png',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[8],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[10],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
];

final List<Post> posts = [
  const Post(
    user: currentUser,
    caption:
        'Estoy reviviendo la historia de la revolución digital con "The Social Network" en mi nuevo clon de redes sociales! 🎥💻 ¿Quién más la ha visto?',
    timeAgo: '58m',
    imageUrl: 'https://cdn.solo.to/user/a/610d9d0a278650_59692466.jpg',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[2],
    caption:
        'Después de ver "The Social Network", estoy explorando este nuevo sitio que se inspira en la historia de Facebook. ¡Vaya viaje en el tiempo! 🔙✨',
    timeAgo: '3hr',
    imageUrl: 'https://i.insider.com/609c30196a3ce80019e0413f?width=700',
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption:
        'La creación de Facebook es simplemente fascinante! "The Social Network" sigue siendo una película que me inspira. 🤓🎞️',
    timeAgo: '8hr',
    imageUrl:
        'https://i.insider.com/5f7b23672400440019129e99?width=1000&format=jpeg&auto=webp',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
        'https://www.indiewire.com/wp-content/uploads/2020/10/social-network.png',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'Debatamos sobre la actuación de Jesse Eisenberg como Mark Zuckerberg en "The Social Network". ¿Acaso no fue asombrosa? 🎭👏',
    timeAgo: '1d',
    imageUrl:
        'https://i.guim.co.uk/img/static/sys-images/Guardian/About/General/2010/9/9/1284049061963/The-Social-Network-stars--006.jpg?width=465&dpr=1&s=none',
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[7],
    caption:
        '¡EL monmento donde yo y mark estabamos en jucio por el futuro de la empresa ! 🐾❤️ #facebook.',
    timeAgo: '1d',
    imageUrl:
        'https://frikimaestro.com/wp-content/uploads/2023/05/La-red-social-1.jpg',
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];
