//
//  News.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//


import Foundation
import CoreLocation

struct News: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let coordinate: CLLocationCoordinate2D
    let isLocal: Bool
    
    static let sampleData: [News] = [
        News(title: "Italian police arrest nun over links to mafia", description: """
A nun is among 24 people arrested in northern Italy in connection with a mafia investigation, Italian police have said.

The nun, named in Italian press as Sister Anna Donelli, was arrested for allegedly acting as a go-between for the 'Ndrangheta mafia and its jailed gang members.

Police also arrested two politicians and seized more than €1.8m (£1.5m) worth of assets in raids across several towns in the Lombardy and Veneto regions, as well as Calabria in the south.

The arrests are a result of a four-year investigation into the 'Ndrangheta, which is one of Europe's most influential and dangerous criminal organisations.

Statements released by the coalition of law enforcement agencies behind the sting detail allegations that the nun leveraged her position as a volunteer at the prison.

The Brescia Carabinieri said she was an unsuspecting figure, whose religious role allowed her "free access to the penitentiary facilities".

Police statements did not identify the politicians or any others targeted in the investigation.

The operation is continuing, with hundreds of police officers conducting searches across northern Italy.

They are aided by sniffer dog units searching for weapons and drugs, as well as "cash dogs" which are trained to search for cash, police said.

Investigators allege the group primarily used scrap metal trade businesses as a front to launder money, totalling approximately €12m in laundered cash, prosecutors said.

Originating in the impoverished region of Calabria, the 'Ndrangheta is considered one of the world's most dangerous criminal organisations.

In November last year, more than 200 people were sentenced to a total of more than 2,200 years in jail in one of Italy's biggest mafia trials for generations.

The man on the kill list of Italy's most powerful mafia
""",
             imageName: "italyNews", coordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964), isLocal: false),
        News(title: "Local News 1", description: "This is local news", imageName: "exampleImage", coordinate: CLLocationCoordinate2D(latitude: 40.7306, longitude: -73.9352), isLocal: true)
    ]
}
