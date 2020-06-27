//Codes that run immediately the page loads
let searchIcon = document.getElementById("searchIcon");
let checkBox = document.getElementById("turnSearchbarVisible").checked;
if(checkBox == true){
    searchIcon.style.display = "none";
}




//Codes that run based on various events
function hideSearchIcon(){
    let searchIcon = document.getElementById("searchIcon");
    let checkBox = document.getElementById("turnSearchbarVisible").checked;

    if(checkBox == false){
        searchIcon.style.display = "none";
    }
}