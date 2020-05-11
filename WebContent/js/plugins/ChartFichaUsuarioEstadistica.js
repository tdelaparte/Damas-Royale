function showEstadistica(estadistica) {
	
	var fecha=["Origen"];
	var partidasGanadas=["0"];
	var partidasPerdidas=["0"];
	var tablas=["0"];
	
	estadistica.forEach( function(stat, index, array) {
		fecha.push(new Date(stat.fecha).toLocaleDateString());
		partidasGanadas.push(stat.partidas_ganadas);
		partidasPerdidas.push(stat.partidas_perdidas);
		tablas.push(stat.tablas);
	});
	
	var ctx = document.getElementById('chart');
	ctx.getContext('2d');
	ctx.width  = 20;
	ctx.height = 8;
	
	new Chart(ctx, {
	    
		type: 'line',
	
	    data: {
	        labels: fecha,
	        datasets: [{
	            label: 'PARTIDAS GANADAS',
	            backgroundColor: 'rgb(255,255,255,0)',
	            borderColor: 'darkgreen',
	            data: partidasGanadas
	        }, 
	        
	        {
	            label: 'PARTIDAS PERDIDAS',
	            backgroundColor: 'rgb(255,255,255,0)',
	            borderColor: 'darkred',
	            data: partidasPerdidas
	        },
	        
	        {
	            label: 'TABLAS',
	            backgroundColor: 'rgb(255,255,255,0)',
	            borderColor: 'rgb(255, 193, 7)',
	            data: tablas
	        }]
	    },
	
	    options: {
	        legend: {
	            labels: {
	            	fontStyle: "bold",
	            }
	        }
	    }
	});
	
}