//
//  Users_3.swift
//  App618
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            Image("users_3")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 55) {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("Don’t miss anything")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("Don’t miss the most userful information")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                    })
                    .padding(.top)
                    
                    VStack {
                        
                        Button(action: {
                            
                            status = true
                            
                        }, label: {
                            
                            Text("Enable Notifications")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                                .padding([.horizontal, .top])
                        })
                        
                        Button(action: {
                            
                            status = true
                            
                        }, label: {
                            
                            Text("Skip")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 20)
                                .padding([.horizontal, .vertical])
                        })
                    }
                }
                .padding()
                .background(Color("bg").ignoresSafeArea())
            }
        }
    }
}

#Preview {
    Users_3()
}
