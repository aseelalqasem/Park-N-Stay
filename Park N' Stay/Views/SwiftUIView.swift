//
//  SwiftUIView.swift
//  Park N' Stay
//
//  Created by Rand  on 16/06/1443 AH.
//

import SwiftUI


struct SwiftUIView: View {
//    @State private var showingAlert = false
//    @State private var showingView = false
    
    @EnvironmentObject private var vm: ParkingSpotInfoViewModel
    
    @StateObject var UserVal: UserViewModel = UserViewModel()
    
    
    var body: some View {
        
       

        List{

            ForEach(vm.parkinginfo){

                Text($0.ArrivalTime)
                Text($0.Mall)
               
            }
        }
    }

//        HStack{
//
//            Button(action:  {
//
//            }, label: {
//                Text("A8")
//                    .foregroundColor(Color.white)
//
//            }
//
//            )
//                .alert(isPresented:$showingAlert){
//                    Alert(title: Text("You Picked Spot A8!"), message: Text("Show Nav.."),primaryButton:.destructive(Text("Navigate ME")){
//                        self.showingView = true
//                    }, secondaryButton: .cancel(Text("Cancel")))
//                }
//            NavigationLink("View2", destination: NavigateMe(),  isActive: $showingView).hidden().frame(width: 0, height: 0)
//        }
    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
     SwiftUIView()
            .environmentObject(ParkingSpotInfoViewModel())
    }
}




}
