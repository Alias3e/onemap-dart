import 'package:json_annotation/json_annotation.dart';

import 'population_data.dart';

part 'industry.g.dart';

@JsonSerializable(createToJson: false)

/// Information about the distribution of workforce industry retrieved from population query.
class Industry extends PopulationData {
  int manufacturing;

  int construction;

  @JsonKey(name: 'wholesale_retail_trade')
  int wholesaleAndRetailTrade;

  @JsonKey(name: 'transportation_storage')
  int transportationAndStorage;

  @JsonKey(name: 'accommodation_food_services')
  int accommodationAndFoodServices;

  @JsonKey(name: 'information_communications')
  int informationCommunications;

  @JsonKey(name: 'financial_insurance_services')
  int financialAndInsuranceServices;

  @JsonKey(name: 'real_estate_services')
  int realEstateServices;

  @JsonKey(name: 'professional_services')
  int professionalServices;

  @JsonKey(name: 'admin_support_services')
  int adminSupportServices;

  @JsonKey(name: 'public_admin_education')
  int publicAdminEducation;

  @JsonKey(name: 'health_social_services')
  int healthAndSocialServices;

  @JsonKey(name: 'arts_entertainment_recreation')
  int artsEntertainmentAndRecreation;

  @JsonKey(name: 'other_comm_social_personal')
  int otherCommSocialPersonal;

  int others;

  @JsonKey(name: 'hotels_restaurants')
  int hotelsAndRestaurants;

  @JsonKey(name: 'transport_communications')
  int transportCommunications;

  @JsonKey(name: 'business_services')
  int businessServices;

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
