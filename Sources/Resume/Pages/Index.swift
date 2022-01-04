//
//  Index.swift
//  
//
//  Created by Tyler Thompson on 1/3/22.
//

import Publish
import Plot
import Foundation

struct IndexHTML {
    let index: Index
    let context: PublishingContext<Resume>
    init(index: Index, context: PublishingContext<Resume>) {
        self.index = index
        self.context = context
    }

    var html: HTML {
        HTML(
            .lang(context.site.language),
            .class("crt crt-side-box-on crt-nav-on crt-nav-type2 crt-main-nav-on crt-sidebar-on crt-layers-1"),
            .head(for: index, on: context.site),
            .body {
                mainNav
                Div {
                    Navigation {
                        List {
                            ListItem {
                                Link(url: "#about") {
                                    Image("images/uploads/avatar/avatar-58x58-default.png")
                                        .class("avatar avatar-58")
                                        .attribute(named: "width", value: "58")
                                        .attribute(named: "height", value: "58")
                                }.attribute(named: "data-tooltip", value: "About")
                            }
                            ListItem {
                                Link(url: "#experience") {
                                    Span().class("crt-icon crt-icon-experience")
                                }.attribute(named: "data-tooltip", value: "Experience")
                            }
                            ListItem {
                                Link(url: "#portfolio") {
                                    Span().class("crt-icon crt-icon-portfolio")
                                }.attribute(named: "data-tooltip", value: "Portfolio")
                            }
                            ListItem {
                                Link(url: "#testimonials") {
                                    Span().class("crt-icon crt-icon-references")
                                }.attribute(named: "data-tooltip", value: "References")
                            }
                            ListItem {
                                Link(url: "#contact") {
                                    Span().class("crt-icon crt-icon-contact")
                                }.attribute(named: "data-tooltip", value: "Contact")
                            }
                        }.class("clear-list").style("display: inline;")
                    }.id("crt-nav").class("crt-nav")
                }.id("crt-nav-wrap").style("position: sticky;top: 0;")
                Wrapper {
                    Div {
                        Div {
                            Div {
                                Div {
                                    Div {
                                        Div {
                                            Image("images/uploads/avatar/avatar-58x58-default.png")
                                                .class("avatar avatar-58")
                                                .attribute(named: "width", value: "195")
                                                .attribute(named: "height", value: "195")
                                        }.class("crt-card-avatar")
                                        Div {
                                            H2(context.site.content.profileName)
                                            Paragraph(context.site.content.profileTitle).class("text-muted")
                                            List {
                                                ListItem {
                                                    Link(url: "https://www.linkedin.com/in/tyler-k-thompson/") {
                                                        Span().class("crt-icon crt-icon-linkedin")
                                                    }.linkTarget(.blank)
                                                }
                                                ListItem {
                                                    Link(url: "https://www.github.com/tyler-keith-thompson") {
                                                        Span().class("crt-icon crt-icon-github")
                                                    }.linkTarget(.blank)
                                                }
                                            }.class("crt-social clear-list")
                                        }.class("crt-card-info")
                                    }.class("crt-card bg-primary text-center")
                                }.class("crt-side-box-item")
                            }.id("crt-side-box")
                        }.id("crt-side-box-wrap").class("crt-sticky")
                        Div {
                            Div {
                                Div {
                                    Div {
                                        aboutMe
                                        personalInformation
                                        workExperience
                                    }.class("crt-paper-cont paper-padd clear-mrg")
                                }.class("crt-paper clearfix")
                            }.class("crt-paper-layers")
                        }.class("crt-container-sm")
                    }.id("crt-container").class("crt-container")
                }
                SiteFooter()
            }
        )
    }

    var aboutMe: Component {
        Div { // should be a section
            Element(name: "a") { }.attribute(named: "name", value: "about")
            Div {
                Div {
                    H2("About Me").class("title-lg text-upper")
                    Markdown(context.site.content.aboutMe)
                }.class("col-sm-12")
            }.class("row")
        }.class("section brd-btm padd-box")
    }

