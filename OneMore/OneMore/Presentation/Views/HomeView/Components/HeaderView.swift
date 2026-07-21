//
//  HeaderView.swift
//  OneMore
//
//  Created by Cedrick on 7/21/26.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Morning, Ced")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text(Date(), format: .dateTime.weekday(.wide).month(.wide).day().year())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: "bell")
                .font(.system(size: 25))
        }
        .padding(.horizontal, 15)
    }
}
