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
			SC.oEmbed(urlWanted, {auto_play: false, height: 200, iframe: true}, document.getElementById('target'));
			
		} else if (mediaNum === "2") {
			var urlWanted = url || "https://youtu.be/a1Y73sPHKxw"
			$target = document.getElementById('target')
			embedurl = url.toString().replace('watch?v=', 'embed/')
			$('<iframe id="media-player" height="100%" width="100%" src="' + embedurl + '" frameborder="0" allowfullscreen></iframe>').appendTo(target)
			console.log($target)
		}
	}
}
