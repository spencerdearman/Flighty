//
//  FlightRow.swift
//  Flighty
//
//  Created by Spencer Dearman on 2/14/26.
//


import SwiftUI
import MapKit

struct FlightRow: View {
    let daysLeft: String
    let airline: String
    let date: String
    let origin: String
    let dest: String
    let origCode: String
    let destCode: String
    let depTime: String
    let arrTime: String
    let info: String
    let status: String
    let statusIcon: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(spacing: -2) {
                Text(daysLeft)
                    .font(.system(size: 32, weight: .semibold))
                Text("DAYS")
                    .font(.system(size: 10, weight: .bold))
                    .foregroundStyle(.secondary)
            }
            .frame(width: 45)
            .padding(.top, 4)
            
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(systemName: "globe.americas.fill")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .foregroundStyle(.blue)
                    
                    Text(airline)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                    
                    Text(date)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Text("\(origin) to \(dest)")
                    .font(.system(size: 17, weight: .semibold))
                
                HStack(spacing: 12) {
                    HStack(spacing: 4) {
                        Image(systemName: "arrow.up.right")
                            .font(.caption2)
                            .foregroundStyle(.gray)
                        Text(origCode).font(.caption).fontWeight(.bold).foregroundStyle(.gray)
                        Text(depTime).font(.caption).fontWeight(.medium)
                    }
                    
                    HStack(spacing: 4) {
                        Image(systemName: "arrow.down.right")
                            .font(.caption2)
                            .foregroundStyle(.gray)
                        Text(destCode).font(.caption).fontWeight(.bold).foregroundStyle(.gray)
                        Text(arrTime).font(.caption).fontWeight(.medium)
                    }
                }
                
                if !info.isEmpty {
                    Divider()
                        .padding(.vertical, 4)
                    
                    HStack {
                        Text(info)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            Image(systemName: statusIcon)
                            Text(status)
                            Image(systemName: "chevron.right")
                                .font(.caption2)
                                .foregroundStyle(.secondary)
                        }
                        .font(.caption)
                    }
                }
            }
        }
    }
}
