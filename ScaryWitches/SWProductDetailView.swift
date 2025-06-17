//  SWProductDetailView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 16/06/25.

import SwiftUI

struct SWProductDetailView: View {
    
    let product: SWProduct
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                Image(product.imgName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(radius: 5)
                
                Text(product.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(product.descripcion)
                    .font(.body)
                    .foregroundStyle(.secondary)
                
                HStack {
                    Spacer()
                    
                    Text(String(format: "%.2f", product.price))
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.green)
                }
                Spacer()
            }
            .padding()
        }
        .navigationTitle(product.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
//    SWProductDetailView()
    NavigationStack {
        SWProductDetailView(product: SWProduct.sampleData[0])
    }
}
