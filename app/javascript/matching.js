// const images = ["/assets/images/left-left.jpg", "app/assets/images/left-right.jpg", "app/assets/images/right-left.jpg", "app/assets/images/right-right.jpg"]

if(document.URL.match(/matchings/)){
  function changeImage(choice){
    if(choice == left){
      console.log("left");
    }
    if(choice == right){
      console.log("right");
    }
  };
  const leftImage = document.getElementsByClassName("left-image");
  console.log(leftImage)
  leftImage.addEventListener("click", changeImage(left));

  const rightImage = document.getElementById("right");
  console.log(rightImage)
  // right.addEventListener("click", changeImage(right));


  window.addEventListener("load", changeImage);
};
// document.getElementById("left").onclick = function(){
//   changeImage("left");
// };
// document.getElementById("right").onclick = function(){
//   changeImage("right");
//   };

