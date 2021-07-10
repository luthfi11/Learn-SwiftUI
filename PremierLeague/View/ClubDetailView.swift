//
//  ClubDetailView.swift
//  PremierLeague
//
//  Created by Dans Multipro on 29/06/21.
//

import SwiftUI
import URLImage

struct ClubDetailView: View {
    var club: Club
    
    let screenWidth = UIScreen.main.bounds.size.width
    var body: some View {
        ScrollView {
            URLImage(URL(string: club.strStadiumThumb)!) { image in
                image
                    .resizable()
                    .frame(width: screenWidth, height: 300)
                    .aspectRatio(contentMode: .fill)
            }.ignoresSafeArea(edges: .top)
            
            URLImage(URL(string: club.strTeamBadge)!) { image in
                image
                    .resizable()
                    .frame(width: 120, height: 120)
                    .aspectRatio(contentMode: .fit)
            }.padding(.top, -70)
            
            Text(club.strAlternate)
                .font(.title)
            
            VStack(alignment: .leading) {
                Text("Stadium")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Text(club.strStadium)
                
                Text("Former Year")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Text(club.intFormedYear)
                
                Text("Website")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Text(club.strWebsite)
                    .foregroundColor(.blue)
                
                Text("Jersey")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 10).padding(.top, 14)
            
            URLImage(URL(string: club.strTeamJersey)!) { image in
                image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
            }
            
            Text(club.strDescriptionEN)
                .padding(10)
                .font(.system(size: 14))
                .foregroundColor(.gray)
        }
    }
}
