class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String> meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/card7.png',
      titleTxt: 'Vaccine Registration',
      kacl: 602,
      meals: <String>['Find all Vaccination,', 'Registration Platforms,', 'at single place'],
      startColor: '#F58420',
      endColor: '#FCBF95',
    ),
    MealsListData(
      imagePath: 'assets/card6.png',
      titleTxt: 'Helpline Numbers',
      kacl: 525,
      meals: <String>['Cheese,', 'Curd,', 'Ghee'],
      startColor: '#0E1D2C',
      endColor: '#A5B2BE',
    ),
      MealsListData(
      imagePath: 'assets/card8.png',
      titleTxt: 'Whatsapp Bots',
      kacl: 525,
      meals: <String>['Find maximum bots,', 'which can help you,', 'find info'],
      startColor: '#20AD43',
      endColor: '#A5B2BE',
    ),
      MealsListData(
      imagePath: 'assets/card9.png',
      titleTxt: 'ICMR Labs',
      kacl: 525,
      meals: <String>['Find all ICMR,', 'labs nearby,', 'Ghee'],
      startColor: '#FE6466',
      endColor: '#FE8389',
    ),
    // MealsListData(
    //   imagePath: 'assets/fitness_app/snack.png',
    //   titleTxt: 'Snack',
    //   kacl: 0,
    //   meals: <String>['Recommend:', '800 kcal'],
    //   startColor: '#FE95B6',
    //   endColor: '#FF5287',
    // ),
    // MealsListData(
    //   imagePath: 'assets/fitness_app/dinner.png',
    //   titleTxt: 'Dinner',
    //   kacl: 0,
    //   meals: <String>['Recommend:', '703 kcal'],
    //   startColor: '#6F72CA',
    //   endColor: '#1E1466',
    // ),
  ];
}
