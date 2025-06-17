//  SWProductDetailView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 16/06/25.

import SwiftUI

struct SWProductDetailView: View {
    
    let product: SWProduct
    @EnvironmentObject private var swCart: SWCart
    
    var body: some View {
        
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
                    
                    Button {
                        swCart.add(product)
                    } label: {
                        HStack {
                            Image(systemName: "cart.badge.plus")
                            Text("Añadir al Carrito")
                        }
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity) // Hace que el botón ocupe todo el ancho
                        .padding()
                        .background(Color.green)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                    }
                    
                    
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
