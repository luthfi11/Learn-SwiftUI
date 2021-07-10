//
//  ContentView.swift
//  PremierLeague
//
//  Created by Dans Multipro on 27/06/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.clubs.teams, id: \.idTeam) { club in
                NavigationLink(destination: ClubDetailView(club: club)) {
                    ClubRow(club: club)
                }
            }
            .navigationTitle("Premier League")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AboutView()) {
                        Button("About") {}
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
