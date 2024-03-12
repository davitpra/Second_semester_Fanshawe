'use strict'

async function displayOrders(){
    const url = '	https://9cxlt1wgo5.execute-api.us-east-1.amazonaws.com/api/orders';
    const opt = {
      method: "GET",
      headers: {
        Authorization: "basic d0d6909c-631f-460f-ad67-21cda6a9cb3d"
      }
    }
    const outputD = document.getElementById("output");
    
    try{
      outputD.innerHTML = `Please wait. Loading....... `;
      const requestO = await fetch(url, opt);

      if(requestO.status === 200){
        const data = await requestO.json();
        
        outputD.innerHTML = ``;
        data.forEach(element => {
            const divI = document.createElement("div");
            divI.className = "divClass"; 
            const extraCheese = element.cheese ? "Extra Cheese" : "No Extra Cheese";
            divI.innerHTML += `ID: ${element.id} <br> Name: ${element.name} <br>Address: ${element.address} <br>Style: ${element.style}<br> Crust: ${element.crust} <br> Extra Cheese: ${extraCheese} <br>`;
            outputD.appendChild(divI);
            
            const remBtn = document.createElement("button");
            remBtn.innerText = "Remove";
            remBtn.className = "btnRem";
            remBtn.id = "remove"
            divI.appendChild(remBtn);

            remBtn.addEventListener("click", ()=> {
              remBtn.innerHTML = "Removing.....";
              remBtn.disabled = true;
              const url = `https://9cxlt1wgo5.execute-api.us-east-1.amazonaws.com/api/orders/${element.id}`;
              const opt = {
                method : 'DELETE',
                headers: {
                  Authorization: 'basic d0d6909c-631f-460f-ad67-21cda6a9cb3d'
                }
              }
                const delData = fetch(url, opt);
                delData.then((response)=> {
                  if(response.status===200){
                    divI.remove();
                  }
                  else{
                    alert("Failed to remove");
                  }
                })
              
              .catch((err)=> {
                console.log(err);

              }) 
        })
          });
      }
      else{
        document.getElementById("output").innerHTML = `Failed to load data`;
  
      }
    }
    catch(err){
      console.log(err);
    }
  }

