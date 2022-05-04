
class Profile {
  String? imgUrl;
  String? name;
  String? searchid;
  String? desc;
  String? email;

  Profile({
    this.imgUrl,
    this.name,
    this.searchid,
    this.desc,
    this.email,

  });
  static Profile generateProfile() {
    return Profile(
      imgUrl: 'assets/images/avatar.png',
      name: 'ADMIN369',
      searchid: '@audaefi',
      desc:
          '공사 중입니다',
      email: 'audaefi369@gmail.com',
    );
  }
}
