//
//  FlightDetailsView.swift
//  Flighty
//
//  Created by Spencer Dearman on 2/14/26.
//

import SwiftUI

struct FlightDetailsView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                Text("My Flights")
                    .font(.title).bold()
                Image(systemName: "chevron.down")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                HStack(spacing: 16) {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title3)
                    
                    Text("SD")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 32, height: 32)
                        .background(Color.green.opacity(0.8))
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal)
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.secondary)
                Text("Search to add flights")
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            ScrollView {
                VStack(spacing: 30) {
                    FlightRow(
                        daysLeft: "3",
                        airline: "UA 2649",
                        date: "Tue, 17 Feb",
                        origin: "Chicago",
                        dest: "Denver",
                        origCode: "ORD",
                        destCode: "DEN",
                        depTime: "4:05 PM",
                        arrTime: "6:03 PM",
                        info: "1h 22m at DEN",
                        status: "Relaxed",
                        statusIcon: "figure.walk"
                    )
                    
                    FlightRow(
                        daysLeft: "3",
                        airline: "UA 1306",
                        date: "Tue, 17 Feb",
                        origin: "Denver",
                        dest: "Jackson Hole",
                        origCode: "DEN",
                        destCode: "JAC",
                        depTime: "7:25 PM",
                        arrTime: "8:59 PM",
                        info: "",
                        status: "",
                        statusIcon: ""
                    )
                    
                    FlightRow(
                        daysLeft: "9",
                        airline: "UA 531",
                        date: "Mon, 23 Feb",
                        origin: "Jackson Hole",
                        dest: "Denver",
                        origCode: "JAC",
                        destCode: "DEN",
                        depTime: "4:27 PM",
                        arrTime: "6:21 PM",
                        info: "1h 2m at DEN",
                        status: "Normal",
                        statusIcon: "figure.walk"
                    )
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
        }
    }
}
