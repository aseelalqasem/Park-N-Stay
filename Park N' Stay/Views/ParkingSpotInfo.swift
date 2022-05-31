//
//  ParkingSpotInfo.swift
//  Park N' Stay
//
//  Created by Rand  on 17/06/1443 AH.
//

import SwiftUI



struct ParkingSpotInfo: View {
    
    
    init(){
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    @State private var ShareSheet = false
    
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("Navy")
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        Spacer()
                        Button(action: Share){
                            Image(systemName:
                                    "square.and.arrow.up")
                                .font(.title3)
                            .foregroundColor(Color("Pink")) }
                        .frame(width: 100, height: 40)
                        
                    }
                    HStack{
                        
                        
                        
                        
                        Image("Car")
                            .resizable()
                            .frame(width:  100, height: 470)
                        
                        
                        //VStack MALL - SPOT - 1st Floor - ARRIVAL TIME
                        //between Mall/1st Floor and Spot/Arrival Time
                        
                        
                        
                        
                        VStack{
                            HStack{
                                VStack {
                                    
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 15)
                                        
                                            .fill(Color("Light"))
                                            .frame(width: 110, height: 200)
                                        
                                        
                                        Text("Mall")
                                            .font(.system(.title2, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 40, height: 180, alignment: .topLeading)
                                        
                                        
                                        
                                        Text("Riyadh Park Mall")
                                            .font(.system(.title3, design: .rounded))
                                            .foregroundColor(Color ("Pink"))
                                            .multilineTextAlignment(.center)
                                            .frame(width: 110, height: 200, alignment: .center)
                                    }
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color("Light"))
                                            .frame(width: 110, height: 140)
                                        
                                        
                                        HStack{
                                            Text("1st")
                                                .font(.system(.title2, design: .rounded))
                                                .foregroundColor(.white)
                                                .frame(width: 30, height: 140, alignment: .center)
                                            
                                            
                                            
                                            Text("Floor")
                                                .font(.system(.title3, design: .rounded))
                                                .foregroundColor(Color ("Pink"))
                                                .multilineTextAlignment(.center)
                                                .frame(width: 45, height: 140, alignment: .center)
                                        }
                                        
                                        
                                    }
                                    
                                    
                                }
                                
                                
                                VStack {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color("Light"))
                                            .frame(width: 110, height: 130)
                                        
                                        Text("Spot")
                                            .font(.system(.title2, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 45, height: 110, alignment: .topLeading)
                                        
                                        
                                        
                                        
                                        HStack{
                                            
                                            
                                            Image("leftCar")
                                            
                                                .frame(width: 41,height: 0)
                                            
                                                .background(Rectangle().stroke())
                                            
                                            
                                            
                                            
                                            
                                            Text("A8")
                                                .frame(width: 30, height: 30, alignment: .bottomTrailing)
                                                .font(.system(.title3, design: .rounded))
                                                .foregroundColor(Color ("Pink"))
                                            
                                            
                                        }
                                        .frame(width: 100,height: 60, alignment: .bottom)
                                        
                                        
                                        
                                        
                                        
                                    }
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color("Light"))
                                            .frame(width: 110, height: 210)
                                        Text("Arrival Time")
                                            .font(.system(.title2, design: .rounded))
                                            .foregroundColor(.white)
                                            .frame(width: 66, height: 190, alignment: .topLeading)
                                            .multilineTextAlignment(.center)
                                        
                                        
                                        Text("9:00 PM")
                                            .font(.system(.title3, design: .rounded))
                                            .foregroundColor(Color ("Pink"))
                                            .multilineTextAlignment(.center)
                                            .frame(width: 100, height: 170, alignment: .center)
                                        
                                    }
                                    
                                }
                                
                                
                            }
                            
                            Divider()
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("Light"))
                                    .frame(width: 220, height:100)
                                VStack{
                                    HStack{
                                        Image(systemName: "camera")
                                            .foregroundColor(Color ("Pink"))
                                        Spacer()
                                    }
                                    .frame(width:200, height: 3)
                                    
                                    Image(systemName: "plus")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        Spacer()
                            .frame(width:20)
                        
                        
                        
                    }
                    
                    
                    
                    
                }
                
                
                .navigationTitle("Parking Spot Info")
                .font( .system(.largeTitle, design: .rounded))
            }
            
        }
    }
    func Share(){
        ShareSheet.toggle()
        
        let url = URL(string: "https://apple.com")
        let av = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
    
    
    
    
    struct ParkingSpotInfo_Previews: PreviewProvider {
        static var previews: some View {
            ParkingSpotInfo()
        }
    }
    
}
