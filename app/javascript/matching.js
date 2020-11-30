const images = ["https://pbs.twimg.com/media/ETy62qVUEAYv314?format=jpg&name=large", "https://image.minne.com/minne/photo/640x640cq85p/da52206a2544c39c1c7bda3338082c1d11aabe49.jpeg/minne-bucket-pro.s3-ap-northeast-1.amazonaws.com/productimages/24563678/w1600xh1600/55f350470a6c413f7fceba64b3900c3a753d2470.jpeg?1478001745", "https://www.nigaoe-orange.com/images/gallery/yumi/201811sample04.jpg", "https://2gaoe.jp/cmswp/wp-content/uploads/jsystem_nigaoe/1550389866_img1.jpg"]

if(document.URL.match(/matchings/)){
  function changeImage() {
    const leftImage = document.getElementById("left-image");
    leftImage.addEventListener("click", () => {
      leftImage.src = images[0];
      rightImage.src = images[1]
      console.log(leftImage.src);
      console.log(rightImage.src);
    });
    const rightImage = document.getElementById("right-image");
    rightImage.addEventListener("click", () => {
      leftImage.src = images[2]
      rightImage.src = images[3];
      console.log(leftImage.src);
      console.log(rightImage.src);
    });
  };
  window.addEventListener("load", changeImage)
};

