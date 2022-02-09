$(document).ready((e) => {
  let contador = 0;
  $('.prev').click((e) => {
    const slides = document.querySelector('#principal').children;
    const controller = new SlideControllerPrev(slides.length, contador);
    controller.qualSlide();
    contador = controller.contador;
    console.log(controller.contador);
  });
  $('.next').click((e) => {
    const slides = document.querySelector('#principal').children;
    const controller = new SlideController(slides.length, contador);
    controller.qualSlide();
    contador = controller.contador;
    console.log(slides);
  });
});
