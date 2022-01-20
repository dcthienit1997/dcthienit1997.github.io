var req = new XMLHttpRequest();

req.open("GET", "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest", false);
req.setRequestHeader("X-CMC_PRO_API_KEY", "52ab3fc6-c22c-4621-ac1a-ac900e0b907d")
req.send(null)

console.log(req.status);
console.log(req.responseText);
