//
//  Park_N__StayApp.swift
//  Park N' Stay
//
//  Created by Rand  on 16/06/1443 AH.


import SwiftUI

@main
struct Park_N__StayApp: App {
    @StateObject private var vm = ParkingSpotInfoViewModel()
    @StateObject   var UserVal1 : UserViewModel = .init()
//    @StateObject 
    var body: some Scene {
        WindowGroup {
            SplashView().environmentObject(UserVal1)
            
//            SwiftUIView()
//                .environmentObject(vm)
//            tabView()
//            SwiftUIView()
//                .environmentObject(vm)
        }
    }
}



// Model -> ObservarbleObject (isLoggedIN, CurrentParkingSpot -> Optional<ParkingSpotInfo>)
// OwnerView -> StateObj (Model)
// BorrowerView -> EnvObj (Model)
