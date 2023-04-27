function alertche(HTML) {
    var alertEl = document.createElement("div");
    alertEl.innerHTML = HTML;
    document.body.appendChild(alertEl);
    alertEl.style =
      "z-index: 99999999; position: absolute; top: 0px; right: 20px; width: 300px; background-color: #32CD32; border-radius: 12px; padding: 12px; text-align: center; font-size: 18px; color: black; opacity: 0; transition: .5s";
    setTimeout(function () {
      alertEl.style =
        "z-index: 99999999; position: absolute; top: 20px; right: 20px; width: 300px; background-color: #32CD32; border-radius: 12px; padding: 12px; text-align: center; font-size: 18px; color: black; opacity: 1; transition: .5s";
      setTimeout(function () {
        alertEl.style =
          "z-index: 99999999; position: absolute; top: 0px; right: 20px; width: 300px; background-color: #32CD32; border-radius: 12px; padding: 12px; text-align: center; font-size: 18px; color: black; opacity: 0; transition: .5s";
        setTimeout(function () {
          alertEl.remove();
        }, 500);
      }, 2000);
    }, 50);
  }