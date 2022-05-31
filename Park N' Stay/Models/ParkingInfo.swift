//
//  ParkingInfo.swift
//  Park N' Stay
//
//  Created by Rand  on 22/06/1443 AH.
//

import Foundation


struct ParkingInfo: Identifiable{
    
    
    let Mall: String
    let Spot: String
    let ArrivalTime: String
    let Floor: String
    
    var id: String {
        
        Mall + Spot
    }
    
}

/*
 ParkingInfo(
 Mall: "Riyadh Park"
 Spot: "A8"
 ArrivalTime: "9:00 PM"
 Floor: "1 st Floor"
 
 )
 
 
 
 
 
 */
 
