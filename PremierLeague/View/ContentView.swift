//
//  ContentView.swift
//  PremierLeague
//
//  Created by Dans Multipro on 27/06/21.
//

import SwiftUI
import URLImage

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.clubs.teams, id: \.idTeam) { club in
                HStack {
                    URLImage(URL(string: club.strTeamBadge)!) { image in
                        image.resizable().frame(width: 60, height: 60).aspectRatio(contentMode: .fit)
                    }
                    Text(club.strTeam).padding(.leading, 10)
                }.padding(.top, 10).padding(.bottom, 10)
            }
            .navigationTitle("Premier League")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
