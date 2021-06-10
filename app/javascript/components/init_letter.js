
const initEnvelope = () => {
  const envelopes = document.querySelectorAll('.envelope');
  const closes = document.querySelectorAll('.paper-close');
  const letters = document.querySelectorAll('.letter');
  const papers = document.querySelectorAll('.paper');



  if (envelopes) {
    let c = 0
    envelopes.forEach((envelope, idx) => {
      envelope.addEventListener('click', function(){
        if (letters[idx].classList.contains('letter--open')){
          letters[idx].classList.remove('letter--open');
          letters[idx].classList.add('letter--close');
          papers[idx].classList.add('invisible');
          setTimeout(function(){
            letters[idx].classList.remove('letter--close');
          }, 600);
        } else {
          letters[idx].classList.remove('letter--close');
          letters[idx].classList.add('letter--open');
          papers[idx].classList.add('invisible');
          papers[idx].classList.remove('invisible');
        }
      });
    });
    closes.forEach((close, idx) => {
      close.addEventListener('click', function(){   letters[idx].classList.remove('letter--open');
        letters[idx].classList.add('letter--close');
        setTimeout(function(){
          letters[idx].classList.remove('letter--close');
        }, 600);
      });
    });
  }
};

export { initEnvelope };
