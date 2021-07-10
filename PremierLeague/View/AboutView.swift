//
//  AboutView.swift
//  PremierLeague
//
//  Created by Dans Multipro on 04/07/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            Image("Profile")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .top)
                .clipped()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text("Luthfi Alfarisi")
                .font(.title)
                .padding(.top, 10)
            Text("Mobile Developer")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
