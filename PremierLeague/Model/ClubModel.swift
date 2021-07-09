//
//  ClubModel.swift
//  PremierLeague
//
//  Created by Dans Multipro on 27/06/21.
//

import Foundation

struct Club: Decodable {
  var idTeam: String
  var strTeam: String
  var strAlternate: String
  var intFormedYear: String
  var strStadium: String
  var strStadiumThumb: String
  var strWebsite: String
  var strDescriptionEN: String
  var strTeamBadge: String
  var strTeamJersey: String
}

struct ClubList: Decodable {
  var teams: [Club]
}
