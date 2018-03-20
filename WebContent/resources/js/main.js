// The root URL for the RESTful services
//mg

var rootURL = "http://localhost:8080/ShuttleProgram/rest/shuttles";
var rootURL1 = "http://localhost:8080/ShuttleProgram/rest/missions";
var list;

var findAll= function () {
	console.log('findAll');
	$.ajax({
		type: 'GET',
		url: rootURL,
		dataType: "json", 
		success: renderList
	});
};

var renderList = function (data) {
	$.each(data, function(index, shuttle) {
		//var htmlStr='<li><a class="site" id="' + shuttle.id + '" href="#">'+shuttle.name+'</a></li>';
		var htmlStr='<li><a id="' + shuttle.id + '" href="#">'+shuttle.name+'</a></li>';
		console.log(htmlStr);
		$('#shuttleList').append(htmlStr);
	});
};

var findById = function(id){
	console.log('findById: ' + id);
	$.ajax({
		type: 'GET',
		url: rootURL + '/' + id,
		dataType: "json",
		success: function(data){
			console.log('findById success: ' + data.name);
			currentEntry = data;
			renderDetails(currentEntry);
		}
		});
	};	

function renderDetails(shuttle) {
	$('section article').remove();
	$('section .myButton').remove();
	$('section .details').remove();
	var img="resources/images/"+shuttle.image_main;
	var btnVal="Show Shuttle Missions for "+shuttle.name;
	var htmlStr='<input class="myButton" id="' + shuttle.name +'" type="button" value='+'"'+btnVal+'"'+'/>';
	htmlStr+='<article><figure><img src='+'"'+img+'"'+'/><figcaption>'+
	shuttle.img_caption+'</figcaption><p>'+shuttle.description+'</p></figure></article>';
	$('section').append(htmlStr);
}

var findByShuttleNameMissions = function(orbitor){
	console.log('findByIdMissions: ' + orbitor);
	$.ajax({
		type: 'GET',
		url: rootURL1 + '/searchshuttle/' + orbitor,
		dataType: "json",
		success: function(data){
			console.log('findByNameMissions success: ');
			currentEntry = data;
			renderMissionDetails(data, orbitor);
		}
		});
	};
	
	var findByNameMissions = function(missionName){
		$.ajax({
			type: 'GET',
			url: rootURL1 + '/searchmission/' + missionName,
			dataType: "json",
			success: function(data){
				console.log('findByNameMissions success: ');
				renderOneMissionDetail(data,missionName);
			}
			});
		};
		var renderOneMissionDetail = function (data,missionName) {
			// JAX-RS serializes an empty list as null, and a 'collection of one' as an object (not an 'array of one')
		//	list = data == null ? [] : (data instanceof Array ? data : [data]);
			$('section article').remove();
			$('section .myButton').remove();
			$('section .details').remove()
			var htmlStr='<div class="details"><h1>Search Results for '+missionName+'</h1>';
			if (data.length==0){
				htmlStr+="<p>No mission called "+missionName+" found.</p><br/>";
			}
			else{
		    var mission=data[0];
		    var img="resources/images/"+mission.name+".jpeg";
			htmlStr+='<p><img src='+'"'+img+'"'+'height="100"></p>';
			htmlStr+='<p>Orbitor: '+mission.orbitor+'</p><br/>';
			htmlStr+='<p>Launched:  '+mission.launch+'</p><br/>';
			htmlStr+='<p>Landed:  '+mission.landing+'</p><br/>';	
			}
			htmlStr+='<button class="dismissButton">Dismiss</button></div>';
			$('section').append(htmlStr);
		};
	var renderMissionDetails = function (data,orbitor) {
		// JAX-RS serializes an empty list as null, and a 'collection of one' as an object (not an 'array of one')
		list = data == null ? [] : (data instanceof Array ? data : [data]);
		$('section article').remove();
		$('section .myButton').remove();
		var htmlStr='<div class="details"><h1>Shuttle Missions for '+orbitor+'</h1>';
		if (data.length==0){
			htmlStr+="No missions found for "+orbitor;
		}
		$.each(data, function(index, mission) {
			var img="resources/images/"+mission.name+".jpeg";
			htmlStr+='<h2>Name: '+mission.name+'</h2>';
			htmlStr+='<p><img src='+'"'+img+'"'+'height="100"></p>';
			htmlStr+='<p>Launched:  '+mission.launch+'</p><br/>';
			htmlStr+='<p>Landed:  '+mission.landing+'</p><br/>';	
		});
		htmlStr+='<input type="button" class="dismissButton" value="Dismiss"/></div>';
		$('section').append(htmlStr);
	};
	var dismissMissionDetails = function () {
		$('section article').remove();
		$('section .myButton').remove();
		$('section .details').remove();
	}
//When the DOM is ready.
$(document).ready(function(){
	$(document).on("click", "#shuttleList a", function(){findById(this.id);});
	$(document).on("click", ".myButton", function(){findByShuttleNameMissions(this.id);});
	$(document).on("click", ".dismissButton", function(){dismissMissionDetails();});
	$(document).on("click", "#btnSearch", function(){findByNameMissions($("#searchKey").val());});
	$("#searchKey").val("");
	findAll();
});

