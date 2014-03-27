// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
<script>

function create(first,location,id)
{
  var e = document.getElementById(first);
  var strUser = e.options[e.selectedIndex].value;
  if(strUser=="a")
  {
     var selectop = document.createElement("select");
             selectop.setAttribute("class", "form-control input-lg m-bot15");
    selectop.setAttribute("id", id);
                document.getElementById(location).appendChild(selectop);
daySelect = document.getElementById(id);
daySelect.innerHTML += "<option value=Middle TN'>Middle TN</option'>";
daySelect.innerHTML += "<option value=West TN'>West TN</option'>";
daySelect.innerHTML += "<option value=East TN'>East TN</option'>";



}
        else
            {
                document.getElementById(location).innerHTML = '';
            }
}








</script>
<!--location script end-->


  <script>

      RevSlide.initRevolutionSlider();

      $(window).load(function() {
          $('[data-zlname = reverse-effect]').mateHover({
              position: 'y-reverse',
              overlayStyle: 'rolling',
              overlayBg: '#fff',
              overlayOpacity: 0.7,
              overlayEasing: 'easeOutCirc',
              rollingPosition: 'top',
              popupEasing: 'easeOutBack',
              popup2Easing: 'easeOutBack'
          });
      });

      $(window).load(function() {
          $('.flexslider').flexslider({
              animation: "slide",
              start: function(slider) {
                  $('body').removeClass('loading');
              }
          });
      });

      //    fancybox
      jQuery(".fancybox").fancybox();



  </script>
$(document).ready(function(){
  $('#menu1').slicknav();
});
