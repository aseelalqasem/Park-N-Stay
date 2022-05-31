//
//  ContentView.swift
//  Park N' Stay
//
//  Created by Rand  on 16/06/1443 AH.

// .background(Rectangle().stroke())
//

import SwiftUI


struct Home: View {
    
    @StateObject var UserVal1 : UserViewModel = .init()
    
    init() {
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    @State private var SearchText = ""
   
    
    
    var body: some View {
        
        
        
        NavigationView{
         
            
            VStack{
                
                Spacer()
                HStack{
                    Image("Logo")
                    
                    Spacer()
                }
                .frame(width:350)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color("Light"))
                        .opacity(0.8)
                        .frame(width : 340, height: 36)
                    
                    HStack{
                        Group{
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                        
                        //COLOR MUST BE CHANGED
                        TextField("Search", text: $SearchText)
                            .foregroundColor(.gray)
                        
                        
                        
                        
                        Image(systemName: "mic.fill")
                            .foregroundColor(Color.gray)
                        
                        Group{
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                    
                }
                HStack {
                    
                    Text("Find Your Parking Space!")
                    
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    
                }
                .frame(width: 330, height: 100)
                
                ScrollView{
                    VStack{
                        Group{
                            NavigationLink(destination: ParkingSpot().environmentObject(UserVal1)
                                           , label: {
                                
                                Image("RiyadhPark")
                            })
                            
                            
                            Spacer()
                            Spacer()
                            NavigationLink(destination: ParkingSpot(), label: {
                                
                                Image("KingdomCenter")
                            })
                            
                            Spacer()
                            Spacer()
                        }
                        Group{
                            NavigationLink(destination: ParkingSpot(), label: {
                                
                                Image("AlnakheelMall")
                            })
                            Spacer()
                            Spacer()
                            NavigationLink(destination: ParkingSpot(), label: {
                                
                                Image("AlfaisaliahMall")
                            })
                            
                            
                            Spacer()
                            Spacer()
                            
                        }
                    }
                }
                
                
                .frame(height:600)
                
                
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
            
            
            
            
        }
        .navigationBarHidden(true)
        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

