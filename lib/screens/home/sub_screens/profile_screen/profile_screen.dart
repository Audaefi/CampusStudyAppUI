import 'package:flutter/material.dart';
import 'package:huro/models/profile.dart';
import 'widgets/person_info.dart';
import 'widgets/profile_list.dart';
import 'widgets/tab_sliver_delegate.dart';


class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ['프로필', '스터디 매칭'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              ProfileList(),
              //ProfileList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(
        Icons.arrow_back_ios_outlined,
      ),
      actions: [
        _buildIcon(
          Icons.more_vert_outlined,
        ),
      ],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
