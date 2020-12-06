const images = ["https://pbs.twimg.com/media/EoRO67sVgAEdjUU?format=jpg&name=large", "https://base-ec2if.akamaized.net/w=640,a=0,q=90,u=1/images/item/origin/7584a5f38ec5332146af2a947baf4544.png", "https://pbs.twimg.com/media/EoSqRQDU4AAp1GT?format=jpg&name=900x900", "https://pbs.twimg.com/media/EoSqRQxVgAASumt?format=jpg&name=4096x4096"];
let current = 0;

if(document.URL.match(/matchings/)){
  function changeImage() {
    const leftImage = document.getElementById("left-image");
    const rightImage = document.getElementById("right-image");
    //左の画像をクリックした時の処理(1回目)
    if(current == 0){
      leftImage.addEventListener("click", () => {
        leftImage.src = images[0];
        rightImage.src = images[1];
        current += 1;
        //2回目のクリックした時の処理
        if(current == 1){
          const leftImageTwo = document.getElementById("left-image");
          const rightImageTwo = document.getElementById("right-image");
          leftImageTwo.addEventListener("click", () => {
            leftImageTwo.style.display = "none";
            rightImageTwo.style.display = "none";
            for(const card1 of document.querySelectorAll(".section_1")){
              card1.classList.remove("hidden");
            };
          });
          rightImageTwo.addEventListener("click", () => {
            leftImageTwo.style.display = "none";
            rightImageTwo.style.display = "none";
            for(const card2 of document.querySelectorAll(".section_2")){
              card2.classList.remove("hidden");
            };
          });
        };
      });
    };
    //右の画像をクリックした時の処理(2回目)
    if(current == 0 ){
      rightImage.addEventListener("click", () => {
        leftImage.src = images[2];
        rightImage.src = images[3];
        current += 1;
        //2回目のクリックした時の処理
        if(current == 1){
          const leftImageTwo = document.getElementById("left-image");
          const rightImageTwo = document.getElementById("right-image");
          leftImageTwo.addEventListener("click", () => {
            leftImageTwo.style.display = "none";
            rightImageTwo.style.display = "none";
            for(const card3 of document.querySelectorAll(".section_3")){
              card3.classList.remove("hidden");
            };
          });
          rightImageTwo.addEventListener("click", () => {
            leftImageTwo.style.display = "none";
            rightImageTwo.style.display = "none";
            for(const card4 of document.querySelectorAll(".section_4")){
              card4.classList.remove("hidden");
            };
          });
        };
      });
    };
  };
  window.addEventListener("load", changeImage);
};

