//
//  2ndFloor.swift
//  parking
//
//  Created by abrar nawar on 19/06/1443 AH.
//

import SwiftUI

struct Floor2: View {
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor:UIColor.init(Color.white)]
    }
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                HStack(spacing:20){
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey-1"))
                        //                HStack{
                        withAnimation(.easeInOut(duration: 0.0)){
                            NavigationLink("1st Floor",destination: ParkingSpot())
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 50)
                        }
                        
                        
                        //            }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 95, height: 102)
                            .cornerRadius(15)
                            .foregroundColor(Color("Pink"))
                        Text("2nd Floor 20/40")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                            .font(.system(.callout, design: .rounded))
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey-1"))
                        NavigationLink("3rd Floor",destination: Floor3())
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey-1"))
                        NavigationLink("4th Floor",destination: Floor4())
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                    }
                    
                }
                .padding(.bottom)
                
                Text("Please Select Available Parking Spot")
                    .foregroundColor(Color.white)
                    .padding(.top)
            
                
          
                //            كل زحمة الباركنق
                VStack{
                ZStack{
                    //                الخطوط العاموديه
                    HStack{
                        Divider()
                            .background(Color.gray)
                            .frame(height: 340)
                    }
                    HStack(spacing:180){
                        Divider()
                            .background(Color.gray)
                            .frame(width: 140, height: 350)
                        Divider()
                            .background(Color.gray)
                            .frame(width: 140, height: 350)
                    }
                    //                Dividers
                    HStack(spacing:110){
                        VStack(spacing:-110){
                            Group{
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                            }
                        }
                        VStack(spacing:-110){
                            Group{
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                            }
                        }
                    }
                    //                cars
                    HStack(spacing:180){
                        HStack(spacing:-10){
                            VStack(spacing:25){
                                HStack{
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                
                                
                                HStack{
                                    
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                
                                
                                
                                
                                HStack{
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                
                                HStack{
                                    
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                
                                HStack{
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                .offset(y:5)
                            }
                            
                            
                            
                            
                            
                            
                            VStack(spacing:35){
                                HStack{
                                    Image("greenOval")
                                    Text("B1")
                                        .foregroundColor(Color.white)
                                }
                                
                                
                                HStack{
                                    Image("greenOval")
                                    Text("B2")
                                        .foregroundColor(Color.white)
                                }
                                .offset(y:10)
                                
                                HStack{
                                    Image("greenOval")
                                    Text("B3")
                                        .foregroundColor(Color.white)
                                }
                                .offset(y:25)
                                
                                HStack{
                                    Image("redOval")
                                    Image("leftCar1")
                                }
                                .offset(x:20,y:25)
                                HStack{
                                    Image("redOval")
                                    Image("leftCar1")
                                }
                                .offset(x:20,y:20)
                            }
                            
                            
                            
                            
                            
                        }
                        
                        HStack(spacing:-10){
                            VStack(spacing:40){
                                HStack{
                                    Text("B6")
                                        .foregroundColor(Color.white)
                                    Image("greenOval")
                                    
                                }
                                HStack{
                                    Text("B7")
                                        .foregroundColor(Color.white)
                                    Image("greenOval")
                                }
                                
                                HStack{
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                
                                .offset(x:-20)
                                HStack{
                                    Image("leftCar1")
                                        .rotationEffect(.degrees(180))
                                    Image("redOval")
                                }
                                .offset(x:-20)
                                HStack{
                                    Text("B10")
                                        .foregroundColor(Color.white)
                                    Image("greenOval")
                                }
                                
                                //                            .padding(.leading)
                            }
                            
                            VStack(spacing:45){
                                HStack{
                                    Image("greenOval")
                                    Text("C1")
                                        .foregroundColor(Color.white)
                                }
                                HStack{
                                    Image("greenOval")
                                    Text("C2")
                                        .foregroundColor(Color.white)
                                }
                                .offset(y:-5)
                                HStack{
                                    Image("greenOval")
                                    Text("C2")
                                        .foregroundColor(Color.white)
                                }
                                
                                HStack{
                                    Image("greenOval")
                                    Text("C2")
                                        .foregroundColor(Color.white)
                                    
                                }
                                .offset(y:20)
                                
                                HStack{
                                    Image("redOval")
                                    Image("leftCar1")
                                }
                                
                                .offset(x:20 , y:10)
                                
                                
                            }
                            .offset(x:-20)
                            
                        }
                        
                    }
                    VStack{
                        Spacer()
                    HStack{
                        Spacer()
                        NavigationLink(destination: ParkingSpot()){
                            Image("Arrow")
                        }
                        Spacer()
                        Circle()
                            .fill(Color.gray)
                                       .frame(width: 5, height: 50)
                        Circle()
                                       .fill(Color("Pink"))
                                       .frame(width: 5, height: 50)
                        Circle()
                                       .fill(Color.gray)
                                       .frame(width: 5, height: 50)
                        Circle()
                                       .fill(Color.gray)
                                       .frame(width: 5, height: 50)
                        Spacer()
                        NavigationLink(destination: Floor3()){
                            Image("Arrow")
                                .rotationEffect(.degrees(180))
                        }
                        Spacer()
                        
                    }
                        
                    }
                }
                }
               
                
                .offset(y:-50)
            
                //            .navigationBarHidden(true)
            }
            //        .navigationBarHidden(true)
            //        .navigationTitle("parking spot")
            
            //        .ignoresSafeArea()
            //            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
            .navigationBarTitle("Parking Spots", displayMode: .inline)
        } .navigationBarHidden(true)
            .navigationBarHidden(true)
    }
}

struct Floor2_Previews: PreviewProvider {
    static var previews: some View {
        Floor2()
    }
}
