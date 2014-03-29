function revslider_showDoubleJqueryError(e){var t="Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";t+="<br> This includes make eliminates the revolution slider libraries, and make it not work.",t+="<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.",t+="<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.",t="<span style='font-size:16px;color:#BC0C06;'>"+t+"</span>",jQuery(e).show().html(t)}!function(e){function t(e){if(e in o.style)return e;var t=["Moz","Webkit","O","ms"],n=e.charAt(0).toUpperCase()+e.substr(1);if(e in o.style)return e;for(e=0;e<t.length;++e){var i=t[e]+n;if(i in o.style)return i}}function n(e){return"string"==typeof e&&this.parse(e),this}function i(t,n,i,r){var a=[];e.each(t,function(t){t=e.camelCase(t),t=e.transit.propertyMap[t]||e.cssProps[t]||t,t=t.replace(/([A-Z])/g,function(e){return"-"+e.toLowerCase()}),-1===e.inArray(t,a)&&a.push(t)}),e.cssEase[i]&&(i=e.cssEase[i]);var o=""+s(n)+" "+i;0<parseInt(r,10)&&(o+=" "+s(r));var u=[];return e.each(a,function(e,t){u.push(t+" "+o)}),u.join(", ")}function r(t,n){n||(e.cssNumber[t]=!0),e.transit.propertyMap[t]=u.transform,e.cssHooks[t]={get:function(n){return e(n).css("transit:transform").get(t)},set:function(n,i){var r=e(n).css("transit:transform");r.setFromString(t,i),e(n).css({"transit:transform":r})}}}function a(e,t){return"string"!=typeof e||e.match(/^[\-0-9\.]+$/)?""+e+t:e}function s(t){return e.fx.speeds[t]&&(t=e.fx.speeds[t]),a(t,"ms")}e.transit={version:"0.9.9",propertyMap:{marginLeft:"margin",marginRight:"margin",marginBottom:"margin",marginTop:"margin",paddingLeft:"padding",paddingRight:"padding",paddingBottom:"padding",paddingTop:"padding"},enabled:!0,useTransitionEnd:!1};var o=document.createElement("div"),u={},c=-1<navigator.userAgent.toLowerCase().indexOf("chrome");u.transition=t("transition"),u.transitionDelay=t("transitionDelay"),u.transform=t("transform"),u.transformOrigin=t("transformOrigin"),o.style[u.transform]="",o.style[u.transform]="rotateY(90deg)",u.transform3d=""!==o.style[u.transform];var l,f=u.transitionEnd={transition:"transitionend",MozTransition:"transitionend",OTransition:"oTransitionEnd",WebkitTransition:"webkitTransitionEnd",msTransition:"MSTransitionEnd"}[u.transition]||null;for(l in u)u.hasOwnProperty(l)&&"undefined"==typeof e.support[l]&&(e.support[l]=u[l]);o=null,e.cssEase={_default:"ease","in":"ease-in",out:"ease-out","in-out":"ease-in-out",snap:"cubic-bezier(0,1,.5,1)",easeOutCubic:"cubic-bezier(.215,.61,.355,1)",easeInOutCubic:"cubic-bezier(.645,.045,.355,1)",easeInCirc:"cubic-bezier(.6,.04,.98,.335)",easeOutCirc:"cubic-bezier(.075,.82,.165,1)",easeInOutCirc:"cubic-bezier(.785,.135,.15,.86)",easeInExpo:"cubic-bezier(.95,.05,.795,.035)",easeOutExpo:"cubic-bezier(.19,1,.22,1)",easeInOutExpo:"cubic-bezier(1,0,0,1)",easeInQuad:"cubic-bezier(.55,.085,.68,.53)",easeOutQuad:"cubic-bezier(.25,.46,.45,.94)",easeInOutQuad:"cubic-bezier(.455,.03,.515,.955)",easeInQuart:"cubic-bezier(.895,.03,.685,.22)",easeOutQuart:"cubic-bezier(.165,.84,.44,1)",easeInOutQuart:"cubic-bezier(.77,0,.175,1)",easeInQuint:"cubic-bezier(.755,.05,.855,.06)",easeOutQuint:"cubic-bezier(.23,1,.32,1)",easeInOutQuint:"cubic-bezier(.86,0,.07,1)",easeInSine:"cubic-bezier(.47,0,.745,.715)",easeOutSine:"cubic-bezier(.39,.575,.565,1)",easeInOutSine:"cubic-bezier(.445,.05,.55,.95)",easeInBack:"cubic-bezier(.6,-.28,.735,.045)",easeOutBack:"cubic-bezier(.175, .885,.32,1.275)",easeInOutBack:"cubic-bezier(.68,-.55,.265,1.55)"},e.cssHooks["transit:transform"]={get:function(t){return e(t).data("transform")||new n},set:function(t,i){var r=i;r instanceof n||(r=new n(r)),t.style[u.transform]="WebkitTransform"!==u.transform||c?r.toString():r.toString(!0),e(t).data("transform",r)}},e.cssHooks.transform={set:e.cssHooks["transit:transform"].set},"1.8">e.fn.jquery&&(e.cssHooks.transformOrigin={get:function(e){return e.style[u.transformOrigin]},set:function(e,t){e.style[u.transformOrigin]=t}},e.cssHooks.transition={get:function(e){return e.style[u.transition]},set:function(e,t){e.style[u.transition]=t}}),r("scale"),r("translate"),r("rotate"),r("rotateX"),r("rotateY"),r("rotate3d"),r("perspective"),r("skewX"),r("skewY"),r("x",!0),r("y",!0),n.prototype={setFromString:function(e,t){var i="string"==typeof t?t.split(","):t.constructor===Array?t:[t];i.unshift(e),n.prototype.set.apply(this,i)},set:function(e){var t=Array.prototype.slice.apply(arguments,[1]);this.setter[e]?this.setter[e].apply(this,t):this[e]=t.join(",")},get:function(e){return this.getter[e]?this.getter[e].apply(this):this[e]||0},setter:{rotate:function(e){this.rotate=a(e,"deg")},rotateX:function(e){this.rotateX=a(e,"deg")},rotateY:function(e){this.rotateY=a(e,"deg")},scale:function(e,t){void 0===t&&(t=e),this.scale=e+","+t},skewX:function(e){this.skewX=a(e,"deg")},skewY:function(e){this.skewY=a(e,"deg")},perspective:function(e){this.perspective=a(e,"px")},x:function(e){this.set("translate",e,null)},y:function(e){this.set("translate",null,e)},translate:function(e,t){void 0===this._translateX&&(this._translateX=0),void 0===this._translateY&&(this._translateY=0),null!==e&&void 0!==e&&(this._translateX=a(e,"px")),null!==t&&void 0!==t&&(this._translateY=a(t,"px")),this.translate=this._translateX+","+this._translateY}},getter:{x:function(){return this._translateX||0},y:function(){return this._translateY||0},scale:function(){var e=(this.scale||"1,1").split(",");return e[0]&&(e[0]=parseFloat(e[0])),e[1]&&(e[1]=parseFloat(e[1])),e[0]===e[1]?e[0]:e},rotate3d:function(){for(var e=(this.rotate3d||"0,0,0,0deg").split(","),t=0;3>=t;++t)e[t]&&(e[t]=parseFloat(e[t]));return e[3]&&(e[3]=a(e[3],"deg")),e}},parse:function(e){var t=this;e.replace(/([a-zA-Z0-9]+)\((.*?)\)/g,function(e,n,i){t.setFromString(n,i)})},toString:function(e){var t,n=[];for(t in this)this.hasOwnProperty(t)&&(u.transform3d||"rotateX"!==t&&"rotateY"!==t&&"perspective"!==t&&"transformOrigin"!==t)&&"_"!==t[0]&&n.push(e&&"scale"===t?t+"3d("+this[t]+",1)":e&&"translate"===t?t+"3d("+this[t]+",0)":t+"("+this[t]+")");return n.join(" ")}},e.fn.transition=e.fn.transit=function(t,n,r,a){var o=this,c=0,l=!0;"function"==typeof n&&(a=n,n=void 0),"function"==typeof r&&(a=r,r=void 0),"undefined"!=typeof t.easing&&(r=t.easing,delete t.easing),"undefined"!=typeof t.duration&&(n=t.duration,delete t.duration),"undefined"!=typeof t.complete&&(a=t.complete,delete t.complete),"undefined"!=typeof t.queue&&(l=t.queue,delete t.queue),"undefined"!=typeof t.delay&&(c=t.delay,delete t.delay),"undefined"==typeof n&&(n=e.fx.speeds._default),"undefined"==typeof r&&(r=e.cssEase._default),n=s(n);var d=i(t,n,r,c),p=e.transit.enabled&&u.transition?parseInt(n,10)+parseInt(c,10):0;if(0===p)return n=l,r=function(e){o.css(t),a&&a.apply(o),e&&e()},!0===n?o.queue(r):n?o.queue(n,r):r(),o;var h={};return n=l,r=function(n){var i=0;"MozTransition"===u.transition&&25>i&&(i=25),window.setTimeout(function(){var i=!1,r=function(){i&&o.unbind(f,r),p>0&&o.each(function(){this.style[u.transition]=h[this]||null}),"function"==typeof a&&a.apply(o),"function"==typeof n&&n()};p>0&&f&&e.transit.useTransitionEnd?(i=!0,o.bind(f,r)):window.setTimeout(r,p),o.each(function(){p>0&&(this.style[u.transition]=d),e(this).css(t)})},i)},!0===n?o.queue(r):n?o.queue(n,r):r(),this},e.transit.getTransitionValue=i}(jQuery),function(e){jQuery.easing.jswing=jQuery.easing.swing,jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,t,n,i,r){return jQuery.easing[jQuery.easing.def](e,t,n,i,r)},easeInQuad:function(e,t,n,i,r){return i*(t/=r)*t+n},easeOutQuad:function(e,t,n,i,r){return-i*(t/=r)*(t-2)+n},easeInOutQuad:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t+n:-i/2*(--t*(t-2)-1)+n},easeInCubic:function(e,t,n,i,r){return i*(t/=r)*t*t+n},easeOutCubic:function(e,t,n,i,r){return i*((t=t/r-1)*t*t+1)+n},easeInOutCubic:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t+n:i/2*((t-=2)*t*t+2)+n},easeInQuart:function(e,t,n,i,r){return i*(t/=r)*t*t*t+n},easeOutQuart:function(e,t,n,i,r){return-i*((t=t/r-1)*t*t*t-1)+n},easeInOutQuart:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t*t+n:-i/2*((t-=2)*t*t*t-2)+n},easeInQuint:function(e,t,n,i,r){return i*(t/=r)*t*t*t*t+n},easeOutQuint:function(e,t,n,i,r){return i*((t=t/r-1)*t*t*t*t+1)+n},easeInOutQuint:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t*t*t+n:i/2*((t-=2)*t*t*t*t+2)+n},easeInSine:function(e,t,n,i,r){return-i*Math.cos(t/r*(Math.PI/2))+i+n},easeOutSine:function(e,t,n,i,r){return i*Math.sin(t/r*(Math.PI/2))+n},easeInOutSine:function(e,t,n,i,r){return-i/2*(Math.cos(Math.PI*t/r)-1)+n},easeInExpo:function(e,t,n,i,r){return 0==t?n:i*Math.pow(2,10*(t/r-1))+n},easeOutExpo:function(e,t,n,i,r){return t==r?n+i:i*(-Math.pow(2,-10*t/r)+1)+n},easeInOutExpo:function(e,t,n,i,r){return 0==t?n:t==r?n+i:(t/=r/2)<1?i/2*Math.pow(2,10*(t-1))+n:i/2*(-Math.pow(2,-10*--t)+2)+n},easeInCirc:function(e,t,n,i,r){return-i*(Math.sqrt(1-(t/=r)*t)-1)+n},easeOutCirc:function(e,t,n,i,r){return i*Math.sqrt(1-(t=t/r-1)*t)+n},easeInOutCirc:function(e,t,n,i,r){return(t/=r/2)<1?-i/2*(Math.sqrt(1-t*t)-1)+n:i/2*(Math.sqrt(1-(t-=2)*t)+1)+n},easeInElastic:function(e,t,n,i,r){var a=1.70158,s=0,o=i;if(0==t)return n;if(1==(t/=r))return n+i;if(s||(s=.3*r),o<Math.abs(i)){o=i;var a=s/4}else var a=s/(2*Math.PI)*Math.asin(i/o);return-(o*Math.pow(2,10*(t-=1))*Math.sin(2*(t*r-a)*Math.PI/s))+n},easeOutElastic:function(e,t,n,i,r){var a=1.70158,s=0,o=i;if(0==t)return n;if(1==(t/=r))return n+i;if(s||(s=.3*r),o<Math.abs(i)){o=i;var a=s/4}else var a=s/(2*Math.PI)*Math.asin(i/o);return o*Math.pow(2,-10*t)*Math.sin(2*(t*r-a)*Math.PI/s)+i+n},easeInOutElastic:function(e,t,n,i,r){var a=1.70158,s=0,o=i;if(0==t)return n;if(2==(t/=r/2))return n+i;if(s||(s=.3*r*1.5),o<Math.abs(i)){o=i;var a=s/4}else var a=s/(2*Math.PI)*Math.asin(i/o);return 1>t?-.5*o*Math.pow(2,10*(t-=1))*Math.sin(2*(t*r-a)*Math.PI/s)+n:o*Math.pow(2,-10*(t-=1))*Math.sin(2*(t*r-a)*Math.PI/s)*.5+i+n},easeInBack:function(e,t,n,i,r,a){return void 0==a&&(a=1.70158),i*(t/=r)*t*((a+1)*t-a)+n},easeOutBack:function(e,t,n,i,r,a){return void 0==a&&(a=1.70158),i*((t=t/r-1)*t*((a+1)*t+a)+1)+n},easeInOutBack:function(e,t,n,i,r,a){return void 0==a&&(a=1.70158),(t/=r/2)<1?i/2*t*t*(((a*=1.525)+1)*t-a)+n:i/2*((t-=2)*t*(((a*=1.525)+1)*t+a)+2)+n},easeInBounce:function(e,t,n,i,r){return i-jQuery.easing.easeOutBounce(e,r-t,0,i,r)+n},easeOutBounce:function(e,t,n,i,r){return(t/=r)<1/2.75?7.5625*i*t*t+n:2/2.75>t?i*(7.5625*(t-=1.5/2.75)*t+.75)+n:2.5/2.75>t?i*(7.5625*(t-=2.25/2.75)*t+.9375)+n:i*(7.5625*(t-=2.625/2.75)*t+.984375)+n},easeInOutBounce:function(e,t,n,i,r){return r/2>t?.5*jQuery.easing.easeInBounce(e,2*t,0,i,r)+n:.5*jQuery.easing.easeOutBounce(e,2*t-r,0,i,r)+.5*i+n}}),e.waitForImages={hasImageProperties:["backgroundImage","listStyleImage","borderImage","borderCornerImage"]},e.expr[":"].uncached=function(t){var n=document.createElement("img");return n.src=t.src,e(t).is('img[src!=""]')&&!n.complete},e.fn.waitForImages=function(t,n,i){if(e.isPlainObject(arguments[0])&&(n=t.each,i=t.waitForAll,t=t.finished),t=t||e.noop,n=n||e.noop,i=!!i,!e.isFunction(t)||!e.isFunction(n))throw new TypeError("An invalid callback was supplied.");return this.each(function(){var r=e(this),a=[];if(i){var s=e.waitForImages.hasImageProperties||[],o=/url\((['"]?)(.*?)\1\)/g;r.find("*").each(function(){var t=e(this);t.is("img:uncached")&&a.push({src:t.attr("src"),element:t[0]}),e.each(s,function(e,n){var i=t.css(n);if(!i)return!0;for(var r;r=o.exec(i);)a.push({src:r[2],element:t[0]})})})}else r.find("img:uncached").each(function(){a.push({src:this.src,element:this})});var u=a.length,c=0;0==u&&t.call(r[0]),e.each(a,function(i,a){var s=new Image;e(s).bind("load error",function(e){return c++,n.call(a.element,c,u,"load"==e.type),c==u?(t.call(r[0]),!1):void 0}),s.src=a.src})})},e.fn.swipe=function(t){if(!this)return!1;var n={fingers:1,threshold:75,swipe:null,swipeLeft:null,swipeRight:null,swipeUp:null,swipeDown:null,swipeStatus:null,click:null,triggerOnTouchEnd:!0,allowPageScroll:"auto"},i="left",r="right",a="up",s="down",o="none",u="horizontal",c="vertical",l="auto",f="start",d="move",p="end",h="cancel",g="ontouchstart"in window,b=g?"touchstart":"mousedown",v=g?"touchmove":"mousemove",m=g?"touchend":"mouseup",y="touchcancel",w="start";return void 0!=t.allowPageScroll||void 0==t.swipe&&void 0==t.swipeStatus||(t.allowPageScroll=o),t&&e.extend(n,t),this.each(function(){function t(){var e=I();return 45>=e&&e>=0?i:360>=e&&e>=315?i:e>=135&&225>=e?r:e>45&&135>e?s:a}function I(){var e=j.x-C.x,t=C.y-j.y,n=Math.atan2(t,e),i=Math.round(180*n/Math.PI);return 0>i&&(i=360-Math.abs(i)),i}function O(){return Math.round(Math.sqrt(Math.pow(C.x-j.x,2)+Math.pow(C.y-j.y,2)))}function M(e,t){if(n.allowPageScroll==o)e.preventDefault();else{var f=n.allowPageScroll==l;switch(t){case i:(n.swipeLeft&&f||!f&&n.allowPageScroll!=u)&&e.preventDefault();break;case r:(n.swipeRight&&f||!f&&n.allowPageScroll!=u)&&e.preventDefault();break;case a:(n.swipeUp&&f||!f&&n.allowPageScroll!=c)&&e.preventDefault();break;case s:(n.swipeDown&&f||!f&&n.allowPageScroll!=c)&&e.preventDefault()}}}function k(e,t){if(n.swipeStatus&&n.swipeStatus.call(P,e,t,direction||null,distance||0),t==h&&(!n.click||1!=T&&g||!isNaN(distance)&&0!=distance||n.click.call(P,e,e.target)),t==p)switch(n.swipe&&n.swipe.call(P,e,direction,distance),direction){case i:n.swipeLeft&&n.swipeLeft.call(P,e,direction,distance);break;case r:n.swipeRight&&n.swipeRight.call(P,e,direction,distance);break;case a:n.swipeUp&&n.swipeUp.call(P,e,direction,distance);break;case s:n.swipeDown&&n.swipeDown.call(P,e,direction,distance)}}function x(){T=0,j.x=0,j.y=0,C.x=0,C.y=0,q.x=0,q.y=0}function E(e){e.preventDefault(),distance=O(),direction=t(),n.triggerOnTouchEnd?(w=p,T!=n.fingers&&g||0==C.x?(w=h,k(e,w),x(e)):distance>=n.threshold?(k(e,w),x(e)):(w=h,k(e,w),x(e))):w==d&&(w=h,k(e,w),x(e)),z.removeEventListener(v,S,!1),z.removeEventListener(m,E,!1)}function S(e){if(w!=p&&w!=h){var i=g?e.touches[0]:e;C.x=i.pageX,C.y=i.pageY,direction=t(),g&&(T=e.touches.length),w=d,M(e,direction),T!=n.fingers&&g?(w=h,k(e,w),x(e)):(distance=O(),n.swipeStatus&&k(e,w,direction,distance),n.triggerOnTouchEnd||distance>=n.threshold&&(w=p,k(e,w),x(e)))}}function Q(e){var t=g?e.touches[0]:e;w=f,g&&(T=e.touches.length),distance=0,direction=null,T!=n.fingers&&g?x(e):(j.x=C.x=t.pageX,j.y=C.y=t.pageY,n.swipeStatus&&k(e,w)),z.addEventListener(v,S,!1),z.addEventListener(m,E,!1)}var z=this,P=e(this),T=0,j={x:0,y:0},C={x:0,y:0},q={x:0,y:0};try{this.addEventListener(b,Q,!1),this.addEventListener(y,x)}catch(B){}})}}(jQuery);