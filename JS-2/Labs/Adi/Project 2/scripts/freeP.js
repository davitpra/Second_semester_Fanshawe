'use strict'

function userInput() {
  const validationDiv = document.getElementById("validateDiv");
  const loadingMess = document.getElementById("loadingMessage");
  const fullName = document.getElementById("name").value;
  const address = document.getElementById("address").value;
  const style = document.getElementById("style");
  const selectedStyle = style.options[style.selectedIndex].value;
  const crust = document.getElementById("crust");
  const selectedCrust = crust.options[crust.selectedIndex].value;
  const extraC = document.getElementById("extraC").checked;

  validationDiv.innerHTML = "";

  document.getElementById("orderForm").addEventListener("submit", (event) => {
    event.preventDefault(); //To prevent the form to reload the page everytime user press "Submit".
  })

  if (fullName === "") {
    const ulist = document.createElement("ul");
    const list = document.createElement("li");
    list.style = "color: red; margin: 20px auto";
    validationDiv.appendChild(ulist);
    validationDiv.appendChild(list);
    list.innerText = "Please enter your full name.";
  }

  if (address === "") {
    const ulist = document.createElement("ul");
    const list = document.createElement("li");
    list.style = "color: red; margin: 20px auto";
    validationDiv.appendChild(ulist);
    validationDiv.appendChild(list);
    list.innerHTML += "Please enter your address.";
  }

  if (selectedStyle === "No Selection") {
    const ulist = document.createElement("ul");
    const list = document.createElement("li");
    list.style = "color: red; margin: 20px auto";
    validationDiv.appendChild(ulist);
    validationDiv.appendChild(list);
    list.innerHTML += "Please choose a pizza.";
  }

  if (selectedCrust === "select") {
    const ulist = document.createElement("ul");
    const list = document.createElement("li");
    list.style = "color: red; margin: 20px auto";
    validationDiv.appendChild(ulist);
    validationDiv.appendChild(list);
    list.innerHTML += "Please choose a crust.";
  }

  async function sendData() {
    const url =
      "https://9cxlt1wgo5.execute-api.us-east-1.amazonaws.com/api/orders";

    const orderId = new Date().getTime();
    const requirements = {
      method: "POST",
      headers: {
        Authorization: "basic d0d6909c-631f-460f-ad67-21cda6a9cb3d",
      },
      body: JSON.stringify({
        id: orderId,
        style: selectedStyle,
        crust: selectedCrust,
        cheese: extraC,
        name: fullName,
        address: address,
      }),
    };
    
    const submitBtn = document.getElementById("submit");

    try {
      loadingMess.innerText = "Please Wait......";

      submitBtn.disabled = true;
      submitBtn.value = "Loading......";

      const request = await fetch(url, requirements);
      console.log(request);
      
      if (request.status === 201) {
        const response = await request.json();
        console.log(response);

        submitBtn.disabled = false;
        submitBtn.value = "Submit";
        loadingMess.innerText = "Data added to the back-end successfully.";
        
      }
      else{
        loadingMess.innerText = "Error: 400. Failed to add data to the back-end.";
      
        submitBtn.disabled = false;
        submitBtn.value = "Submit";
      }
    } catch (err) {
      console.log("Error:", err);
      
      loadingMess.innerText = "Failed to add data to the back-end.";
      
      submitBtn.disabled = false;
      submitBtn.value = "Submit";
    }

    document.getElementById("name").value = "";
    document.getElementById("address").value = "";
    document.getElementById("style").value = "No Selection";
    document.getElementById("crust").value = "select";
    document.getElementById("extraC").checked = false;
  }

  if (
    fullName != "" &&
    address != "" &&
    selectedStyle != "No Selection" &&
    selectedCrust != "select"
  ) {
    sendData();
    displayOrders();
  }

}