    var personalInformation: Component {
        Div { // should be a section
            Div {
                Div {
                    H2("personal information").class("title-thin text-muted")
                    Element(name: "dl") {
                        Element(name: "dt") { Text("Full Name") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.profileName) }

                        Element(name: "dt") { Text("RESIDENCE") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.residence) }

                        Element(name: "dt") { Text("Years in industry") }.class("text-upper")
                        Element(name: "dd") { Text("\(context.site.content.yearsInIndustry)") }

                        Element(name: "dt") { Text("Primary Skill") }.class("text-upper")
                        Element(name: "dd") { Text(context.site.content.primarySkill) }
                    }.class("dl-horizontal clear-mrg")
                }.class("col-sm-6 clear-mrg")

                Div {
                    H2("primary languages/tech stacks").class("title-thin text-muted")
                    ProficiencySlider(name: "Swift", currentLevel: 10).html
                    ProficiencySlider(name: "iOS SDK", currentLevel: 8).html
                    ProficiencySlider(name: "Server Side Swift", currentLevel: 7).html
                    ProficiencySlider(name: "macOS/watchOS/tvOS SDK", currentLevel: 6).html
                    ProficiencySlider(name: "C#/.NET", currentLevel: 7).html
                    ProficiencySlider(name: "Scripting Languages (Ruby, Bash, etc...)", currentLevel: 5).html
                }.class("col-sm-6 clear-mrg")
            }.class("row")
        }.class("section brd-btm padd-box")
    }

    var workExperience: Component {
        ComponentGroup {
            Element(name: "a") { }.attribute(named: "name", value: "experience")

            H2("Work Experience").class("title-lg text-upper padd-box")

            Div {
                Job(name: "World Wide Technology (WWT)",
                    imageUrl: "images/logos/WWT_Logo_RGB_Color.png",
                    startMonth: "Nov",
                    startYear: "2016",
                    endMonth: nil,
                    endYear: nil,
                    description: """
                    ### Healthcare:
                    - Worked with one of the largest healthcare providers in the US
                    - Managed a team of teams of around 100 developers as an Architect
                    - Directly engaged with stakeholders to help design and build highly scalable systems
                    - Designed integrations between multiple EMRs using FHIR
                    - Created engineering best practices and architectural guidance documentation

                    ### Also worked with:
                    - Banking
                    - Identity Proofing
                    - Endpoint Security

                    ### Roles held while working at WWT:
                    - Software Engineer
                    - Tech Lead
                    - Principal Engineer
                    - Software Architect (systems architecture)
                    """).html

                Job(name: "New Mexico Commission for the Blind",
                    imageUrl: "images/logos/nmcftb-logo.png",
                    startMonth: "May",
                    startYear: "2013",
                    endMonth: "Feb",
                    endYear: "2016",
                    description: """
                    - Initial contract was for three months but satisfaction from the employer resulted in an offer for a full time position. During that time I setup the network server throughout the dormitory and field office, organized and taught philosophy classes for training purposes, coordinated activity outings, and conducted day-to-day running of the center when the director was absent.
                    - Worked on several iPhone apps and was shortly promoted to a software engineering position in the administrative office. Developed the state website, an internal web app to track time in regards to federal grants and regulations (with millions of dollars at stake), and publicly released 2 apps.
                    """).html

                Job(name: "Freelance - Voc Rehab Instructor",
                    imageUrl: nil,
                    startMonth: "May",
                    startYear: "2008",
                    endMonth: "May",
                    endYear: "2013",
                    description: """
                    During this time I taught people who recently became blind how to enter back into the workforce. I did individual tutoring with a variety of different clients with the goal of them becoming gainfully employed. This taught me invaluable lessons about accessibility, inclusive design, and the challenges of the industry as faced by those who require inclusive design.
                    """).html
            }.class("education")
        }
    }

    var mainNav: Component {
        Header {
            Div {
                Div {
                    Div {
                        Div {
                            Div {
                                Navigation {
                                    List {
                                        ListItem {
                                            Link("Home", url: "")
                                        }
                                        ListItem {
                                            Link("Portfolio", url: "#portfolio")
                                        }
                                        ListItem {
                                            Link("Contact", url: "#contact")
                                        }
                                    }.class("clear-list")
                                }.id("crt-main-nav")
                            }.class("crt-nav-container crt-container hidden-sm hidden-xs")
                        }.id("crt-head-col2").class("crt-head-col text-right")
//                        Div {
//                            Button {
//                                Span { }.class("crt-icon crt-icon-side-bar-icon")
//                            }.id("crt-sidebar-btn").class("btn btn-icon btn-shade")
//                        }.id("crt-head-col3").class("crt-head-col text-right")
                    }.class("crt-head-row")
                }.class("crt-container-sm")
            }.class("crt-head-inner crt-container")
        }.id("crt-header")
    }
}

