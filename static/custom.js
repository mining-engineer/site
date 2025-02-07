// static/custom.js
$(document).ready(function() {
    // Скрытие сайдбара при загрузке
    $('body').addClass('sidebar-collapse');
    
    // Показать сайдбар при наведении
    $('.main-sidebar').hover(
      function() {
        $('body').removeClass('sidebar-collapse');
      },
      function() {
        $('body').addClass('sidebar-collapse');
      }
    );
  });