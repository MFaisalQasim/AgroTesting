function closeNav() {
  var x = document.getElementById("navbarNav");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

function OpenNav() {
  var x = document.getElementById("navbarNav");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

function more() {
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (moreText.style.display === "none") {
    btnText.innerHTML = "Read less <<";
    moreText.style.display = "block";
  } else {
    btnText.innerHTML = "Read more >>";
    moreText.style.display = "none";
  }
}

