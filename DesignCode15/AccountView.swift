//
//  AccountView.swift
//  DesignCode15
//
//  Created by Younis J on 25/03/2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List{
                Section {
                    Text("Setting")
                    Text("Billing")
                    Text("Help")
                }
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}









struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
