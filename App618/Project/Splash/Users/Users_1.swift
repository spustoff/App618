//
//  Users_1.swift
//  App618
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI

struct Users_1: View {
    var body: some View {
        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            Image("users_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 55) {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("Earn for your future")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("The easy way to easy money")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .padding(.top)
                    
                    NavigationLink(destination: {
                        
                        Users_2()
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
    }
}

#Preview {
    Users_1()
}
