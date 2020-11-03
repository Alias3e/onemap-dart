import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:onemapsg/src/onemapsg.dart';

class PopulationQuery {
  final Dio _dio;

  PopulationQuery(this._dio);

  Map<String, dynamic> _buildQueryParams(
      {@required String token,
      @required int year,
      @required String planningArea,
      String gender}) {
    Map<String, dynamic> queryParams = {
      'token': '',
      'year': '',
      'planningArea': ''
    };
    queryParams['token'] = token;
    queryParams['year'] = year;
    queryParams['planningArea'] = planningArea;
    if (gender != null) queryParams.putIfAbsent('gender', () => gender);
    return queryParams;
  }

  /// Retrieve data related to economic status of different planning area in Singapore.
  /// https://docs.onemap.sg/#economic-status-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  /// * Specify the gender using [Gender.Male] or [Gender.Female]. Returns all results if left empty.
  ///
  /// If [gender] is not specified, [List] will contain 2 [MaritalStatus] entry,
  /// with index 0 containing the data for male population data and entry at index
  /// 1 will contain the female population data.
  Future<List<EconomicStatus>> economicStatus({
    @required String token,
    @required int year,
    @required String planningArea,
    Gender gender,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getEconomicStatus',
        queryParameters: _buildQueryParams(
          token: token,
          year: year,
          planningArea: planningArea,
          gender: gender.asString(),
        ));

    List<EconomicStatus> result =
        (response.data as List).map((i) => EconomicStatus.fromJson(i)).toList();
    return result;
  }

  /// Data related to educational status of different planning area in Singapore.
  /// https://docs.onemap.sg/#education-status-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<EducationStatus> educationStatus({
    @required String token,
    @required year,
    @required planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getEducationAttending',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));

