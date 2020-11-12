import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'industry.g.dart';

/// Information about the distribution of workforce industry retrieved from population query.
@JsonSerializable(createToJson: false)
class Industry extends PopulationData {
  /// Number of people belonging to the manufacturing industry.
  int manufacturing;

  /// Number of people belonging to the construction industry.
  int construction;

  /// Number of people belonging to the wholesale and retail trade industry.
  @JsonKey(name: 'wholesale_retail_trade')
  int wholesaleAndRetailTrade;

  /// Number of people belonging to the transportation and storage industry.
  @JsonKey(name: 'transportation_storage')
  int transportationAndStorage;

  /// Number of people belonging to the accommodation and food services industry.
  @JsonKey(name: 'accommodation_food_services')
  int accommodationAndFoodServices;

  /// Number of people belonging to the information communications industry.
  @JsonKey(name: 'information_communications')
  int informationCommunications;

  /// Number of people belonging to the financial and insurance services industry.
  @JsonKey(name: 'financial_insurance_services')
  int financialAndInsuranceServices;

  /// Number of people belonging to the real estates industry.
  @JsonKey(name: 'real_estate_services')
  int realEstateServices;

  /// Number of people belonging to the professional services industry.
  @JsonKey(name: 'professional_services')
  int professionalServices;

  /// Number of people belonging to the admin support services industry.
  @JsonKey(name: 'admin_support_services')
  int adminSupportServices;

  /// Number of people belonging to the public admin and education industry.
  @JsonKey(name: 'public_admin_education')
  int publicAdminEducation;

  /// Number of people belonging to the health and social services industry.
  @JsonKey(name: 'health_social_services')
  int healthAndSocialServices;

  /// Number of people belonging to the arts, entertainment and recreation industry.
  @JsonKey(name: 'arts_entertainment_recreation')
  int artsEntertainmentAndRecreation;

  /// Number of people belonging to other comm social industry.
  @JsonKey(name: 'other_comm_social_personal')
  int otherCommSocialPersonal;

  /// Number of people belonging to other industries not specified.
  int others;

  /// Number of people belonging to the hotels and restaurant industry.
  @JsonKey(name: 'hotels_restaurants')
  int hotelsAndRestaurants;

  /// Number of people belonging to the transport communications industry.
  @JsonKey(name: 'transport_communications')
  int transportCommunications;

  /// Number of people belonging to the business services industry.
  @JsonKey(name: 'business_services')
  int businessServices;

  /// Number of people belonging to the other services industry.
  @JsonKey(name: 'other_services_industries')
  int otherServicesIndustries;

  Industry(
      this.others,
      this.accommodationAndFoodServices,
      this.adminSupportServices,
      this.artsEntertainmentAndRecreation,
      this.businessServices,
      this.construction,
      this.financialAndInsuranceServices,
      this.healthAndSocialServices,
      this.hotelsAndRestaurants,
      this.informationCommunications,
      this.manufacturing,
      this.otherCommSocialPersonal,
      this.otherServicesIndustries,
      this.professionalServices,
      this.publicAdminEducation,
      this.realEstateServices,
      this.transportationAndStorage,
      this.transportCommunications,
      this.wholesaleAndRetailTrade,
      String planningArea,
      int year)
      : super(planningArea, year);

  /// @nodoc
  factory Industry.fromJson(Map<String, dynamic> json) =>
      _$IndustryFromJson(json);
}
