//
//  ParkingSpotsInfoViewModel.swift
//  Park N' Stay
//
//  Created by Rand  on 22/06/1443 AH.
//

import Foundation

class ParkingSpotInfoViewModel: ObservableObject {
    
    @Published var parkinginfo: [ParkingInfo]
    
    init(){
        let parkinginfo = DataBase.parkinginfo
        self.parkinginfo = parkinginfo
       
    }
}


