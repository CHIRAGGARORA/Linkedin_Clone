//
//  MyNetworkScreen.swift
//  Linkedin
//
//  Created by chirag arora on 11/01/23.
//

import SwiftUI

var networkData: [NetworkModel] = [
    .init(id: 0, name: "Marry", position: "SDE at Paytm", mutual: 34, image: "1"),
    .init(id: 1, name: "Peter", position: "Assistant Manager", mutual: 45, image: "7"),
    .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutual: 67, image: "2"),
    .init(id: 3, name: "Sara", position: "open to work", mutual: 103, image: "3"),
    .init(id: 4, name: "Kia", position: "GET at HCL", mutual: 12, image: "4"),
    .init(id: 5, name: "Shristi", position: "Student", mutual: 78, image: "5"),
    .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutual: 90, image: "6"),
    .init(id: 7, name: "John", position: "HR at Intel", mutual: 34, image: "7"),
    .init(id: 8, name: "Tiya", position: "purchase Engineer", mutual: 50, image: "8"),
    .init(id: 9, name: "Pheobe", position: "Product Manager", mutual: 86, image: "3"),
    .init(id: 10, name: "Monica", position: "Data Analyst", mutual: 55, image: "4"),
    .init(id: 11, name: "Joe", position: "Software Development intern", mutual: 42, image: "5"),
    .init(id: 12, name: "Charel", position: "SDE-II ", mutual: 30, image: "1"),
    .init(id: 13, name: "Chandler", position: "Mobile Developer", mutual: 71, image: "2"),
    .init(id: 14, name: "Max", position: "QA", mutual: 95, image: "3"),
    .init(id: 15, name: "Nancy", position: "Frontend Developer", mutual: 18, image: "4")

]

struct MyNetworkScreen: View {
    var body: some View {
        VStack {
            SearchBarView()
            
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                
            }.padding(.horizontal)
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(width: .infinity,height: 10)
                .ignoresSafeArea(.all)
            
            
            
            ScrollView(.vertical,showsIndicators: false) {
                
                HStack {
                    Text("Invitations")
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                    
                }.padding(.horizontal)
                Divider()
                
                ForEach(networkData, id: \.id) { data in
                    InvitationView(Data: data)
                    Divider()
                }
            }
            
        }
    }
}

struct MyNetworkScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkScreen()
    }
}
