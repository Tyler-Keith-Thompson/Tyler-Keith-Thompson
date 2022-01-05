//
//  Job.swift
//  
//
//  Created by Tyler Thompson on 1/4/22.
//

import Publish
import Plot

struct Job {
    let name: String
    let imageUrl: URLRepresentable?
    let startMonth: String
    let startYear: String
    let endMonth: String?
    let endYear: String?
    let description: String

    var html: Component {
        Div {
            Element(name: "time") {
                Span {
                    Text("\(startMonth) ")
                    Element(name: "strong") {
                        Text(startYear)
                    }.class("text-upper")
                    Text(" - ")
                    if let endMonth = endMonth, let endYear = endYear {
                        Text("\(endMonth) ")
                        Element(name: "strong") {
                            Text(endYear)
                        }.class("text-upper")
                    } else {
                        Element(name: "strong") {
                            Text("PRESENT")
                        }.class("text-upper")
                    }
                }
            }.class("education-date")
            if let imageUrl = imageUrl {
                Div {
                    Image(url: imageUrl, description: "")
                }.class("education-logo")
            }
            Span(name).class("education-company")
            Markdown(description)
        }.class("education-box")
    }
}
