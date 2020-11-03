import 'package:onemapsg/src/onemapsg.dart';

main() async {
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjUyNzgsInVzZXJfaWQiOjUyNzgsImVtYWlsIjoiYm9yaW5nLmFwcHMuc2dAZ21haWwuY29tIiwiZm9yZXZlciI6ZmFsc2UsImlzcyI6Imh0dHA6XC9cL29tMi5kZmUub25lbWFwLnNnXC9hcGlcL3YyXC91c2VyXC9zZXNzaW9uIiwiaWF0IjoxNjAzMzI5MDkyLCJleHAiOjE2MDM3NjEwOTIsIm5iZiI6MTYwMzMyOTA5MiwianRpIjoiOThkODE1MGM2OGQ0NzEwNGU0MGMwOWU0M2QyMDdiODYifQ.mdcZ04EMoExIRvUub9katN57luOwD5LiBikg0Y9ko4E';

  // Authenticate and retrieve token
//  try {
//    OneMapCredentials credentials = await OneMap.instance.authentication
//        .getToken(email: '', password: '');
//    if (credentials.accessToken.isNotEmpty) token = credentials.accessToken;
//    print(credentials.accessToken);
//  } catch (e) {
//    print(e);
//  }

  try {
    List<EconomicStatus> status = await OneMap.instance.populationQuery
        .economicStatus(
            token: token,
            year: 2010,
            planningArea: "Bedok",
            gender: Gender.Female);
    print('==================== Economic Status ====================');
    // First entry in list is for Male data & second entry is for Female data if
    // the gender is not specified. Otherwise, list contains only a single entry.
    for (EconomicStatus ec in status) {
      print(ec.gender);
      print(ec.employed);
    }
  } catch (e) {
    print(e);
  }

  try {
    EducationStatus status = await OneMap.instance.populationQuery
        .educationStatus(token: token, year: 2010, planningArea: "KALLANG");

    print('==================== Education Status ====================');
    print(status.university);
  } catch (e) {
    print(e);
  }

  try {
    EthnicDistribution status =
        await OneMap.instance.populationQuery.ethnicDistribution(
      token: token,
      year: 2010,
      planningArea: 'KALLANG',
    );

    print('==================== Ethnic Distribution ====================');
    print(status.planningArea);
    // If gender in request is not set, gender in response will also be null.
    print(status.gender);
    print(status.chinese);
  } catch (e) {
    print(e);
  }

  try {
    HouseholdMonthlyIncome status =
        await OneMap.instance.populationQuery.householdMonthlyIncomeFromWork(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print(
        '==================== Household Monthly Income From Work ====================');
    print(status.planningArea);
    // If gender in request is not set, response will also be null.
    print(status.total);
    print(status.between3000To3999);
  } catch (e) {
    print(e);
  }

  try {
    HouseholdSize data = await OneMap.instance.populationQuery.householdSize(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Household Size ====================');
    print(data.planningArea);
    print(data.twoPersonInHousehold);
    print(data.sevenPersonInHousehold);
  } catch (e) {
    print(e);
  }

  try {
    HouseholdStructure data =
        await OneMap.instance.populationQuery.householdStructure(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Household Structure ====================');
    print(data.planningArea);
    print(data.threeOrMoreFamilyNucleus);
    print(data.noFamilyNucleus);
  } catch (e) {
    print(e);
  }

  try {
    IncomeFromWork data = await OneMap.instance.populationQuery.incomeFromWork(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Income from work ====================');
    print(data.planningArea);
    print(data.over8000);
    print(data.below1000);
  } catch (e) {
    print(e);
  }

  try {
    Industry data = await OneMap.instance.populationQuery.industry(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Industry ====================');
    print(data.planningArea);
    print(data.realEstateServices);
    print(data.adminSupportServices);
  } catch (e) {
    print(e);
  }

  try {
    LanguageLiteracy data =
        await OneMap.instance.populationQuery.languageLiteracy(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Language literacy ====================');
    print(data.planningArea);
    print(data.englishAndUnofficialLanguage);
    print(data.englishAndChinese);
  } catch (e) {
    print(e);
  }

  try {
    List<MaritalStatus> data =
        await OneMap.instance.populationQuery.maritalStatus(
      token: token,
      year: 2010,
      planningArea: 'Kallang',
//      gender: Gender.Female,
    );
    // Entry 0 shows data for male population while entry 1 in the list show data
    // for female population.
    print('==================== Marital status ====================');
    for (MaritalStatus status in data) {
      print(status.planningArea);
      print(status.gender);
      print(status.married);
    }
  } catch (e) {
    print(e);
  }

  try {
    Transportation data =
        await OneMap.instance.populationQuery.modeOfTransportationToSchool(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print(
        '==================== Mode of transportation to school ====================');
    print(data.planningArea);
    print(data.mrtAndBus);
    print(data.privateCharteredBus);
  } catch (e) {
    print(e);
  }

  try {
    Transportation data =
        await OneMap.instance.populationQuery.modeOfTransportationToWork(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print(
        '==================== Mode of transportation to work ====================');
    print(data.planningArea);
    print(data.mrtAndBus);
    print(data.privateCharteredBus);
  } catch (e) {
    print(e);
  }

  try {
    Occupation data = await OneMap.instance.populationQuery.occupation(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Occupation ====================');
    print(data.planningArea);
    print(data.cleanersLabourers);
    print(data.clerical);
  } catch (e) {
    print(e);
  }

  try {
    List<Age> data = await OneMap.instance.populationQuery.age(
      token: token,
      year: 2010,
      planningArea: 'Marine Parade',
//      gender: Gender.Male,
    );

    print('==================== Age ====================');
    for (Age age in data) {
      print(age.planningArea);
      print(age.gender);
      print(age.ages30To34);
      print(age.ages0To4);
    }
  } catch (e) {
    print(e);
  }

  try {
    Religion data = await OneMap.instance.populationQuery.religion(
      token: token,
      year: 2010,
      planningArea: 'BUKIT TIMAH',
    );

    print('==================== Religion ====================');
    print(data.planningArea);
    print(data.christianity);
    print(data.buddhism);
  } catch (e) {
    print(e);
  }

  try {
    SpokenLanguages data =
        await OneMap.instance.populationQuery.spokenLanguages(
      token: token,
      year: 2010,
      planningArea: 'TOA PAYOH',
    );

    print('==================== Spoken Languages ====================');
    print(data.planningArea);
    print(data.chineseDialects);
    print(data.english);
  } catch (e) {
    print(e);
  }

  try {
    Tenancy data = await OneMap.instance.populationQuery.tenancy(
      token: token,
      year: 2010,
      planningArea: 'TOA PAYOH',
    );

    print('==================== Tenancy ====================');
    print(data.planningArea);
    print(data.owner);
    print(data.tenant);
  } catch (e) {
    print(e);
  }

  try {
    HouseholdDwellingType data =
        await OneMap.instance.populationQuery.householdDwellingType(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Household dwelling type ====================');
    print(data.planningArea);
    print(data.condominiums);
    print(data.oneToTwoRoomsHDB);
  } catch (e) {
    print(e);
  }

  try {
    PopulationDwellingType data =
        await OneMap.instance.populationQuery.populationDwellingType(
      token: token,
      year: 2010,
      planningArea: 'BEDOK',
    );

    print('==================== Population dwelling type ====================');
    print(data.planningArea);
    print(data.total);
    print(data.threeRoomHDB);
  } catch (e) {
    print(e);
  }
}
