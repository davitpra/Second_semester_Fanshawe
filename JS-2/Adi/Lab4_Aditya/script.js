async function fetching() {
  try {
    document.getElementById("output").innerHTML = "Loading......";
    const response = await fetch("https://jsonplaceholder.typicode.com/posts");

    if (response.status === 200) {
      console.log("Success: Response received.");
      const data = await response.json();
      console.log("Data received from the URL is: ", data);

      const outputDiv = document.getElementById("output");
      outputDiv.innerHTML = "";

      data.forEach((item) => {
        const header = document.createElement("h1");
        header.innerHTML = item.title;
        outputDiv.appendChild(header);

        const para = document.createElement("p");
        para.innerHTML = item.body;
        outputDiv.appendChild(para);

        const hr = document.createElement("hr");
        outputDiv.appendChild(hr);
      });
    }
  } catch (error) {
    console.log("Something did not work out." + error);
  }
}

function xmlFunction() {
  const url = "https://jsonplaceholder.typicode.com/todos";

  return new Promise((resolve, reject) => {
    const request = new XMLHttpRequest();
    request.open("GET", url, true);

    request.onload = () => {
      if (request.status === 200) {
        const response = JSON.parse(request.response);
        resolve(response);
      }
    };

    request.onerror = () => {
      reject("Promise was not created successfully");
    };

    request.send();
  });
}

function accessXmlPromise() {
  const outputDiv = document.getElementById("output");
  outputDiv.innerHTML = "Loading........";
  xmlFunction()
    .then((result) => {
      console.log("Success: ", result);
      outputDiv.innerHTML = "";

      result.forEach((items) => {
        const header = document.createElement("h1");
        header.innerHTML = items.title;
        outputDiv.appendChild(header);

        const para = document.createElement("p");
        if (items.completed === true) {
          para.innerHTML = `Completed: Yes`;
        } else {
          para.innerHTML = `Completed: No`;
        }
        outputDiv.appendChild(para);

        const horRow = document.createElement("hr");
        outputDiv.appendChild(horRow);
      });
    })
    .catch((err) => {
      console.log("Failed: ", err);
    });
}
