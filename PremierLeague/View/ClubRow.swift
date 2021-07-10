//
//  ClubRow.swift
//  PremierLeague
//
//  Created by Dans Multipro on 29/06/21.
//

import SwiftUI
import URLImage

struct ClubRow: View {
    var club: Club
    
    var body: some View {
        HStack {
            URLImage(URL(string: club.strTeamBadge)!) { image in
                image
                    .resizable()
                    .frame(width: 60, height: 60)
                    .aspectRatio(contentMode: .fit)
            }
            VStack(alignment: .leading) {
                Text(club.strTeam)
                    .padding(.leading, 10)
                
                Text(club.intFormedYear)
                    .padding(.leading, 10)
                    .padding(.vertical, 1)
                    .font(.caption)
                
                Text(club.strStadium)
                    .padding(.leading, 10)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
    }
}
