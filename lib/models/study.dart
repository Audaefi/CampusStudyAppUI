class Group {
  String grouptitle;
  //String logoUrl;
  bool isMark;
  String intro;
  String location;
  String headcount_current;
  String headcount_max;
  List<String> req;
  Group(this.grouptitle, this.isMark, this.intro, this.location,
      this.headcount_current, this.headcount_max, this.req);
  static List<Group> generateGroups() {
    return [
      Group(
        '어셈블리 스터디',
        false,
        '[2021-2] OO교수님 어셈블리 스터디',
        '온라인',
        '6',
        '8',
        [
          '2021 2학기',
          '00교수님 수업',
          '어셈블리언어',
          '컴퓨터공학과 공개스터디',
        ],
      ),
      Group(
        '정처기 6월',
        true,
        '정처기 스터디원 구합니다!',
        '온라인/오프라인',
        '3',
        '9',
        [
        ],
      ),
      Group(
        '컴공개 스터디 방',
        false,
        '2021-2학기 컴공개 스터디입니다.',
        '온라인',
        '2',
        '7',
        [
        ],
      ),
      Group(
        '토이 프로젝트 참여자 모집',
        false,
        'Flutter 토이 프로젝트 하실 분 찾습니다.',
        '오프라인',
        '8',
        '10',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge and ability',
          'Interested in the way people choose and use products',
          'Interested in the way people choose and use products',
        ],
      ),
    ];
  }
}
