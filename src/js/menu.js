$('.btn').click((e) => {
  $('.menu').css('display', 'flex');
  $('.btn').css('display', 'none');
  $('.btn1').css('display', 'flex');
});

$('.btn1').click((e) => {
  $('.menu').css('display', 'none');
  $('.btn').css('display', 'flex');
  $('.btn1').css('display', 'none');
});
