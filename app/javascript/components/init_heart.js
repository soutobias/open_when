
const clickHeart = () => {

  const hearts = document.querySelectorAll('.heart');

  if (hearts) {
    hearts.forEach((heart) => {
      heart.addEventListener('click', function(){
        if (heart.classList.contains('.is-active')){
          heart.classList.remove('.is-active');
        } else {
          heart.classList.add('.is-active');
        }
      });
    });
  }
}

export { clickHeart };
