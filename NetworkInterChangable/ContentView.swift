//
//  ContentView.swift
//  NetworkInterChangable
//
//  Created by Mevlüt Akküyün on 17.06.2025.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userListViewModel : UserListViewModel
    init() {
        self.userListViewModel = UserListViewModel(service: LocalService())
    }
    var body: some View {
        List(userListViewModel.userList, id: \.id) { user in
            VStack {
                Text(user.name).foregroundColor(.red).frame(maxWidth: .infinity,alignment: .leading)
                Text(user.userName).foregroundColor(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                
                Text(user.email)
                .frame(maxWidth: .infinity,alignment: .leading)
               
            }
        }.task {
            await userListViewModel.downloadUsers()
        }
    }
}

#Preview {
    ContentView()
}
