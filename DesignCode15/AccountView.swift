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
                VStack(spacing: 8) {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)
                        )
                    
                    Text("Younis J")
                        .font(.title .weight(.semibold))
                    
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.small)
                        
                        Text("Iraq")
                            .foregroundColor(.secondary)
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                Section {
                    Label("Setting", systemImage: "gear")
                    Label("Billing", systemImage: "creditcard")
                    Label("Help", systemImage: "questionmark")
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
