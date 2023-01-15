
let element =
  <svg width="500" height="500">
    <circle cx="250" cy="250" r="30" fill="none" stroke="#999"/>  
  </svg>

let container = ReactDOM.querySelector("#root")->Belt.Option.getExn
let root = ReactDOM.Client.createRoot(container)
root->ReactDOM.Client.Root.render(element)

