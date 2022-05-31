//
//  User.swift
//  Park N' Stay
//
//  Created by Rand  on 22/06/1443 AH.
//

import Foundation



class UserViewModel: ObservableObject {
    @Published var isLoggedin : Bool
    
    init ()
    {
        isLoggedin = false
    }
   
    
    func UserLogin() {
            
            self.isLoggedin = true
        }
    
    func UserLoggedOut() {
            
            self.isLoggedin = false
        }
}



