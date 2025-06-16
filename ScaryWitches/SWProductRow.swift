//
//  SWProductRow.swift
//  ScaryWitches
//
//  Created by Abraham Vazquez on 09/06/25.
//

import SwiftUI

struct SWProductRow: View {
    
    let swProduct: SWProduct
    
    var body: some View {
        
        HStack(spacing: 16 ) {
            
            Image(swProduct.imgName)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape( RoundedRectangle(cornerRadius: 10))
                .overlay( RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.3), lineWidth: 1 ))
            
            VStack(alignment: .leading ,spacing: 4 ) {
                Text(swProduct.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(String(format: "$%.2f", swProduct.price))
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
//    SWProductRow()
    SWProductRow(swProduct: SWProduct.sampleData[0])
}
