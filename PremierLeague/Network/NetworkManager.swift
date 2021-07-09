//
//  NetworkManager.swift
//  PremierLeague
//
//  Created by Dans Multipro on 27/06/21.
//

import Combine
import SwiftUI
import Foundation

class NetworkManager : ObservableObject {
    @Published var clubs = ClubList(teams: [])
    private let apiUrl = "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League"
    
    init() {
        guard let url = URL(string: apiUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
          guard let data = data else { return }
          let clubs = try! JSONDecoder().decode(ClubList.self, from: data)
          DispatchQueue.main.async {
            self.clubs = clubs
          }
        }.resume()
    }
}
