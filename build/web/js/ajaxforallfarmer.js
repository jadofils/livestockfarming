  // Function to display content in the "content" div
  function displayContent() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById("dynamicContent").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "/liverstockFarming/displayfarmer.jsp", true);
    xhttp.send();
}