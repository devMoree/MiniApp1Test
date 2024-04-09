//
//  File.swift
//  
//
//  Created by Jirayusm on 9/1/2567 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct SwiftUIView: View {
    var text: String = ""
    
    public init(_ text: String) {
        self.text = text
    }
    public var body: some View {
        Text("test demo coed  :: \(self.text)")
    }
}
