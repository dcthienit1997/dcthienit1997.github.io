let url_token1 = "https://simsumi.herokuapp.com/api?text=";
let url_token2 = "&lang=vi";
var proxy = 'https://cors-anywhere.herokuapp.com/';
var listMess = document.getElementById("history");

function send() {

    // Get message from user
    let message = document.getElementById("message").value.trim();
    let u = "https://spreadsheets.google.com/feeds/list/1lwnfa-GlNRykWBL5y7tWpLxDoCfs8BvzWxFjeOZ1YJk/1/public/values?alt=json";
    if (0 != message.length) {
        let url = proxy + url_token1 + message + url_token2;
        $.getJSON(url, function (data) {
            let resMess = "<div class=\"respond-mes\">" + data.success + "</div>";
            let sendMess = "<div class=\"request-mes\">" + message + "</div>";
            listMess.innerHTML += sendMess;
            listMess.innerHTML += resMess;
        });
    }
}


function scrollToBottom() {
    listMess.scrollTop = listMess.scrollHeight;
}

scrollToBottom();