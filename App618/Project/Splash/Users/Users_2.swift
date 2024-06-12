//
//  Users_2.swift
//  App618
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI
import StoreKit

struct Users_2: View {
    var body: some View {
        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            Image("users_2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 55) {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("Rate our app in the\nAppStore")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("Help make the app even better")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .padding(.top)
                    
                    NavigationLink(destination: {
                        
                        Users_3()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                            .padding()
                    })
                }
                .padding()
                .background(Color("bg").ignoresSafeArea())
            }
        }
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Users_2()
}
