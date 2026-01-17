import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { user in
                        VStack {
                            HStack {
                               
                                CircularProfile()
                                
                                VStack(alignment: .leading) {
                                    Text("mustafaemirata")
                                        .fontWeight(.semibold)
                                    
                                    Text("Mustafa Emir Ata")
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                                Text("Takip Et")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    }
                            }
                            .padding(.horizontal)
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Keşfet")
            .searchable(text: $searchText, prompt: "Ara")
        }
    }
}

// Önizleme Alanı
struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
