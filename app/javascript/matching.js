const images = ["app/assets/images/left-left.jpg", "app/assets/images/left-right.jpg", "app/assets/images/right-left.jpg", "app/assets/images/right-right.jpg"]

if(document.URL.match(/matchings/)){
  function changeImage() {
    const leftImage = document.getElementById("left-image");
    leftImage.addEventListener("click", () => {
      leftImage.src = images[0];
      console.log(leftImage.src);
    });
    const rightImage = document.getElementById("right-image");
    rightImage.addEventListener("click", () => {
      rightImage.src = images[2];
      console.log(rightImage.src);
    });
  };
  window.addEventListener("load", changeImage)
};

