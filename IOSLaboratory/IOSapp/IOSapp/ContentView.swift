//
//  ContentView.swift
//  IOSapp
//
//  Created by alexandr on 22.11.2023.
//

import SwiftUI


extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0,
            opacity: alpha
        )
    }
}

func topBar() -> some View{
    
    return HStack()
    {
        VStack(alignment: .leading)
        {
            Text("Hello").font(.custom("Poppins-Regular", size: 16))
            Text("Hi James").font(.custom("Poppins-Bold", size: 20))
        }.frame(alignment: .leading)
        Spacer()
        Image("Group")
            .resizable()
            .frame(width : 50, height : 50, alignment:.topTrailing)
        //.padding(30)
            .clipShape(Circle())
    }.padding(.horizontal,30)
    .padding(.vertical, 20)
}
func drPanel() -> some View {
    VStack(alignment: .leading)
    {
        HStack{
            Image("Doctor").frame(width: 48, height: 48, alignment: .top).background(.white).clipShape(Circle())
            VStack(alignment: .leading, spacing: 8)
            {
                Text("Dr. Imran Syahir").font(.custom("Poppins-Bold", size: 16)) .foregroundStyle(Color.white)
                Text("General Doctor").font(.custom("Poppins-Regular", size: 14))
                    .foregroundStyle(Color.white)
            }.padding(.leading, 12)
            Spacer()
            Button(action: {}){
                Image("arrow-right")
            }
        }.padding(.horizontal, 30)
        Divider()
            .frame(width: .infinity, height: 1)
            .foregroundStyle(Color.white)
            .padding(.vertical, 8.0)
        HStack(alignment: .top)
        {
            Label{
                Text("Sunday, 12 June").font(.custom("Poppins-Regular", size: 16))
                    .foregroundStyle(Color.white)
            } icon: {
                Image("calendar-2")
            }
            Spacer()
            Label{
                Text("11:00 - 12:00 AM").font(.custom("Poppins-Regular", size: 16)) .foregroundStyle(Color.white)
            } icon: {
                Image("clock")
            }
        }.padding(.horizontal, 20)
    }         .padding(.vertical, 20)
        .background(Color(hex: 0x4894FE))
        .cornerRadius(8)
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(.horizontal, 20)
}

func searchBar() -> some View {
    Button(action: {}){
        HStack()
        {
            Image("search-normal")
            Text("Search doctor or health issue").font(.custom("Poppins-Regular", size: 16)).foregroundColor(Color(hex: 0x8696BB))
            Spacer()
        }.padding(10)
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
    }
}

func someMenu() -> some View {
    return HStack
    {
        VStack{
            Button(action: {}){
                Image("sun").padding(20).clipShape(Circle())
            }
            Text("Covid 19").font(.custom("Poppins-Regular", size: 15)).foregroundColor(Color(hex: 0x8696BB))
        }
        Spacer()
        VStack{
            Button(action: {}){
                Image("profile-add").padding(20).clipShape(Circle())
            }
            Text("Doctor").font(.custom("Poppins-Regular", size: 15)).foregroundColor(Color(hex: 0x8696BB))
        }
        Spacer()
        VStack{
            Button(action: {}){
                Image("link").padding(20).clipShape(Circle())
            }
            Text("Medicine").font(.custom("Poppins-Regular", size: 15)).foregroundColor(Color(hex: 0x8696BB))
        }
        Spacer()
        VStack{
            Button(action: {}){
                Image("hospital").padding(20).clipShape(Circle())
            }
            Text("Hospital").font(.custom("Poppins-Regular", size: 15)).foregroundColor(Color(hex: 0x8696BB))
        }
        Spacer()
    }.padding(.horizontal, 30)
}

func nearDr() -> some View {
    
    return VStack{
        
        HStack
        {
            Image("Doctor2")
            VStack(alignment: .leading, spacing: 8)
            {
                Text("Dr. Joseph Brostito").font(.custom("Poppins-Bold", size: 16)).foregroundColor(Color(hex: 0x80D1B34))
                Text("Dental Specialist").font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))
            }
            .padding(.leading, 12)
            Spacer()
            Image("location")
            Text("1.2 KM").font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))
        }.padding(.horizontal, 35)
        Divider()
            .frame(width: .infinity, height: 1)
            .padding(.horizontal, 30)
        HStack{
            
            Image("clock 1")
            Text("4,8 (120 Reviews)")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0xFEB052))
                .padding(.horizontal, 15)
                .frame(alignment: .leading)
            
            Image("clock 2")
            Text("Open at 17.00")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0x4894FE))
            
        }.padding(.horizontal, 25)
            .padding(.vertical, 20)
        
        HStack{
            Image("Doctor").frame(width: 48, height: 48, alignment: .top).background(.white).clipShape(Circle())
            VStack(alignment: .leading, spacing: 8)
            {
                Text("Dr. Imran Syahir").font(.custom("Poppins-Bold", size: 16)).foregroundColor(Color(hex: 0x80D1B34))
                Text("General Doctor").font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))
            }.padding(.leading, 12)
            Spacer()
            Image("location")
            Text("1.2 KM").font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))            }.padding(.horizontal, 35)
        
        Divider()
            .frame(width: .infinity, height: 1)
            .padding(.horizontal, 30)
        
        HStack{
            Image("clock 1")
            Text("4,8 (120 Reviews)")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0xFEB052))
                .padding(.horizontal, 15)
                .frame(alignment: .leading)
            Image("clock 2")
            Text("Open at 17.00")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0x4894FE))
            
        }.padding(.horizontal, 25)
            .padding(.vertical, 20)
        Spacer()
    }
}
func nearDoc(name: String, post: String, avatar: ImageResource) -> some View {
    return VStack{
        HStack
        {
            Image(avatar)
            VStack(alignment: .leading)
            {
                Text(name).font(.custom("Poppins-Bold", size: 16)).foregroundColor(Color(hex: 0x80D1B34))
                Text(post).font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))
            }
            .padding(.horizontal, 20)
            Image("location")
            Text("1.2 KM").font(.custom("Poppins-Regular", size: 14)).foregroundColor(Color(hex: 0x8696BB))
        }.padding(.horizontal, 35)
        Divider()
            .frame(width: .infinity, height: 1)
            .padding(.horizontal, 30)
        HStack{
            
            Image("clock 1")
            Text("4,8 (120 Reviews)")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0xFEB052))
                .padding(.horizontal, 15)
                .frame(alignment: .leading)
            
            Image("clock 2")
            Text("Open at 17.00")
                .font(.custom("Poppins-Regular", size: 12)).foregroundColor(Color(hex: 0x4894FE))
            
        }.padding(.horizontal, 25)
            .padding(.vertical, 20)
        
    }
}
struct ContentView: View
{
    var body: some View
    {
        topBar()
        
        ScrollView{
            drPanel()
            searchBar()
            someMenu()
            HStack{
            Text("Near Doctor").font(.custom("Poppins-Bold", size: 16)).foregroundColor(Color(hex: 0x80D1B34))
            Spacer()
        }.padding(.horizontal, 30)
            .padding(.vertical, 15)
            nearDr()
           // nearDoc(name: "Dr. Josef Brostito", post: "Dental Specialist", avatar: Doctor2)

        }
    }
}


#Preview {
    ContentView()
}
