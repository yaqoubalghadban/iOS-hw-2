//
//  ContentView.swift
//  KFC
//
//  Created by Yaquob Alghadban  on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
    //vars
    var BoxMaster = 3.5
    var MightyZinger = 2.5
    var Zinger = 1.5
    var Popcorn = 0.9
    var Cola = 0.5
    @State var c2 = 0
    @State var c1 = 0
    @State var c3 = 0
    @State var c4 = 0
    @State var c5 = 0
    @State var amount = 0.0
    @State var money = ""
    var body: some View {
        
        VStack{
            ScrollView{
                
                Text("كنتاكي الحب")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("a")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .scaledToFit()
                
                Text("menu")
                    .font(.title)
                    .fontWeight(.regular)
                HStack{
                    Stepper("\(c1) ", value: $c1,in: 0...12)
                
                    VStack{
                    Text("box master")
                    Text("3.5 KD")
                        .font(.headline)
                        .fontWeight(.medium)
                }//vstack6
        
                    Image("b")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                    
                    
                    
                }//hstack1
                
                HStack{
                    Stepper("\(c3) ", value: $c3,in: 0...12)
                    
                    VStack{
                    Text("mighty zinger")
                    Text("2.5 KD")
                        .font(.headline)
                        .fontWeight(.medium)
                    }//vstack5
                    Image("mz")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }//hstack2
                
                HStack{
                    Stepper("\(c4)", value: $c4,in: 0...12)
                    VStack{
                    
                    Text("zinger")
                        Text("1.5 KD")
                        .font(.headline)
                        .fontWeight(.medium)
                    }//vstack4
                    Image("z")
                        .resizable()
                        .frame(width: 80, height: 80)
                    .scaledToFit()            }//hstack3
                
                HStack{
                    Stepper("\(c5) ", value: $c5,in: 0...12)
                    VStack{
                   
                    Text("popcorn")
                        Text("0.9")
                        .font(.headline)
                        .fontWeight(.medium)
                    }//vstack3
                    Image("p")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                }//hstack4
                
                HStack{
                    Stepper("\(c2)", value: $c2,in: 0...12)
                    VStack{
                    
                    Text("cola")
                        Text("0.5 KD")
                        .font(.headline)
                        .fontWeight(.medium)
                    }//vstack2
                    Image("c")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .scaledToFit()
                    
                }//hstack5
                Group{
                    HStack{
                        
                        TextField("المبلغ", text: $money)
                            .frame(width: 100, height: 40)
                            .textFieldStyle(.roundedBorder)
                        Text("المبلغ الذي لديك")
                    }//hs6
                    Text("اضغط لمعرفه الفاتوه")
                        .frame(width: 200, height: 60)
                        .background(Color.red)
                        .cornerRadius(9)
                        .onTapGesture {
                            let p1 = BoxMaster * Double(c1)
                            let p2 = MightyZinger * Double(c2)
                            let p3 = Zinger * Double(c3)
                            let p4 = Popcorn * Double(c4)
                            let p5 = Cola * Double(c5)
                            amount = p1 + p2 + p3 + p4 + p5
                            
                        }//on tap
                    
                    Text("المبلغ الاجمالي:\(amount,specifier: "%.2f")")
                    
                    
                    
                    
                }//g
            }//vstack1
        }//scroll
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
