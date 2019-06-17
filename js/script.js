         // Create a text node
                       // Append the text to <li>



for(var i = 1; i <= 10; i++) {
    var node = document.createElement("LI");
    var textnode = document.createTextNode(i);
    node.appendChild(textnode);    
    document.getElementById("myList").appendChild(node);     
}