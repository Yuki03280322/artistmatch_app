const images = ["https://pbs.twimg.com/media/ETy62qVUEAYv314?format=jpg&name=large", "https://image.minne.com/minne/photo/640x640cq85p/da52206a2544c39c1c7bda3338082c1d11aabe49.jpeg/minne-bucket-pro.s3-ap-northeast-1.amazonaws.com/productimages/24563678/w1600xh1600/55f350470a6c413f7fceba64b3900c3a753d2470.jpeg?1478001745", "https://www.nigaoe-orange.com/images/gallery/yumi/201811sample04.jpg", "https://2gaoe.jp/cmswp/wp-content/uploads/jsystem_nigaoe/1550389866_img1.jpg"];
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

