import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:onemapsg/src/models/models.dart';

main() {
  group('population query deserialization test', () {
    test('economic status deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"employed":64100,'
          r'"unemployed":2802,'
          r'"inactive":59608,'
          r'"year":2010,'
          r'"gender":"Female"'
          r'}'
          r']');
      List<EconomicStatus> status =
          (response as List).map((i) => EconomicStatus.fromJson(i)).toList();
      expect(status[0].planningArea, 'Bedok');
      expect(status[0].employed, 64100);
      expect(status[0].unemployed, 2802);
      expect(status[0].inactive, 59608);
      expect(status[0].year, 2010);
      expect(status[0].gender, 'Female');
    });

    test('educational status deserialize properly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"pre_primary":4103,'
          r'"primary":20171,'
          r'"secondary":15944,'
          r'"post_secondary":4364,'
          r'"polytechnic":6343,'
          r'"prof_qualification_diploma":1326,'
          r'"university":5550,'
          r'"year":2010'
          r'}'
          r']');
      List<EducationStatus> data =
          (response as List).map((i) => EducationStatus.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].prePrimary, 4103);
      expect(data[0].primary, 20171);
      expect(data[0].secondary, 15944);
      expect(data[0].postSecondary, 4364);
      expect(data[0].polytechnic, 6343);
      expect(data[0].profQualificationDiploma, 1326);
      expect(data[0].university, 5550);
      expect(data[0].year, 2010);
    });

    test('ethnic distribution deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area": "Bedok",'
          r'"chinese": 102310,'
          r'"malays": 23178,'
          r'"indian": 13028,'
          r'"others": 5884,'
          r'"year": 2010,'
          r'"gender": "Male"'
          r'}'
          r']');
      List<EthnicDistribution> data = (response as List)
          .map((i) => EthnicDistribution.fromJson(i))
          .toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].chinese, 102310);
      expect(data[0].malays, 23178);
      expect(data[0].indian, 13028);
      expect(data[0].others, 5884);
      expect(data[0].year, 2010);
      expect(data[0].gender, 'Male');
    });

    test('household income deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area": "Bedok",'
          r'"total": 0,'
          r'"no_working_person": 11143,'
          r'"below_sgd_1000": 3965,'
          r'"sgd_1000_to_1999": 7815,'
          r'"sgd_2000_to_2999": 8461,'
          r'"sgd_3000_to_3999": 8128,'
          r'"sgd_4000_to_4999": 6733,'
          r'"sgd_5000_to_5999": 6174,'
          r'"sgd_6000_to_6999": 5291,'
          r'"sgd_7000_to_7999": 4229,'
          r'"sgd_8000_to_8999": 3712,'
          r'"sgd_9000_to_9999": 2758,'
          r'"sgd_10000_over": 22815,'
          r'"year": 2010'
          r'}'
          r']');
      List<HouseholdMonthlyIncome> data = (response as List)
          .map((i) => HouseholdMonthlyIncome.fromJson(i))
          .toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].noIncome, 11143);
      expect(data[0].below1000, 3965);
      expect(data[0].between1000To1999, 7815);
      expect(data[0].between2000To2999, 8461);
      expect(data[0].between3000To3999, 8128);
      expect(data[0].between4000To4999, 6733);
      expect(data[0].between5000To5999, 6174);
      expect(data[0].between6000To6999, 5291);
      expect(data[0].between7000To7999, 4229);
      expect(data[0].between8000To8999, 3712);
      expect(data[0].between9000To9999, 2758);
      expect(data[0].year, 2010);
    });

    test('household size deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"person1":12598,'
          r'"person2":17613,'
          r'"person3":18412,'
          r'"person4":19446,'
          r'"person5":12730,'
          r'"person6":5989,'
          r'"person7":2682,'
          r'"person_more_8":1756,'
          r'"year":2010'
          r'}'
          r']');

      List<HouseholdSize> data =
          (response as List).map((i) => HouseholdSize.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].onePersonInHousehold, 12598);
      expect(data[0].twoPersonInHousehold, 17613);
      expect(data[0].threePersonInHousehold, 18412);
      expect(data[0].fourPersonInHousehold, 19446);
      expect(data[0].fivePersonInHousehold, 12730);
      expect(data[0].sixPersonInHousehold, 5989);
      expect(data[0].sevenPersonInHousehold, 2682);
      expect(data[0].eightOrMorePersonInHousehold, 1756);
      expect(data[0].year, 2010);
    });

    test('household structure deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"no_family_nucleus":17526,'
          r'"ofn_1_gen":11330,'
          r'"ofn_2_gen":50450,'
          r'"ofn_3_more_gen":5758,'
          r'"tfn_1to2_gen":1435,'
          r'"tfn_3_more_gen":4412,'
          r'"three_more_fam_nucleus":313,'
          r'"year":2010'
          r'}'
          r']');

      List<HouseholdStructure> data = (response as List)
          .map((i) => HouseholdStructure.fromJson(i))
          .toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].noFamilyNucleus, 17526);
      expect(data[0].oneFamilyNucleusOneGeneration, 11330);
      expect(data[0].oneFamilyNucleusTwoGenerations, 50450);
      expect(data[0].oneFamilyNucleusThreeOrMoreGenerations, 5758);
      expect(data[0].twoFamilyNucleusOneToTwoGeneration, 1435);
      expect(data[0].twoFamilyNucleusThreeOrMoreGenerations, 4412);
      expect(data[0].threeOrMoreFamilyNucleus, 313);
      expect(data[0].year, 2010);
    });

    test('Income from work deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"below_sgd_1000":18538,'
          r'"sgd_1000_to_1499":14931,'
          r'"sgd_1500_to_1999":15419,'
          r'"sgd_2000_to_2499":14218,'
          r'"sgd_2500_to_2999":11664,'
          r'"sgd_3000_to_3999":18523,'
          r'"sgd_4000_to_4999":12131,'
          r'"sgd_5000_to_5999":9322,'
          r'"sgd_6000_to_6999":6026,'
          r'"sgd_7000_to_7999":4335,'
          r'"sgd_8000_over":22561,'
          r'"year":2010'
          r'}'
          r']');

      List<IncomeFromWork> data =
          (response as List).map((i) => IncomeFromWork.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].below1000, 18538);
      expect(data[0].between1000To1499, 14931);
      expect(data[0].between1500To1999, 15419);
      expect(data[0].between2000To2499, 14218);
      expect(data[0].between2500To2999, 11664);
      expect(data[0].between3000To3999, 18523);
      expect(data[0].between4000To4999, 12131);
      expect(data[0].between5000To5999, 9322);
      expect(data[0].between6000To6999, 6026);
      expect(data[0].between7000To7999, 4335);
      expect(data[0].over8000, 22561);
      expect(data[0].year, 2010);
    });

    test('industry deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"manufacturing":16075,'
          r'"construction":6570,'
          r'"wholesale_retail_trade":25387,'
          r'"transportation_storage":15153,'
          r'"accommodation_food_services":9265,'
          r'"information_communications":7082,'
          r'"financial_insurance_services":12394,'
          r'"real_estate_services":3845,'
          r'"professional_services":10380,'
          r'"admin_support_services":7836,'
          r'"public_admin_education":18516,'
          r'"health_social_services":6052,'
          r'"arts_entertainment_recreation":2551,'
          r'"other_comm_social_personal":4846,'
          r'"others":1716,'
          r'"hotels_restaurants":0,'
          r'"transport_communications":0,'
          r'"business_services":0,'
          r'"other_services_industries":0,'
          r'"year":2010'
          r'}'
          r']');

      List<Industry> data =
          (response as List).map((i) => Industry.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].manufacturing, 16075);
      expect(data[0].construction, 6570);
      expect(data[0].wholesaleAndRetailTrade, 25387);
      expect(data[0].transportationAndStorage, 15153);
      expect(data[0].accommodationAndFoodServices, 9265);
      expect(data[0].informationCommunications, 7082);
      expect(data[0].financialAndInsuranceServices, 12394);
      expect(data[0].realEstateServices, 3845);
      expect(data[0].professionalServices, 10380);
      expect(data[0].adminSupportServices, 7836);
      expect(data[0].publicAdminEducation, 18516);
      expect(data[0].healthAndSocialServices, 6052);
      expect(data[0].artsEntertainmentAndRecreation, 2551);
      expect(data[0].otherCommSocialPersonal, 4846);
      expect(data[0].others, 1716);
      expect(data[0].hotelsAndRestaurants, 0);
      expect(data[0].transportCommunications, 0);
      expect(data[0].businessServices, 0);
      expect(data[0].otherServicesIndustries, 0);
      expect(data[0].year, 2010);
    });

    test('language literacy deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"no_literate":10245,'
          r'"l1_chi":36837,'
          r'"l1_eng":31341,'
          r'"l1_mal":4960,'
          r'"l1_tam":545,'
          r'"l1_non_off":503,'
          r'"l2_eng_chi":95125,'
          r'"l2_eng_mal":38815,'
          r'"l2_eng_tam":4519,'
          r'"l2_other_two":1181,'
          r'"l3_eng_chi_mal":6862,'
          r'"l3_eng_mal_tam":867,'
          r'"l3_other_three":8283,'
          r'"year":2010,'
          r'"l2_eng_non_off":6937'
          r'}'
          r']');

      List<LanguageLiteracy> data =
          (response as List).map((i) => LanguageLiteracy.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].illiterate, 10245);
      expect(data[0].chineseOnly, 36837);
      expect(data[0].englishOnly, 31341);
      expect(data[0].malayOnly, 4960);
      expect(data[0].tamilOnly, 545);
      expect(data[0].unofficialLanguageOnly, 503);
      expect(data[0].englishAndChinese, 95125);
      expect(data[0].englishAndMalay, 38815);
      expect(data[0].englishAndTamil, 4519);
      expect(data[0].anyOtherTwoLanguages, 1181);
      expect(data[0].englishChineseAndMalay, 6862);
      expect(data[0].englishMalayAndTamil, 867);
      expect(data[0].anyOtherThreeLanguages, 8283);
      expect(data[0].englishAndUnofficialLanguage, 6937);
      expect(data[0].year, 2010);
    });

    test('Marital status deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"single":43753,'
          r'"married":71251,'
          r'"widowed":2204,'
          r'"divorced":3303,'
          r'"year":2010,'
          r'"gender":"Male"'
          r'}'
          r']');

      List<MaritalStatus> data =
          (response as List).map((i) => MaritalStatus.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].single, 43753);
      expect(data[0].married, 71251);
      expect(data[0].widowed, 2204);
      expect(data[0].divorced, 3303);
      expect(data[0].year, 2010);
      expect(data[0].gender, 'Male');
    });

    test('transportation deserialized correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"bus":16868,'
          r'"mrt":2085,'
          r'"mrt_bus":7934,'
          r'"mrt_car":235,'
          r'"mrt_other":60,'
          r'"taxi":148,'
          r'"car":8162,'
          r'"pvt_chartered_bus":6387,'
          r'"lorry_pickup":158,'
          r'"motorcycle_scooter":334,'
          r'"others":3354,'
          r'"no_transport_required":11696,'
          r'"year":2010'
          r'}'
          r']');

      List<Transportation> data =
          (response as List).map((i) => Transportation.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].bus, 16868);
      expect(data[0].mrt, 2085);
      expect(data[0].mrtAndBus, 7934);
      expect(data[0].mrtAndCar, 235);
      expect(data[0].mrtAndOther, 60);
      expect(data[0].taxi, 148);
      expect(data[0].car, 8162);
      expect(data[0].privateCharteredBus, 6387);
      expect(data[0].lorryOrPickup, 158);
      expect(data[0].motorcycleOrScooter, 334);
      expect(data[0].others, 3354);
      expect(data[0].noTransportRequired, 11696);
      expect(data[0].year, 2010);
    });

    test('occupation deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"senior_officials_managers":24211,'
          r'"professionals":21520,'
          r'"associate_professionals_tech":32095,'
          r'"clerical":18003,'
          r'"service_sales":18914,'
          r'"agricultural_fishery":41,'
          r'"production_craftsmen":7351,'
          r'"plant_machine_operators":10273,'
          r'"cleaners_labourers":10512,'
          r'"workers_not_classified":4747,'
          r'"year":2010'
          r'}'
          r']');

      List<Occupation> data =
          (response as List).map((i) => Occupation.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].seniorOfficialsManagers, 24211);
      expect(data[0].professionals, 21520);
      expect(data[0].associateProfessionalsTech, 32095);
      expect(data[0].clerical, 18003);
      expect(data[0].serviceSales, 18914);
      expect(data[0].agriculturalFishery, 41);
      expect(data[0].productionCraftsmen, 7351);
      expect(data[0].plantMachineOperators, 10273);
      expect(data[0].cleanersLabourers, 10512);
      expect(data[0].unclassified, 4747);
      expect(data[0].year, 2010);
    });

    test('age deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          '"planning_area": "Bedok",'
          '"age_0_4": 12180,'
          '"age_5_9": 14020,'
          '"age_10_14": 15420,'
          '"age_15_19": 17550,'
          '"age_20_24": 20010,'
          '"age_25_29": 20020,'
          '"age_30_34": 20370,'
          '"age_35_39": 21370,'
          '"age_40_44": 22550,'
          '"age_45_49": 22160,'
          '"age_50_54": 23950,'
          '"age_55_59": 23320,'
          '"age_60_64": 20360,'
          '"age_65_69": 15010,'
          '"age_70_74": 9620,'
          '"age_75_79": 6980,'
          '"age_80_84": 4510,'
          '"age_85_over": 3720,'
          '"total": 293110,'
          '"gender": "Total",'
          '"year": 2014'
          r'}'
          r']');

      List<Age> data = (response as List).map((i) => Age.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].ages0To4, 12180);
      expect(data[0].ages5To9, 14020);
      expect(data[0].ages10To14, 15420);
      expect(data[0].ages15To19, 17550);
      expect(data[0].ages20To24, 20010);
      expect(data[0].ages25To29, 20020);
      expect(data[0].ages30To34, 20370);
      expect(data[0].ages35To39, 21370);
      expect(data[0].ages40To44, 22550);
      expect(data[0].ages45To49, 22160);
      expect(data[0].ages50To54, 23950);
      expect(data[0].ages55To59, 23320);
      expect(data[0].ages60To64, 20360);
      expect(data[0].ages65To69, 15010);
      expect(data[0].ages70To74, 9620);
      expect(data[0].ages75To79, 6980);
      expect(data[0].ages80To84, 4510);
      expect(data[0].ages85AndOver, 3720);
      expect(data[0].year, 2014);
      expect(data[0].gender, 'Total');
    });

    test('religion deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          '"planning_area":"Bedok",'
          r'"no_religion":39471,'
          r'"buddhism":74930,'
          r'"taoism":24932,'
          r'"islam":45965,'
          r'"hinduism":9628,'
          r'"sikhism":1095,'
          r'"catholic_christian":20150,'
          r'"other_christians":30011,'
          r'"other_religions":839,'
          r'"year":2010'
          r'}'
          r']');

      List<Religion> data =
          (response as List).map((i) => Religion.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].none, 39471);
      expect(data[0].buddhism, 74930);
      expect(data[0].taoism, 24932);
      expect(data[0].islam, 45965);
      expect(data[0].hinduism, 9628);
      expect(data[0].sikhism, 1095);
      expect(data[0].catholicism, 20150);
      expect(data[0].christianity, 30011);
      expect(data[0].others, 839);
      expect(data[0].year, 2010);
    });

    test('spoken language deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"english":96675,'
          r'"mandarin":80351,'
          r'"chinese_dialects":37280,'
          r'"malay":38903,'
          r'"tamil":4953,'
          r'"other_indian_languages":3575,'
          r'"others":2372,'
          r'"year":2010'
          r'}'
          r']');

      List<SpokenLanguages> data =
          (response as List).map((i) => SpokenLanguages.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].english, 96675);
      expect(data[0].mandarin, 80351);
      expect(data[0].chineseDialects, 37280);
      expect(data[0].malay, 38903);
      expect(data[0].tamil, 4953);
      expect(data[0].otherIndianLanguages, 3575);
      expect(data[0].others, 2372);
      expect(data[0].year, 2010);
    });

    test('tenancy deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"owner":78754,'
          r'"tenant":11087,'
          r'"others":1383,'
          r'"year":2010'
          r'}'
          r']');

      List<Tenancy> data =
          (response as List).map((i) => Tenancy.fromJson(i)).toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].owner, 78754);
      expect(data[0].tenant, 11087);
      expect(data[0].others, 1383);
      expect(data[0].year, 2010);
    });

    test('household dwelling type deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          r'"planning_area":"Bedok",'
          r'"hdb_1_and_2_room_flats":4233,'
          r'"hdb_3_room_flats":23792,'
          r'"hdb_4_room_flats":21673,'
          r'"hdb_5_room_and_executive_flats":14003,'
          r'"condominiums_and_other_apartments":15148,'
          r'"landed_properties":11765,'
          r'"others":611,'
          r'"year":2010,'
          r'"total_hdb":63701'
          r'}'
          r']');

      List<HouseholdDwellingType> data = (response as List)
          .map((i) => HouseholdDwellingType.fromJson(i))
          .toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].oneToTwoRoomsHDB, 4233);
      expect(data[0].threeRoomHDB, 23792);
      expect(data[0].fourRoomHDB, 21673);
      expect(data[0].fiveRoomHDBExecutive, 14003);
      expect(data[0].condominiums, 15148);
      expect(data[0].landedProperties, 11765);
      expect(data[0].others, 611);
      expect(data[0].year, 2010);
      expect(data[0].totalHDB, 63701);
    });

    test('population dwelling type deserialize correctly', () {
      var response = json.decode(r'['
          r'{'
          '"planning_area": "Bedok",'
          '"year": 2011,'
          '"hdb_1_and_2_room_flats": 7420,'
          '"hdb_3_room_flats": 75680,'
          '"hdb_4_room_flats": 56480,'
          '"hdb_5_room_and_executive_flats": 23740,'
          '"condominiums_and_other_apartments": 7580,'
          '"landed_properties": 9300,'
          '"others": 1400,'
          '"total_hdb": 163300,'
          '"total": 90800'
          r'}'
          r']');

      List<PopulationDwellingType> data = (response as List)
          .map((i) => PopulationDwellingType.fromJson(i))
          .toList();
      expect(data[0].planningArea, 'Bedok');
      expect(data[0].oneToTwoRoomsHDB, 7420);
      expect(data[0].threeRoomHDB, 75680);
      expect(data[0].fourRoomHDB, 56480);
      expect(data[0].fiveRoomHDBExecutive, 23740);
      expect(data[0].condominiums, 7580);
      expect(data[0].landedProperties, 9300);
      expect(data[0].others, 1400);
      expect(data[0].year, 2011);
      expect(data[0].totalHDB, 163300);
      expect(data[0].total, 90800);
    });
  });
}
