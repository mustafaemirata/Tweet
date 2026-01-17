import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileTweetFilter = .tweets
    @Namespace var animation
    
    
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Mustafa Emir Ata")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("@mustafaemirata")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Text("Bilgisayar Mühendisliği 3.sınıf öğrencisi.")
                            .font(.footnote)
                        Text("10 Takipçi")
                            .font(.caption)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    CircularProfile()
                }
                .padding(.horizontal)
                
                Button { } label: {
                    Text("Takip Et")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 32)
                        .background(Color.black)
                        .cornerRadius(20)
                }

                VStack {
                    HStack {
                        ForEach(ProfileTweetFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    .foregroundColor(selectedFilter == filter ? .black : .gray)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundColor(Color.black)
                                        .frame(height: 3)
                                        .matchedGeometryEffect(id: "filter", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundColor(Color.clear)
                                        .frame(height: 3)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                            
                        }
                        
                    }
                    
                    Divider()
                }
                
            }
            .padding(.top)
            LazyVStack{
                ForEach(0...10,id: \.self){
                    tweets in
                    ThreadCell()
                }
            }
            .padding(.vertical,2)
        }
        
    }
}
#Preview {
    ProfileView()
}
