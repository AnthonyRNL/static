$(document).ready(initialize);
$(document).on('page:load', initialize);

function initialize() {
	SC.initialize({
		client_id: '8a1760755d85f0e6579508e64c401791'
	})


	window.onload = function () {

		//		window.setTimeout(function(){
		//			$('target').scPlayer();
		//		}, 2000)

		if (mediaNum === "1") {
			var urlWanted = url || 'https://soundcloud.com/underoath/writing-on-the-walls';
			console.log(url)
			SC.oEmbed(urlWanted, {
				auto_play: false,
				maxheight: 200,
				iframe: true
			}, document.getElementById('target'));
			$('target').scPlayer(function (url) {
				url.reload()
			})

		} else if (mediaNum === "2") {
			var urlWanted = url || "www.youtu.be/bg1sT4ILG0w"
			$target = document.getElementById('target')
			embedurl = url.toString().replace('watch?v=', 'embed/')
			$('<iframe id="media-player" height="200" src="' + embedurl + '" frameborder="0" allowfullscreen></iframe>').appendTo(target)
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

