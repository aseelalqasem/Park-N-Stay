//
//  tabView.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 18/06/1443 AH.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        ZStack{
            
            TabView{
                Home()
                    .tabItem {
                        Label ("Home" , systemImage: "house" )
                    }
                
                
                ParkingSpotInfo()
                    .tabItem {
                        Label ("My Spot"
                               , systemImage: "parkingsign")
                    }
                
                
                
                ProfileScreen()
                    .tabItem {
                        Label("Profile" , systemImage: "person" )
                        
                    }
                
            } .accentColor(.white)
        }
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
            .preferredColorScheme(.dark)
    }
}
