//
//  File.swift
//  
//
//  Created by Jirayusm on 25/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
struct DetailListView: View {
    @EnvironmentObject var model: DemoObj
    let interactor: DemoInteractors!
    @ViewBuilder var body: some View {
        VStack {
            let _ = print("check \(model.text)")
            
            Text("!! Test Sdk Demo \(model.text)!!")
                .foregroundColor(model.status ? .blue : .red)
           
            Text("?? click me ??")
                .padding(.all , 10)
                .onTapGesture {
                    print("gun demo click model.status \(model.text)")
//                    model.updateText(text: "evienvienvi")
                    self.interactor.checkStatus(text: model.text)
                }
        }
    }
}

import SwiftUI

@available(iOS 13.0, *)
struct DetailScreenView: View {
    @EnvironmentObject var model: DemoObj
    let interactor: DemoInteractors!
    @ViewBuilder var body: some View {
        VStack(alignment: .center) {
            ImageView(urlString: model.image)
                .clipShape(Circle())
                .frame(width: 150, height: 150)
                          
            Text(model.text)
            
            Text("name : \(model.models?.age ?? "")")
            
            Text("entry : \(model.models?.entry ?? "")")
        }
        .padding(.all, 20)
    }
}



