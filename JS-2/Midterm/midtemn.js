var fullName = "Garth Santor";

var outerFunc = function() {
    let fullName = "Bill Pulling";
    innerFunc1(fullName);

    function innerFunc1(fullname) {
        fullName = "Jim Cooper";
        console.log(innerFunc2())
        console.log(fullName);

        function innerFunc2(fullName) {
            firstName = "Tony";
            fullName = firstName;
            return fullName;
        }
    }
    console.log(fullName);
}

outerFunc();
console.log(fullName);

// constructor function for videoType
    function Map() {
       // method for console.log name and telefone
        this.set = function (telefone, name) {
            console.log(name + " " + telefone);
        };
    }

    let map1 = new Map("123-4567", "Garth");
    map1.set("123-4567", "Garth");

let set1 = new Set();
let fruits = ["apple", "bananas","peaches", "bananas"];
for(let i = 0; i < fruits.length; i++){
    set1.add(fruits[i]);
}
set1.forEach(function(value){
    console.log(value);
})

var myArray = [];
for (var i = 0; i < 5; i++) {
    myArray[i] = [];
    for (var j = 0; j < 5; j++) {
        myArray[i][j] = 0;
    }
}

const ISOK = 200;
var request = new XMLHttpRequest();

function getJSONAsync(url){
     request.onload = function(){
        if (request.status === ISOK){
            document.getElementById("jsonDiv").innerHTML = request.responseText;
            var v1 = JSON.parse(request.responseText);
            var v2 = v1.data.games.game[0].home_team_name;
            var v3 = JSON.stringify(v1);
        }
     }
    request.open("GET", url, true);
    request.send();
}