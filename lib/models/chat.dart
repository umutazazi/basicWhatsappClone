class Chat {
  String name;
  String message;
  String time;
  String avatarUrl;

  Chat(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<Chat> fakeData = [
  Chat(name: "Kişi", message: "Bu bir mesaj örneğidir!", time: "12.00", avatarUrl: ""),
  Chat(name: "Kişi1", message: "Bu bir mesaj örneğidir", time: "14.40", avatarUrl: ""),
  Chat(name: "Kişi2", message: "Bu bir mesaj örneğidir!", time: "15.00", avatarUrl: ""),
  Chat(name: "Kişi3", message: "Bu bir mesaj örneğidir ", time: "00.00", avatarUrl: ""),
  Chat(name: "Kişi4", message: "Bu bir mesaj örneğidir", time: "02.00", avatarUrl: ""),
  Chat(name: "Kişi5", message: "Bu bir mesaj örneğidir", time: "23.40", avatarUrl: ""),
  
];
