!function(e,n){var t=e();e.fn.dropdownHover=function(s){return t=t.add(this.parent()),this.each(function(){var a,d=e(this),i=d.parent(),r={delay:500,instantlyCloseOthers:!0},h={delay:e(this).data("delay"),instantlyCloseOthers:e(this).data("close-others")},l=e.extend(!0,{},r,s,h);i.hover(function(e){return i.hasClass("open")||d.is(e.target)?void(o&&(l.instantlyCloseOthers===!0&&t.removeClass("open"),n.clearTimeout(a),i.addClass("open"))):!0},function(){o&&(a=n.setTimeout(function(){i.removeClass("open")},l.delay))}),d.hover(function(){o&&(l.instantlyCloseOthers===!0&&t.removeClass("open"),n.clearTimeout(a),i.addClass("open"))}),i.find(".dropdown-submenu").each(function(){var t,s=e(this);s.hover(function(){o&&(n.clearTimeout(t),s.children(".dropdown-menu").show(),s.siblings().children(".dropdown-menu").hide())},function(){var e=s.children(".dropdown-menu");o?t=n.setTimeout(function(){e.hide()},l.delay):e.hide()})})})};var o=!1,s={hits:0,x:null,y:null};e(document).ready(function(){e('[data-hover="dropdown"]').dropdownHover(),e(document).mousemove(function(n){s.hits++,s.hits>20||Math.abs(n.pageX-s.x)+Math.abs(n.pageY-s.y)<4?(e(this).unbind(n),o=!0):(s.x=n.pageX,s.y=n.pageY)})});var a=".dropdown-submenu:hover>.dropdown-menu{display:none}",d=document.createElement("style");d.type="text/css",d.styleSheet?d.styleSheet.cssText=a:d.appendChild(document.createTextNode(a)),e("head")[0].appendChild(d)}(jQuery,this);