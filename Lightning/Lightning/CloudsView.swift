//
//  CloudsView.swift
//  Lightning
//
//  Created by Alok Sagar on 24/10/22.
//

import SwiftUI

struct CloudsView: View {
    var body: some View {
        Image(uiImage: .init(named: "weather") ?? UIImage())
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
        
    }
}

struct CloudsView_Previews: PreviewProvider {
    static var previews: some View {
        CloudsView()
    }
}