private struct ProficiencySlider {
    let name: String
    let currentLevel: UInt8

    var proficiencyLevel: String {
        switch currentLevel {
            case 0...4: return "beginner"
            case 5...6: return "intermediate"
            case 7...8: return "advanced"
            default: return "highly proficient"
        }
    }

    var html: Component {
        Div {
            Element(name: "Strong") {
                Text(name)
            }.class("progress-title")
            Span {
                ComponentGroup(members: (0...currentLevel).map { _ in Span().class("bullet fill") })
                ComponentGroup(members: (0..<10-currentLevel).map { _ in Span().class("bullet") })
            }.class("progress-bar")
            Span(proficiencyLevel).class("progress-text text-muted")
        }
        .class("progress-bullets crt-animate")
        .attribute(named: "role", value: "progressbar")
        .attribute(named: "aria-valuenow", value: "\(currentLevel)")
        .attribute(named: "aria-valuemin", value: "0")
        .attribute(named: "aria-valuemax", value: "10")
    }
}

private struct Job {
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

extension Node where Context == HTML.DocumentContext {
    /// Add a `<head>` HTML element within the current context, which
    /// contains non-visual elements, such as stylesheets and metadata.
    /// - parameter nodes: The element's attributes and child elements.
    fileprivate static func head(for location: Location, on site: Resume) -> Node {
        .element(named: "head", nodes: [
            .encoding(.utf8),
            .siteName(site.name),
            .url(site.url(for: location)),
            .title("Tyler Thompson's Resume"),
            .description(site.description),
            .twitterCardType(location.imagePath == nil ? .summary : .summaryLargeImage),
            .forEach(["css/style.css", "css/plugins.css"], { .stylesheet($0) }),
            .viewport(.accordingToDevice),
            .unwrap(site.favicon, { .favicon($0) }),
            .link(.rel(.appleTouchIcon), .href("apple-touch-icon.png")),
            .link(.rel(.shortcutIcon), .href("favicon.ico")),
            .link(.href("https://fonts.googleapis.com/css?family=Pacifico"), .rel(.stylesheet)),
            .link(.href("https://fonts.googleapis.com/css?family=Quicksand:400,700"), .rel(.stylesheet)),
            .link(.href("fonts/icomoon/style.css"), .rel(.stylesheet)),
            .script(.src("js/vendor/modernizr-3.3.1.min.js")),
            .script(.src("https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js")),
            .script(#"window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.12.4.min.js"><\/script>')"#),
            .script(.src("https://maps.googleapis.com/maps/api/js")),
            .script(.src("js/plugins.min.js")),
            .script(.src("js/theme.min.js")),
            .script("""
                $('a[href*=\\#]').on('click', function(event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
                });

                // Smooth scrolling when the document is loaded and ready
                $(document).ready(function(){
                  $('html,body').animate({scrollTop:$(location.hash).offset().‌​top}, 500);
                });
            """)
        ])
    }
}
