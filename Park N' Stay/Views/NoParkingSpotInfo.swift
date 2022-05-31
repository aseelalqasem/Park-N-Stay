//
//  NoParkingSpotInfo.swift
//  Park N' Stay
//
//  Created by Rand  on 21/06/1443 AH.
//

import SwiftUI

struct NoParkingSpotInfo: View {
    init() {
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationView{
            ZStack{
                HStack{
                    
                    Image("Car")
                        .resizable()
                        .frame(width:  100, height: 470)
                    Spacer()
                    ZStack{
                        HStack{
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color("Light"))
                                .frame(width: 200, height: 470)
                            Spacer()
                        }.frame(width:240)
                        HStack{
                            Text("Currently You Are Not Parked Anywhere!")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 160, height:100)
                            Spacer()
                            
                        }.frame(width: 200)
                        
                        
                        
                    }
                }
                
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
            .navigationTitle("Parking Spot Info")
        }
        
        
        
    }
}

struct NoParkingSpotInfo_Previews: PreviewProvider {
    static var previews: some View {
        NoParkingSpotInfo()
    }
}
