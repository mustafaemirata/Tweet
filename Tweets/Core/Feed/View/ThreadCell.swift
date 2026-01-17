import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfile()

                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Text("mustafaemirata")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("10 dakika")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))

                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }

                    Text("Yazılım Mühendisi")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                
                    HStack(spacing: 16) {
                        Button {
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                        }
                        
                        Button {
                        } label: {
                            Image(systemName: "bubble.right")
                                .foregroundColor(.black)
                        }
                        
                        Button {
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                .foregroundColor(.black)
                        }
                        
                        Button {
                        } label: {
                            Image(systemName: "paperplane")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 4)
                    .font(.subheadline)
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.top, 4)
        }
        .padding(.top, 4)
    }
}

#Preview {
    ThreadCell()
}
