//
//  CreateThreads.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 16.01.2026.
//

import SwiftUI

struct CreateThreads: View {
    @State private var aciklama=""
    @Environment(\.dismiss) var dismis

    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    CircularProfile()
                    VStack(alignment: .leading,spacing: 5){
                        Text("mustafaemirata")
                            .fontWeight(.semibold)
                        TextField("Bir şeyler paylaşın...",text: $aciklama,axis: .vertical)
                    }
                    .font(.footnote)
                    Spacer()
                    
                    if !aciklama.isEmpty{
                        Button{
                            
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12,height: 10)
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                        }
                    }
                    
                }
                .padding(.top,12)
            }
            Spacer()
            .navigationTitle("Yeni Gönderi")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("İptal"){
                        dismis()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                    
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Paylaş"){
                        
                    }
                    .opacity(aciklama.isEmpty ? 0.5:1.0)
                    .disabled(aciklama.isEmpty)
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreads()
}
