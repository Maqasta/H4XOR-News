//
//  DetailView.swift
//  H4XOR-SwiftUI
//
//  Created by Данил Фролов on 09.09.2021.
//

import SwiftUI

struct DetailView: View {
    let url:String?
    
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com/")
    }
}
