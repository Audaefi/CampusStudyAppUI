class Joined_group {
  String grouptitle;
  bool isfavor;
  String title;
  String location;
  String headcount_current;
  String headcount_max;
  List<String> req;
  Joined_group(this.grouptitle, this.isfavor, this.title, this.location,
      this.headcount_current, this.headcount_max, this.req);
  static List<Joined_group> generateJoined() {
    return [
      Joined_group(
        '2022-1 자료구조 스터디 ',
        true,
        '자료구조 스터디',
        '온라인',
        '3',
        '5',
        [

        ],
      ),
      Joined_group(
        '개발직군 스터디#1',
        false,
        '2021년 개발직 희망 스터디',
        '온라인',
        '4',
        '5',
        [

        ],
      ),
      Joined_group(
        '기초디자인 스터디',
        false,
        '기초디자인 수업 스터디',
        '오프라인',
        '5',
        '10',
        [

        ],
      ),
      Joined_group(
        '정보처리기사 스터디',
        false,
        '21년 정처기 스터디',
        '온라인/오프라인',
        '5',
        '9',
        [

        ],
      ),
    ];
  }
}
