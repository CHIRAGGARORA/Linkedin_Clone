//
//  InvitationView.swift
//  Linkedin
//
//  Created by chirag arora on 11/01/23.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Jitesh Nayak", position: "SDE at Amazon", mutual: 12, image: "18")

struct InvitationView: View {
    var Data: NetworkModel
    var body: some View {
        HStack(alignment: .center) {
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70,height: 70,alignment: .leading)
            
            
            VStack(alignment: .leading) {
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(Data.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                
            }.frame(width: 150,height: 20,alignment: .leading)
            
            HStack {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.7)
                    
            }.padding(.horizontal)
            
            
        }.frame(width: .infinity,height: .infinity)
            .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
    }
}
