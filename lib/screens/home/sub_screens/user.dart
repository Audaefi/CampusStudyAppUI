import 'package:flutter/material.dart';
import 'package:huro/provider/dark_theme_provider.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late ScrollController _scrollController;
  var top = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                // leading: Icon(Icons.ac_unit_outlined),
                automaticallyImplyLeading: false,
                elevation: 4,
                expandedHeight: 200,
                pinned: false,
                //위에 걸린 핀 바(프로필) 거슬리면, 삭제 or 끄기
                flexibleSpace: LayoutBuilder(builder: (BuildContext context,
                    BoxConstraints constraints) {
                  top = constraints.biggest.height;
                  return Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.purple, Colors.deepPurple],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp)),

                      child: FlexibleSpaceBar(
                        // collapseMode: CollapseMode.parallax,
                          centerTitle: true,
                          title: AnimatedOpacity(
                              duration: Duration(milliseconds: 300),
                              opacity: top <= 120.0 ? 1.0 : 0, // 120이 가장 적당
                              child: Row(
                                  children: [
                                    SizedBox(width: 12),

                                    Container(
                                        height: kToolbarHeight / 1.8,
                                        width: kToolbarHeight / 1.8,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(color: Colors.white,
                                                  blurRadius: 1.0)
                                            ],
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                    'https://t3.ftcdn.net/jpg/01/83/55/76/240_F_183557656_DRcvOesmfDl5BIyhPKrcWANFKy2964i9.jpg')))),

                                    SizedBox(width: 12),
                                    Text('Guest', style: TextStyle(
                                        fontSize: 20.0, color: Colors.white))
                                  ])),
                          background: Image(image: NetworkImage(
                              'https://t3.ftcdn.net/jpg/01/83/55/76/240_F_183557656_DRcvOesmfDl5BIyhPKrcWANFKy2964i9.jpg'),
                              fit: BoxFit.cover))); //cover or fill
                }),
              ),

              SliverToBoxAdapter(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Divider(height: 20, thickness: 1, color: Colors.blueGrey, indent: 20, endIndent: 20,),
                    Padding(padding: const EdgeInsets.only(left: 12.0),
                        child: userTitle('프로필')),
                    //Divider(thickness: 1, color: Colors.blueGrey,),
                    userListTile('닉네임', '', 8, context),
                    userListTile('소속', '', 8, context),
                    userListTile('관심지역', '', 8, context),
                    userListTile('관심분야', '', 8, context),
                    userListTile('소개', '', 8, context),
                    //userListTile('title','sub',0,context),
                    Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.blueGrey,
                      indent: 20,
                      endIndent: 20,),

                    Padding(padding: const EdgeInsets.only(left: 12.0),
                        child: userTitle('설정')),
                    userListTile('알림설정', '', 1, context),
                    ListTileSwitch(
                      value: themeChange.darkTheme,
                      leading: Icon(LineAwesomeIcons.moon),
                      onChanged: (value) {
                        setState(() {
                          themeChange.darkTheme = value;
                        });
                      },
                      visualDensity: VisualDensity.comfortable,
                      switchType: SwitchType.cupertino,
                      switchActiveColor: Colors.indigo,
                      title: Text('다크 모드'),
                    ),
                    Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.blueGrey,
                      indent: 20,
                      endIndent: 20,),

                    Padding(padding: const EdgeInsets.only(left: 12.0),
                        child: userTitle('서비스')),
                    userListTile('앱 정보', '', 0, context),
                    userListTile('공지사항', '', 2, context),
                    userListTile('문의하기', '', 3, context),
                    userListTile('이용약관', '', 4, context),
                    userListTile('개인정보 처리방침', '', 5, context),
                    userListTile('회원 탈퇴', '', 6, context),
                    Divider(
                      height: 20,
                      thickness: 1,
                      color: Colors.blueGrey,
                      indent: 20,
                      endIndent: 20,),

                    Padding(padding: const EdgeInsets.only(left: 12.0),
                        child: userTitle('기타')),
                    userListTile('로그아웃', '', 7, context),
                  ],
                ),
              ),
            ],
          ),
          _buildFab()
        ],
      ),
    );
  }

  Widget _buildFab() {
    //starting fab position
    final double defaultTopMargin = 200.0 - 4.0;
    //pixels from top where scaling should start
    final double scaleStart = 160.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        //offset between scaleStart and scaleEnd => scale down
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
      top: top,
      right: 16.0,
      child: Transform(
        transform: Matrix4.identity()
          ..scale(scale),
        alignment: Alignment.center,
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          heroTag: "btn1",
          onPressed: () {},
          child: Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }

  List<IconData> _userTileIcons = [
    LineAwesomeIcons.mobile_phone, // 버전정보
    LineAwesomeIcons.bell, // 알림설정
    LineAwesomeIcons.bullhorn, // 공지사항
    LineAwesomeIcons.comment, // 문의하기
    LineAwesomeIcons.book_open, //개인정보 처리방침
    LineAwesomeIcons.address_card, // 개인정보 처리방침
    LineAwesomeIcons.alternate_sign_out, //회원탈퇴
    LineAwesomeIcons.door_open, // 로그아웃
    LineAwesomeIcons.tag, // 프로필
  ];

  Widget userListTile(String title, String subTitle, int index,
      BuildContext context) {
    return Material(color: Colors.transparent,
      child: InkWell(
          splashColor: Theme
              .of(context)
              .splashColor,
          child: ListTile(
              onTap: () {},
              title: Text(title),
              subtitle: Text(subTitle),
              leading: Icon(_userTileIcons[index]))
      ),
    );
  }

  Widget userTitle(String title) {
    return Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text(
            title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
    );
  }
}