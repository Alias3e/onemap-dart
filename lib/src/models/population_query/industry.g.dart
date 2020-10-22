// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Industry _$IndustryFromJson(Map<String, dynamic> json) {
  return Industry(
    json['others'] as int,
    json['accommodation_food_services'] as int,
    json['admin_support_services'] as int,
    json['arts_entertainment_recreation'] as int,
    json['business_services'] as int,
    json['construction'] as int,
    json['financial_insurance_services'] as int,
    json['health_social_services'] as int,
    json['hotels_restaurants'] as int,
    json['information_communications'] as int,
    json['manufacturing'] as int,
    json['other_comm_social_personal'] as int,
    json['other_services_industries'] as int,
    json['professional_services'] as int,
    json['public_admin_education'] as int,
    json['real_estate_services'] as int,
    json['transportation_storage'] as int,
    json['transport_communications'] as int,
    json['wholesale_retail_trade'] as int,
    json['planning_area'] as String,
    json['year'] as int,
  );
}

Map<String, dynamic> _$IndustryToJson(Industry instance) => <String, dynamic>{
      'planning_area': instance.planningArea,
      'year': instance.year,
      'manufacturing': instance.manufacturing,
      'construction': instance.construction,
      'wholesale_retail_trade': instance.wholesaleAndRetailTrade,
      'transportation_storage': instance.transportationAndStorage,
      'accommodation_food_services': instance.accommodationAndFoodServices,
      'information_communications': instance.informationCommunications,
      'financial_insurance_services': instance.financialAndInsuranceServices,
      'real_estate_services': instance.realEstateServices,
      'professional_services': instance.professionalServices,
      'admin_support_services': instance.adminSupportServices,
      'public_admin_education': instance.publicAdminEducation,
      'health_social_services': instance.healthAndSocialServices,
      'arts_entertainment_recreation': instance.artsEntertainmentAndRecreation,
      'other_comm_social_personal': instance.otherCommSocialPersonal,
      'others': instance.others,
      'hotels_restaurants': instance.hotelsAndRestaurants,
      'transport_communications': instance.transportCommunications,
      'business_services': instance.businessServices,
      'other_services_industries': instance.otherServicesIndustries,
    };
