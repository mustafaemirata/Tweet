//
//  EditProfileView.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 17.01.2026.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio=""
    @State private var link=""
    @State private  var isPrivate=false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom,.horizontal])
                
                VStack
                {
                    HStack{
                        // isim ve foto
                        VStack(alignment: .leading){
                            Text("İsim")
                                .fontWeight(.semibold)
                            Text("Mustafa Emir Ata")
                        }
                        .font(.footnote)
                        Spacer()
                        CircularProfile()
                    }
                    Divider()
                    
                    // biografi alanı
                    
                    VStack(alignment: .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Biografi giriniz...",text: $bio,axis: .vertical)
                    }
                    .font(.footnote)
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField("Link giriniz...",text: $link,axis: .vertical)
                    }
                    .font(.footnote)
                    Divider()
                    
                    Toggle("Gizli Hesap",isOn: $isPrivate)

                    
                }
                
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray3),lineWidth: 1)
                }
                .padding()
                // arka arkaya 2 padding ile yanları boşalttık
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button("Onayla"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
            .navigationTitle("Profili Düzenle")
            .navigationBarTitleDisplayMode(.inline)
        }
     
        
    }
}

#Preview {
    EditProfileView()
}
