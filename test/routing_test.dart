import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:latlong/latlong.dart';
import 'package:onemapsg/onemapsg.dart';

main() {
  group('routing tests', () {
    test('route deserialize correctly', () {
      Map<String, dynamic> response = json.decode(
          r'{"status_message":"Found route between points","route_geometry":"ew`GiqxxR??","status":0,"route_instructions":[["Head","NEWTON ROAD",0,"1.31971,103.841645",0,"0m","North West","North","driving","Head Northwest On Newton Road"],["Destination","NEWTON ROAD",0,"1.31971,103.841645",0,"0m","North","North West","driving","You Have Arrived At Your Destination"]],"route_name":["NEWTON ROAD"],"route_summary":{"start_point":"NEWTON ROAD","end_point":"NEWTON ROAD","total_time":0,"total_distance":0},"viaRoute":"NEWTON ROAD","subtitle":"Shortest distance"}');
      Route route = Route.fromJson(response);
      expect(route.status, 0);

      expect(route.statusMessage, 'Found route between points');

      expect(route.routeNames.length, 1);
      expect(route.routeNames[0], 'NEWTON ROAD');

      expect(route.encodedRouteGeometry, 'ew`GiqxxR??');

      expect(route.routeInstructions.length, 2);
      expect(route.routeInstructions[0].length, 10);
      expect(route.routeInstructions[0][0], 'Head');
      expect(route.routeInstructions[0][1], 'NEWTON ROAD');
      expect(route.routeInstructions[0][2], 0);
      expect(route.routeInstructions[0][3], '1.31971,103.841645');
      expect(route.routeInstructions[0][4], 0);
      expect(route.routeInstructions[0][5], '0m');
      expect(route.routeInstructions[0][6], 'North West');
      expect(route.routeInstructions[0][7], 'North');
      expect(route.routeInstructions[0][8], 'driving');
      expect(route.routeInstructions[0][9], 'Head Northwest On Newton Road');

      expect(route.routeInstructions[1].length, 10);
      expect(route.routeInstructions[1][0], 'Destination');
      expect(route.routeInstructions[1][1], 'NEWTON ROAD');
      expect(route.routeInstructions[1][2], 0);
      expect(route.routeInstructions[1][3], '1.31971,103.841645');
      expect(route.routeInstructions[1][4], 0);
      expect(route.routeInstructions[1][5], '0m');
      expect(route.routeInstructions[1][6], 'North');
      expect(route.routeInstructions[1][7], 'North West');
      expect(route.routeInstructions[1][8], 'driving');
      expect(route.routeInstructions[1][9],
          'You Have Arrived At Your Destination');

      expect(route.routeSummary.endPoint, 'NEWTON ROAD');
      expect(route.routeSummary.startPoint, 'NEWTON ROAD');
      expect(route.routeSummary.totalTime, 0);
      expect(route.routeSummary.totalDistance, 0);

      expect(route.viaRoute, 'NEWTON ROAD');
      expect(route.subtitle, 'Shortest distance');
    });

    test('plan vertex deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"name": "Origin",'
          r'"lon": 103.84415,'
          r'"lat": 1.320981,'
          r'"orig": "",'
          r'"vertexType": "NORMAL"'
          r'}');
      PlanVertex vertex = PlanVertex.fromJson(response);

      expect(vertex.name, 'Origin');
      expect(vertex.lon, 103.84415);
      expect(vertex.lat, 1.320981);
      expect(vertex.latLong.longitude, 103.84415);
      expect(vertex.latLong.latitude, 1.320981);
      expect(vertex.orig, '');
      expect(vertex.vertexType, 'NORMAL');
    });

    test('origin transit vertex deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"name": "Origin",'
          r'"lon": 103.84415,'
          r'"lat": 1.320981,'
          r'"departure": 1603668999000,'
          r'"orig": "",'
          r'"vertexType": "NORMAL"'
          r'}');

      TransitVertex vertex = TransitVertex.fromJson(response);
      expect(vertex.name, 'Origin');
      expect(vertex.lon, 103.84415);
      expect(vertex.lat, 1.320981);
      expect(vertex.departureTimestamp, 1603668999000);
      expect(vertex.orig, '');
      expect(vertex.vertexType, 'NORMAL');
    });

    test('transit vertex deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"name": "NOVENA MRT STATION",'
          r'"stopId": "FERRY:NS20",'
          r'"stopCode": "NS20",'
          r'"lon": 103.843842645,'
          r'"lat": 1.3204583552,'
          r'"arrival": 1603669048000,'
          r'"departure": 1603669049000,'
          r'"stopIndex": 8,'
          r'"stopSequence": 9,'
          r'"vertexType": "TRANSIT"'
          r'}');

      TransitVertex vertex = TransitVertex.fromJson(response);
      expect(vertex.name, 'NOVENA MRT STATION');
      expect(vertex.stopId, 'FERRY:NS20');
      expect(vertex.stopCode, 'NS20');
      expect(vertex.lon, 103.843842645);
      expect(vertex.lat, 1.3204583552);
      expect(vertex.latLong.longitude, 103.843842645);
      expect(vertex.latLong.latitude, 1.3204583552);
      expect(vertex.arrivalTimestamp, 1603669048000);
      expect(vertex.departureTimestamp, 1603669049000);
      expect(vertex.arrivalDateTime.millisecondsSinceEpoch, 1603669048000);
      expect(vertex.departureDateTime.millisecondsSinceEpoch, 1603669049000);
      expect(vertex.stopIndex, 8);
      expect(vertex.stopSequence, 9);
      expect(vertex.vertexType, 'TRANSIT');
    });

    test('step deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"distance": 64.675,'
          r'"relativeDirection": "DEPART",'
          r'"streetName": "path",'
          r'"absoluteDirection": "SOUTHWEST",'
          r'"stayOn": false,'
          r'"area": false,'
          r'"bogusName": false,'
          r'"lon": 103.84426705983,'
          r'"lat": 1.3208561836374,'
          r'"elevation": []'
          r'}');
      Step step = Step.fromJson(response);
      expect(step.distance, 64.675);
      expect(step.relativeDirection, 'DEPART');
      expect(step.streetName, 'path');
      expect(step.absoluteDirection, 'SOUTHWEST');
      expect(step.stayOn, false);
      expect(step.area, false);
      expect(step.bogusName, false);
      expect(step.lon, 103.84426705983);
      expect(step.lat, 1.3208561836374);
      expect(step.latLong.longitude, 103.84426705983);
      expect(step.latLong.latitude, 1.3208561836374);
      expect(step.elevation.length, 0);
    });

    test('WALK leg deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"startTime": 1603668999000,'
          r'"endTime": 1603669048000,'
          r'"departureDelay": 0,'
          r'"arrivalDelay": 0,'
          r'"realTime": false,'
          r'"distance": 64.675,'
          r'"pathway": false,'
          r'"mode": "WALK",'
          r'"route": "",'
          r'"agencyTimeZoneOffset": 28800000,'
          r'"interlineWithPreviousLeg": false,'
          r'"from": {'
          r'"name": "Origin",'
          r'"lon": 103.84415,'
          r'"lat": 1.320981,'
          r'"departure": 1603668999000,'
          r'"orig": "",'
          r'"vertexType": "NORMAL"'
          r'},'
          r'"to": {'
          r'"name": "NOVENA MRT STATION",'
          r'"stopId": "FERRY:NS20",'
          r'"stopCode": "NS20",'
          r'"lon": 103.843842645,'
          r'"lat": 1.3204583552,'
          r'"arrival": 1603669048000,'
          r'"departure": 1603669049000,'
          r'"stopIndex": 8,'
          r'"stopSequence": 9,'
          r'"vertexType": "TRANSIT"'
          r'},'
          r'"legGeometry": {'
          r'"points": "i~`GsayxRnArA",'
          r'"length": 2'
          r'},'
          r'"rentedBike": false,'
          r'"transitLeg": false,'
          r'"duration": 49,'
          r'"intermediateStops": [],'
          r'"steps": [{'
          r'"distance": 64.675,'
          r'"relativeDirection": "DEPART",'
          r'"streetName": "path",'
          r'"absoluteDirection": "SOUTHWEST",'
          r'"stayOn": false,'
          r'"area": false,'
          r'"bogusName": false,'
          r'"lon": 103.84426705983,'
          r'"lat": 1.3208561836374,'
          r'"elevation": []'
          r'}],'
          r'"numIntermediateStops": 1'
          r'}');
      Leg leg = Leg.fromJson(response);
      expect(leg.startTimestamp, 1603668999000);
      expect(leg.startDateTime.millisecondsSinceEpoch, 1603668999000);
      expect(leg.endTimestamp, 1603669048000);
      expect(leg.endDateTime.millisecondsSinceEpoch, 1603669048000);
      expect(leg.departureDelay, 0);
      expect(leg.arrivalDelay, 0);
      expect(leg.realTime, false);
      expect(leg.distance, 64.675);
      expect(leg.pathway, false);
      expect(leg.mode, "WALK");
      expect(leg.route, '');
      expect(leg.agencyTimeZoneOffset, 28800000);
      expect(leg.interlineWithPreviousLeg, false);
      expect(leg.encodedLegGeometry.points, 'i~`GsayxRnArA');
      expect(leg.encodedLegGeometry.length, 2);
      expect(leg.rentedBike, false);
      expect(leg.transitLeg, false);
      expect(leg.duration, 49);
      expect(leg.intermediateStops.length, 0);
      expect(leg.steps.length, 1);
      expect(leg.numIntermediateStops, 1);
    });

    test('BUS leg deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"startTime": 1603669546000,'
          r'"endTime": 1603670084000,'
          r'"departureDelay": 0,'
          r'"arrivalDelay": 0,'
          r'"realTime": false,'
          r'"distance": 2172.9761154541,'
          r'"pathway": false,'
          r'"mode": "BUS",'
          r'"route": "124",'
          r'"agencyName": "SBS Transit",'
          r'"agencyUrl": "http://www.sbstransit.com.sg/",'
          r'"agencyTimeZoneOffset": 28800000,'
          r'"routeType": 3,'
          r'"routeId": "124",'
          r'"interlineWithPreviousLeg": false,'
          r'"agencyId": "SBST",'
          r'"tripId": "124-2-1004",'
          r'"serviceDate": "20201026",'
          r'"from": {'
          r'"name": "REVIVAL CTR CH",'
          r'"stopId": "FERRY:50111",'
          r'"stopCode": "50111",'
          r'"lon": 103.846554958,'
          r'"lat": 1.31875833025,'
          r'"arrival": 1603669545000,'
          r'"departure": 1603669546000,'
          r'"stopIndex": 36,'
          r'"stopSequence": 38,'
          r'"vertexType": "TRANSIT"'
          r'},'
          r'"to": {'
          r'"name": "ST. MICHAELS TER",'
          r'"stopId": "FERRY:52499",'
          r'"stopCode": "52499",'
          r'"lon": 103.855372113,'
          r'"lat": 1.32603759751,'
          r'"arrival": 1603670084000,'
          r'"departure": 1603670085000,'
          r'"stopIndex": 42,'
          r'"stopSequence": 44,'
          r'"vertexType": "TRANSIT"'
          r'},'
          r'"legGeometry": {'
          r'"points": "ep`GcpyxRKaACQWuBMaASkBGc@Iy@OuAOuAKmAKgAAs@Ae@?M?O@y@BqCEq@O{@Qm@KSGKcCNM?{BL??kBJQ@qCN{@NKiFE}BAg@?I?C@OVk@H_@?e@CKEWOYQQoB}AwAgA{BgBsB{AiAw@GKAODQj@s@j@s@@_A{AyA??m@k@SGS?[Nq@|@o@x@qAhBi@t@??_AnAOTaARJl@[hDE`@OjB@JHJpClAd@\\^Mh@w@jAv@",'
          r'"length": 80'
          r'},'
          r'"routeShortName": "124",'
          r'"routeLongName": "SBST BUS 124",'
          r'"rentedBike": false,'
          r'"transitLeg": true,'
          r'"duration": 538,'
          r'"intermediateStops": ['
          r'{'
          r'"name": "NATL SKIN CTR",'
          r'"stopId": "FERRY:50121",'
          r'"stopCode": "50121",'
          r'"lon": 103.849339232,'
          r'"lat": 1.31930304159,'
          r'"arrival": 1603669589000,'
          r'"departure": 1603669619000,'
          r'"stopIndex": 37,'
          r'"stopSequence": 39,'
          r'"vertexType": "TRANSIT"'
          r'}, {'
          r'"name": "OPP BLK 104",'
          r'"stopId": "FERRY:50229",'
          r'"stopCode": "50229",'
          r'"lon": 103.852834896,'
          r'"lat": 1.3209576472,'
          r'"arrival": 1603669691000,'
          r'"departure": 1603669721000,'
          r'"stopIndex": 38,'
          r'"stopSequence": 40,'
          r'"vertexType": "TRANSIT"'
          r'}'
          r'],'
          r'"steps": [],'
          r'"numIntermediateStops": 6'
          r'}');
      Leg leg = Leg.fromJson(response);
      expect(leg.startTimestamp, 1603669546000);
      expect(leg.startDateTime.millisecondsSinceEpoch, 1603669546000);
      expect(leg.endTimestamp, 1603670084000);
      expect(leg.endDateTime.millisecondsSinceEpoch, 1603670084000);
      expect(leg.departureDelay, 0);
      expect(leg.arrivalDelay, 0);
      expect(leg.realTime, false);
      expect(leg.distance, 2172.9761154541);
      expect(leg.pathway, false);
      expect(leg.mode, "BUS");
      expect(leg.route, '124');
      expect(leg.agencyName, 'SBS Transit');
      expect(leg.agencyUrl, 'http://www.sbstransit.com.sg/');
      expect(leg.agencyTimeZoneOffset, 28800000);
      expect(leg.routeType, 3);
      expect(leg.routeId, '124');
      expect(leg.interlineWithPreviousLeg, false);
      expect(leg.agencyId, 'SBST');
      expect(leg.tripId, '124-2-1004');
      expect(leg.serviceDate, '20201026');
      expect(leg.encodedLegGeometry.points,
          'ep`GcpyxRKaACQWuBMaASkBGc@Iy@OuAOuAKmAKgAAs@Ae@?M?O@y@BqCEq@O{@Qm@KSGKcCNM?{BL??kBJQ@qCN{@NKiFE}BAg@?I?C@OVk@H_@?e@CKEWOYQQoB}AwAgA{BgBsB{AiAw@GKAODQj@s@j@s@@_A{AyA??m@k@SGS?[Nq@|@o@x@qAhBi@t@??_AnAOTaARJl@[hDE`@OjB@JHJpClAd@\\^Mh@w@jAv@');
      expect(leg.encodedLegGeometry.length, 80);
      expect(leg.routeShortName, '124');
      expect(leg.routeLongName, 'SBST BUS 124');
      expect(leg.rentedBike, false);
      expect(leg.transitLeg, true);
      expect(leg.duration, 538);
      // modified json string so have less stops.
      expect(leg.intermediateStops.length, 2);
      expect(leg.steps.length, 0);
      expect(leg.numIntermediateStops, 6);
    });

    test('SUBWAY leg deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"startTime": 1603669049000,'
          r'"endTime": 1603669166000,'
          r'"departureDelay": 0,'
          r'"arrivalDelay": 0,'
          r'"realTime": false,'
          r'"distance": 1398.3141065108,'
          r'"pathway": false,'
          r'"mode": "SUBWAY",'
          r'"route": "NS",'
          r'"agencyName": "SMRT Corporation",'
          r'"agencyUrl": "http://www.smrt.com.sg/",'
          r'"agencyTimeZoneOffset": 28800000,'
          r'"routeType": 1,'
          r'"routeId": "NS",'
          r'"interlineWithPreviousLeg": false,'
          r'"agencyId": "SMRT",'
          r'"tripId": "NS-1-1033",'
          r'"serviceDate": "20201026",'
          r'"from": {'
          r'"name": "NOVENA MRT STATION",'
          r'"stopId": "FERRY:NS20",'
          r'"stopCode": "NS20",'
          r'"lon": 103.843842645,'
          r'"lat": 1.3204583552,'
          r'"arrival": 1603669048000,'
          r'"departure": 1603669049000,'
          r'"stopIndex": 8,'
          r'"stopSequence": 9,'
          r'"vertexType": "TRANSIT"'
          r'},'
          r'"to": {'
          r'"name": "TOA PAYOH MRT STATION",'
          r'"stopId": "FERRY:NS19",'
          r'"stopCode": "NS19",'
          r'"lon": 103.84758934,'
          r'"lat": 1.33246287522,'
          r'"arrival": 1603669166000,'
          r'"departure": 1603669167000,'
          r'"stopIndex": 9,'
          r'"stopSequence": 10,'
          r'"vertexType": "TRANSIT"'
          r'},'
          r'"legGeometry": {'
          r'"points": "c|`Gu~xxRCCgFoEk@e@WSMK[U]U]SMI]SOIOG]Q_@QOGOGa@OOG_@Ma@Ma@KOEc@KOEc@Ia@Ic@Ga@GWC]EuEa@u@Gc@GOCi@I[Gc@Ga@Ka@Is@QiD}@a@Ka@Ic@IUE]EQCQAQAQAQAQAQ?Q?Q@Q?Q@Q@Q@Q@Q@QBc@DmEl@",'
          r'"length": 65'
          r'},'
          r'"routeShortName": "NS",'
          r'"routeLongName": "NORTH SOUTH LINE",'
          r'"rentedBike": false,'
          r'"transitLeg": true,'
          r'"duration": 117,'
          r'"intermediateStops": [],'
          r'"steps": [],'
          r'"numIntermediateStops": 1'
          r'}');
      Leg leg = Leg.fromJson(response);
      expect(leg.startTimestamp, 1603669049000);
      expect(leg.startDateTime.millisecondsSinceEpoch, 1603669049000);
      expect(leg.endTimestamp, 1603669166000);
      expect(leg.endDateTime.millisecondsSinceEpoch, 1603669166000);
      expect(leg.departureDelay, 0);
      expect(leg.arrivalDelay, 0);
      expect(leg.realTime, false);
      expect(leg.distance, 1398.3141065108);
      expect(leg.pathway, false);
      expect(leg.mode, "SUBWAY");
      expect(leg.route, 'NS');
      expect(leg.agencyName, 'SMRT Corporation');
      expect(leg.agencyUrl, 'http://www.smrt.com.sg/');
      expect(leg.agencyTimeZoneOffset, 28800000);
      expect(leg.routeType, 1);
      expect(leg.routeId, 'NS');
      expect(leg.interlineWithPreviousLeg, false);
      expect(leg.agencyId, 'SMRT');
      expect(leg.tripId, 'NS-1-1033');
      expect(leg.serviceDate, '20201026');
      expect(leg.encodedLegGeometry.points,
          'c|`Gu~xxRCCgFoEk@e@WSMK[U]U]SMI]SOIOG]Q_@QOGOGa@OOG_@Ma@Ma@KOEc@KOEc@Ia@Ic@Ga@GWC]EuEa@u@Gc@GOCi@I[Gc@Ga@Ka@Is@QiD}@a@Ka@Ic@IUE]EQCQAQAQAQAQAQ?Q?Q@Q?Q@Q@Q@Q@Q@QBc@DmEl@');
      expect(leg.encodedLegGeometry.length, 65);
      expect(leg.routeShortName, 'NS');
      expect(leg.routeLongName, 'NORTH SOUTH LINE');
      expect(leg.rentedBike, false);
      expect(leg.transitLeg, true);
      expect(leg.duration, 117);
      expect(leg.intermediateStops.length, 0);
      expect(leg.steps.length, 0);
      expect(leg.numIntermediateStops, 1);
    });

    test('itinerary deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"duration": 1023,'
          r'"startTime": 1603669149000,'
          r'"endTime": 1603670172000,'
          r'"walkTime": 483,'
          r'"transitTime": 538,'
          r'"waitingTime": 2,'
          r'"walkDistance": 545.84889472691,'
          r'"walkLimitExceeded": false,'
          r'"elevationLost": 0,'
          r'"elevationGained": 0,'
          r'"transfers": 0,'
          r'"legs": [],'
          r'"tooSloped": false,'
          r'"fare": "0.92"'
          r'}');

      Itinerary itinerary = Itinerary.fromJson(response);
      expect(itinerary.duration, 1023);
      expect(itinerary.startTimeStamp, 1603669149000);
      expect(itinerary.startDateTime.millisecondsSinceEpoch, 1603669149000);
      expect(itinerary.endTimeStamp, 1603670172000);
      expect(itinerary.endDateTime.millisecondsSinceEpoch, 1603670172000);
      expect(itinerary.walkTime, 483);
      expect(itinerary.transitTime, 538);
      expect(itinerary.waitingTime, 2);
      expect(itinerary.walkDistance, 545.84889472691);
      expect(itinerary.walkLimitExceeded, false);
      expect(itinerary.elevationLost, 0);
      expect(itinerary.elevationGained, 0);
      expect(itinerary.transfers, 0);
      expect(itinerary.legs.length, 0);
      expect(itinerary.tooSloped, false);
      expect(itinerary.fare, '0.92');
    });

    test('plan deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"date": 1603668900000,'
          r'"from": {'
          r'"name": "Origin",'
          r'"lon": 103.84415,'
          r'"lat": 1.320981,'
          r'"orig": "",'
          r'"vertexType": "NORMAL"'
          r'},'
          r'"to": {'
          r'"name": "Destination",'
          r'"lon": 103.8559,'
          r'"lat": 1.326762,'
          r'"orig": "",'
          r'"vertexType": "NORMAL"'
          r'},'
          r'"itineraries":[]'
          r'}');
      Plan plan = Plan.fromJson(response);
      expect(plan.dateTimestamp, 1603668900000);
      expect(plan.dateTime.millisecondsSinceEpoch, 1603668900000);
      expect(plan.from.name, 'Origin');
      expect(plan.from.latLong.longitude, 103.84415);
      expect(plan.from.latLong.latitude, 1.320981);
      expect(plan.from.orig, '');
      expect(plan.from.vertexType, Vertex.VERTEX_TYPE_NORMAL);
    });

    test('debug output deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"precalculationTime": 84,'
          r'"pathCalculationTime": 50,'
          r'"pathTimes": [30, 15, 5],'
          r'"renderingTime": 1,'
          r'"totalTime": 135,'
          r'"timedOut": false'
          r'}');
      DebugOutput debug = DebugOutput.fromJson(response);
      expect(debug.precalculationTime, 84);
      expect(debug.pathCalculationTime, 50);
      expect(debug.pathTimes, [30, 15, 5]);
      expect(debug.renderingTime, 1);
      expect(debug.totalTime, 135);
      expect(debug.timedOut, false);
    });

    test('elevation metadata deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"ellipsoidToGeoidDifference": 7.4731367367564,'
          r'"geoidElevation": false'
          r'}');

      ElevationMetadata meta = ElevationMetadata.fromJson(response);
      expect(meta.ellipsoidToGeoidDifference, 7.4731367367564);
      expect(meta.geoidElevation, false);
    });

    test('request parameters deserialize correctly', () {
      Map<String, dynamic> response = json.decode('{'
          r'"mode": "SUBWAY,WALK",'
          r'"date": "10-26-2020",'
          r'"showIntermediateStops": "true",'
          r'"fromPlace": "1.320981,103.844150",'
          r'"toPlace": "1.326762,103.8559",'
          r'"maxWalkDistance": "2000",'
          r'"time": "7:35am",'
          r'"maxTransfers": "5",'
          r'"numItineraries": "10"'
          r'}');
      RequestParameters parameters = RequestParameters.fromJson(response);
      expect(parameters.mode, 'SUBWAY,WALK');
      expect(parameters.date, '10-26-2020');
      expect(parameters.showIntermediateStops, 'true');
      expect(parameters.fromPlace, '1.320981,103.844150');
      expect(parameters.toPlace, '1.326762,103.8559');
      expect(parameters.maxWalkDistance, '2000');
      expect(parameters.time, '7:35am');
      expect(parameters.maxTransfers, '5');
      expect(parameters.numItineraries, '10');
    });

    /// Test based on results output from OneMap java code example.
    test('non public transport geometry decode correctly', () {
      GeometryDecoder decoder = GeometryDecoder();
      List<LatLng> points = decoder.decode(
          isPublicTransport: false,
          encodedString: 'u~aGag{xRBEYQ[UOKGE[IOKMIMI');

      expect(points[0].latitude, 1.32603);
      expect(points[0].longitude, 103.85537000000001);
      expect(points[1].latitude, 1.3260100000000001);
      expect(points[1].longitude, 103.8554);
      expect(points[2].latitude, 1.32614);
      expect(points[2].longitude, 103.85549);
      expect(points[3].latitude, 1.3262800000000001);
      expect(points[3].longitude, 103.85560000000001);
      expect(points[4].latitude, 1.3263600000000002);
      expect(points[4].longitude, 103.85566000000001);
      expect(points[5].latitude, 1.3264);
      expect(points[5].longitude, 103.85569000000001);
      expect(points[6].latitude, 1.32654);
      expect(points[6].longitude, 103.85574000000001);
      expect(points[7].latitude, 1.3266200000000001);
      expect(points[7].longitude, 103.8558);
      expect(points[8].latitude, 1.3266900000000001);
      expect(points[8].longitude, 103.85585);
      expect(points[9].latitude, 1.3267600000000002);
      expect(points[9].longitude, 103.8559);
    });

    /// Test results based on https://developers.google.com/maps/documentation/utilities/polylineutility
    test('public transport decoder decode correctly', () {
      GeometryDecoder decoder = GeometryDecoder();
      List<LatLng> points = decoder.decode(
          isPublicTransport: true,
          encodedString:
              'c|`Gu~xxRCCgFoEk@e@WSMK[U]U]SMI]SOIOG]Q_@QOGOGa@OOG_@Ma@Ma@KOEc@KOEc@Ia@Ic@Ga@GWC]EuEa@u@Gc@GOCi@I[Gc@Ga@Ka@Is@QiD}@a@Ka@Ic@IUE]EQCQAQAQAQAQAQ?Q?Q@Q?Q@Q@Q@Q@Q@QBc@DmEl@');
      expect(points[0].latitude, 1.32050);
      expect(points[0].longitude, 103.84379);
      expect(points[1].latitude, 1.32052);
      expect(points[1].longitude, 103.84381);
      expect(points[points.length - 5].latitude, 1.33106);
      expect(points[points.length - 5].longitude, 103.84784);
      expect(points[points.length - 1].latitude, 1.33245);
      expect(points[points.length - 1].longitude, 103.84755);
    });
  });
}
