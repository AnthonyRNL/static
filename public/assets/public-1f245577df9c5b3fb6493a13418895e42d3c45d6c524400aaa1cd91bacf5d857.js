$(document).ready(initialize());

function initialize() {
	SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})

	window.onload = function () {

//				window.setTimeout(function(){
//					$('target').scPlayer();
//				}, 2000)
				
		if (mediaNum === "1") {
			$target = document.getElementById('target')
			var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
			console.log(url)
			SC.oEmbed(urlWanted, {auto_play: false, height: 400, iframe: true}, document.getElementById('target'));
			
		} else if (mediaNum === "2") {
			var urlWanted = url || "https://youtu.be/a1Y73sPHKxw"
			$target = document.getElementById('target')
			embedurl = url.toString().replace('watch?v=', 'embed/')
			$('<iframe id="media-player" maxheight="200" src="' + embedurl + '" frameborder="0" allowfullscreen></iframe>').appendTo(target)
			console.log($target)
		}
	}
}
;
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

