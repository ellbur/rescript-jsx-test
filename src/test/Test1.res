
Js.Console.log("Hi")

let getOrElse = (o, f) => switch o {
  | Some(x) => x
  | None => f()
}

module Dom = Webapi.Dom
module Document = Dom.Document
module Element = Dom.Element
module HtmlElement = Dom.HtmlElement
let document = Dom.document

let svgNS = "http://www.w3.org/2000/svg"

let svg = document->Document.createElementNS(svgNS, "svg")
svg->Element.setAttribute("width", "500")
svg->Element.setAttribute("height", "500")
svg->Element.setAttribute("style", "border: 1px solid #555;")

let body = document->Document.getElementsByTagName("body")->Dom.HtmlCollection.item(0)->Belt.Option.getExn
body->Element.appendChild(~child=svg)

let circle = document->Document.createElementNS(svgNS, "circle")
circle->Element.setAttribute("cx", "250")
circle->Element.setAttribute("cy", "250")
circle->Element.setAttribute("r", "20")
circle->Element.setAttribute("fill", "none")
circle->Element.setAttribute("stroke", "#ddd")
circle->Element.setAttribute("stroke-width", "1")

svg->Element.appendChild(~child=circle)

