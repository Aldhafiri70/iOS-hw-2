//
//  ContentView.swift
//  ios-hw-2
//
//  Created by Abdulrazq Al dhafiri on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
   @State var num1 = ""
@State var num2 = ""
    @State var num3 = ""
    @State var num4 = ""
    @State var num5 = ""
    @State var total = 0.0
    @State var order = ""
    @State var mymoney = ""
    var body: some View {
        VStack{
        Text("Arnies Slider")
            .font(.largeTitle)
            .fontWeight(.light)
            .padding()
            Image("E1").resizable().frame(width: 130, height: 150 )
        
            
            HStack{
            
                Text("انجري فرايز 0.950KD")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                TextField("الكمية", text: $num1 )
}
            HStack{
                Text("سبايسي تشكن 1.750KD")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                TextField("الكمية", text: $num2 )
                
}
            HStack{ Text("بينك روكي 0.950KD")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                TextField("الكمية", text: $num3 )
                
            }
            HStack{ Text("PEPSI 0.450KD")
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                TextField("الكمية", text: $num4 )
                
            }
            HStack{
                Text("ادخل المبلغ الذي لديك الان")
            
            TextField("ادخل المبلغ", text: $mymoney)
            }
            Text("اضقط لمعرفة الفاتورة")
            .onTapGesture {
                let price1 = Double(num1) ?? 0
                let price2 = Double(num2) ?? 0
                let price3 = Double(num3) ?? 0
                let price4 = Double(num4) ?? 0
                let price5 = Double(num5) ?? 0
                let mypudget = Double(mymoney) ?? 0
                total = (price1 * 0.950) + (price2 * 0.950) + (price3 * 1.750) + (price4 * 0.450)
                if (total >= mypudget  ) {
                 
                    order="المبلغ غير كافي"
                }else {
                 
                    order = "تمت العملية بنجاح"
                }
                }
            Text(order)
            
            }
        }
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

