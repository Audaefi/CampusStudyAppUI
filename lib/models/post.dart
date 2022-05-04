class NeighborhoodLife {
  final String category;
  final String profileImgUri;
  final String userName;
  final String content;
  final String contentImgUri;
  final int likeCount;
  final int commentCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.content,
    required this.contentImgUri,
    required this.likeCount,
    required this.commentCount,
    required this.date,
  });
}

// 샘플 데이터 1
String lifeTitle = '이웃과 함께 만드는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.';

// 샘플 데이터 2
List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '취업',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: 'USER7',
    content: 'TEST',
    contentImgUri: '',//'https://placeimg.com/200/100/tech/grayscale',
    likeCount: 3,
    commentCount: 11,
    date: '3시간',
  ),
  NeighborhoodLife(
    category: '수업',
    profileImgUri: 'https://placeimg.com/200/100/people',
    userName: 'USER101',
    content: 'TEST',
    contentImgUri: '',//'https://placeimg.com/200/100/animal/grayscale',
    likeCount: 2,
    commentCount: 2,
    date: '1일',
  ),
  NeighborhoodLife(
    category: '기타',
    profileImgUri: 'https://placeimg.com/200/100/nature/grayscale',
    userName: 'USER36',
    content: 'TEST',
    contentImgUri: '',
    likeCount: 9,
    commentCount: 11,
    date: '1일',
  ),
  NeighborhoodLife(
    category: '자유',
    profileImgUri: 'https://placeimg.com/200/100/any',
    userName: 'USER63',
    content: 'TEST',
    contentImgUri: '',
    likeCount: 0,
    commentCount: 0,
    date: '3일',
  ),
  NeighborhoodLife(
    category: '국가시험',
    profileImgUri: 'https://placeimg.com/200/100/people/grayscale',
    userName: 'USER148',
    content: 'TEST',
    contentImgUri: '',//'https://placeimg.com/200/100/tech',
    likeCount: 1,
    commentCount: 11,
    date: '5일',
  ),
];
