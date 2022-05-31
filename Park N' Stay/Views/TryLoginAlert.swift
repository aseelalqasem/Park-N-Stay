//
//  TryLoginAlert.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 22/06/1443 AH.
//

import SwiftUI
//TryLoginAlert



struct TryLoginAlert: View {


    @Binding var showingAlert: Bool
    @Binding var showingView: Bool
    @Binding var isActive: Bool

    @State var isModal: Bool = false
    @EnvironmentObject var UserVal: UserViewModel
    var body: some View {

        VStack {
            Text("showingAlert: \(showingAlert.description)")
            Text("showingView: \(showingView.description)")
            Text("isActive: \(isActive.description)")
        }
    }
}

struct TryLoginAlert_Previews: PreviewProvider {
    static var previews: some View {
        TryLoginAlert(showingAlert: .constant(true), showingView: .constant(true), isActive: .constant(true))
    }
}

