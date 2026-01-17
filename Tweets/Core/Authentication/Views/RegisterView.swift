import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel=RegisterViewModel()
 
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()

            VStack(spacing: 12) {
                TextField("E-postanızı girin", text: $viewModel.email)
                    .modifier(ThreadsTextFieldModifier())
                    .keyboardType(.emailAddress)
                 
                    
                
                SecureField("Şifrenizi girin", text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())

                
                TextField("Tam adınızı girin", text: $viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())

                
                TextField("Kullanıcı adınızı girin", text: $viewModel.username)
                    .modifier(ThreadsTextFieldModifier())

            }
            
            Button {
                // Kayıt olma aksiyonu
                
                Task{
                    try await viewModel.createuser()
                }
            } label: {
                Text("Kayıt Ol")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss() 
            } label: {
                HStack(spacing: 3) {
                    Text("Zaten hesabınız var mı?")
                    Text("Giriş Yap")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(.black)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegisterView()
}