    List<EducationStatus> result = (response.data as List)
        .map((i) => EducationStatus.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to ethnic distribution of different planning area in Singapore.
  /// https://docs.onemap.sg/#ethnic-distribution-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  /// * Specify the gender using [Gender.Male] or [Gender.Female]. Returns all results if left empty.
  ///
  /// If [gender] is not specified, then the gender field in the response will be null.
  Future<EthnicDistribution> ethnicDistribution({
    @required String token,
    @required int year,
    @required String planningArea,
    Gender gender,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getEthnicGroup',
        queryParameters: _buildQueryParams(
          token: token,
          year: year,
          planningArea: planningArea,
          gender: gender.asString(),
        ));

    List<EthnicDistribution> result = (response.data as List)
        .map((i) => EthnicDistribution.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to monthly household work income of different planning area in Singapore.
  /// https://docs.onemap.sg/#work-income-for-household-monthly
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<HouseholdMonthlyIncome> householdMonthlyIncomeFromWork({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get(
        '/privateapi/popapi/getHouseholdMonthlyIncomeWork',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<HouseholdMonthlyIncome> result = (response.data as List)
        .map((i) => HouseholdMonthlyIncome.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to household size of different planning area in Singapore.
  /// https://docs.onemap.sg/#household-size-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available
  /// from [PlanningAreaApi.getPlanningAreasName].
  Future<HouseholdSize> householdSize({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getHouseholdSize',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<HouseholdSize> result =
        (response.data as List).map((i) => HouseholdSize.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to household structure of different planning area in Singapore.
  /// https://docs.onemap.sg/#household-structure-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available
  /// from [PlanningAreaApi.getPlanningAreasName].
  Future<HouseholdStructure> householdStructure({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getHouseholdStructure',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<HouseholdStructure> result = (response.data as List)
        .map((i) => HouseholdStructure.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to income from work of different planning area in Singapore.
  /// https://docs.onemap.sg/#income-from-work-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available
  /// from [PlanningAreaApi.getPlanningAreasName].
  Future<IncomeFromWork> incomeFromWork({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getIncomeFromWork',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<IncomeFromWork> result =
        (response.data as List).map((i) => IncomeFromWork.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to industry of population of different planning area in Singapore.
  /// https://docs.onemap.sg/#industry-of-population-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available
  /// from [PlanningAreaApi.getPlanningAreasName].
  Future<Industry> industry({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getIndustry',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Industry> result =
        (response.data as List).map((i) => Industry.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to language literacy of different planning area in Singapore.
  /// https://docs.onemap.sg/#language-literacy-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available
  /// from [PlanningAreaApi.getPlanningAreasName].
  Future<LanguageLiteracy> languageLiteracy({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getLanguageLiterate',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<LanguageLiteracy> result = (response.data as List)
        .map((i) => LanguageLiteracy.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to marital status of different planning area in Singapore.
  /// https://docs.onemap.sg/#marital-status-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  /// * Specify the gender using [Gender.Male] or [Gender.Female]. Returns all results if left empty.
  ///
  /// If gender is not specified, [List] will contain 2 [MaritalStatus] entry,
  /// with index 0 containing the data for male population data and entry at index
  /// 1 will contain the female population data.
  Future<List<MaritalStatus>> maritalStatus({
    @required String token,
    @required int year,
    @required String planningArea,
    Gender gender,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getMaritalStatus',
        queryParameters: _buildQueryParams(
          token: token,
          year: year,
          planningArea: planningArea,
          gender: gender.asString(),
        ));
    List<MaritalStatus> result =
        (response.data as List).map((i) => MaritalStatus.fromJson(i)).toList();
    return result;
  }

  /// Data related to mode of transports to School of different planning area in Singapore.
  /// https://docs.onemap.sg/#mode-of-transports-to-school-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<Transportation> modeOfTransportationToSchool({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getModeOfTransportSchool',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Transportation> result =
        (response.data as List).map((i) => Transportation.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to mode of transport to work of different planning area in Singapore.
  /// https://docs.onemap.sg/#mode-of-transport-to-work-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<Transportation> modeOfTransportationToWork({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getModeOfTransportWork',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Transportation> result =
        (response.data as List).map((i) => Transportation.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to occupation of different planning area in Singapore.
  /// https://docs.onemap.sg/#occupation-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<Occupation> occupation({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getOccupation',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Occupation> result =
        (response.data as List).map((i) => Occupation.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to age of different planning area in Singapore.
  /// https://docs.onemap.sg/#age-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  /// * Specify the gender using [Gender.Male] or [Gender.Female]. Returns all results if left empty.
  ///
  /// Returns a [List] of [Age] entries.
  /// If not gender is specified, the [List] will contain 3 entries, with entry 0
  /// being the combined data, entry 1 contains the male population data and entry
  /// 2 contains the female population data.
  Future<List<Age>> age({
    @required String token,
    @required int year,
    @required String planningArea,
    Gender gender,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getPopulationAgeGroup',
        queryParameters: _buildQueryParams(
            token: token,
            year: year,
            planningArea: planningArea,
            gender: gender.asString()));
    List<Age> result =
        (response.data as List).map((i) => Age.fromJson(i)).toList();
    return result;
  }

  /// Data related to religion of different planning area in Singapore.
  /// https://docs.onemap.sg/#religion-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<Religion> religion({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getReligion',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Religion> result =
        (response.data as List).map((i) => Religion.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to spoken language of different planning area in Singapore.
  /// https://docs.onemap.sg/#spoken-language-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<SpokenLanguages> spokenLanguages({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getSpokenAtHome',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<SpokenLanguages> result = (response.data as List)
        .map((i) => SpokenLanguages.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to tenancy of different planning area in Singapore.
  /// https://docs.onemap.sg/#tenancy-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<Tenancy> tenancy({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getTenancy',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<Tenancy> result =
        (response.data as List).map((i) => Tenancy.fromJson(i)).toList();
    return result[0];
  }

  /// Data related to dwelling type household of different planning area in Singapore.
  /// https://docs.onemap.sg/#dwelling-type-household-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<HouseholdDwellingType> householdDwellingType({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get(
        '/privateapi/popapi/getTypeOfDwellingHousehold',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<HouseholdDwellingType> result = (response.data as List)
        .map((i) => HouseholdDwellingType.fromJson(i))
        .toList();
    return result[0];
  }

  /// Data related to dwelling type population of different planning area in Singapore.
  /// https://docs.onemap.sg/#dwelling-type-population-data
  ///
  /// * OneMap [token] retrieved from [Authentication.getToken].
  /// * [year] of the data to be retrieved in YYYY format (eg 2010).
  /// * Specify the [planningArea], list of available [planningArea] is available from
  ///   [PlanningAreaApi.getPlanningAreasName].
  Future<PopulationDwellingType> populationDwellingType({
    @required String token,
    @required int year,
    @required String planningArea,
  }) async {
    var response = await _dio.get('/privateapi/popapi/getTypeOfDwellingPop',
        queryParameters: _buildQueryParams(
            token: token, year: year, planningArea: planningArea));
    List<PopulationDwellingType> result = (response.data as List)
        .map((i) => PopulationDwellingType.fromJson(i))
        .toList();
    return result[0];
  }
}
