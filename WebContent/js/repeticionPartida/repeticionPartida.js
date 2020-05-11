$(document).ready(function() {

	setTablero();

	$("#anterior").click(function() {
		setMovimientoAnterior();
	});

	$("#siguiente").click(function() {
		setMovimientoSiguiente();
	});
});

var index = -1;

var movimientosPartida;

var fichasEliminadas = [];

var tablero = [ [ 0, 2, 0, 2, 0, 2, 0, 2 ], [ 2, 0, 2, 0, 2, 0, 2, 0 ],
		[ 0, 2, 0, 2, 0, 2, 0, 2 ], [ 0, 0, 0, 0, 0, 0, 0, 0 ],
		[ 0, 0, 0, 0, 0, 0, 0, 0 ], [ 1, 0, 1, 0, 1, 0, 1, 0 ],
		[ 0, 1, 0, 1, 0, 1, 0, 1 ], [ 1, 0, 1, 0, 1, 0, 1, 0 ] ];

function cargarMovimientos(movimientos) {
	movimientosPartida = movimientos;
}

function updateContador() {
	$("#movimientos").html((index + 1) + "/" + movimientosPartida.length);
}

function setTablero() {

	var filas = $(".fila");

	var usuario = "<img class='img-fluid mx-auto mt-2 ficha usuario' src='media/damas/damaUsuario.png'>";
	var usuarioReina = "<img class='img-fluid mx-auto mt-2 ficha usuario' src='media/damas/damaReinaUsuario.png'>";

	var oponente = "<img class='img-fluid mx-auto mt-2 ficha' src='media/damas/damaOponente.png'>";
	var oponenteReina = "<img class='img-fluid mx-auto mt-2 ficha' src='media/damas/damaReinaOponente.png'>";

	for (var i = 0; i < 8; i++) {

		for (var j = 0; j < 8; j++) {

			if (tablero[i][j] === 0) {

				$(filas[i]).children().eq(j).empty();
			}

			if (tablero[i][j] === 1) {

				$(filas[i]).children().eq(j).html(usuario);
			}

			if (tablero[i][j] === 2) {

				$(filas[i]).children().eq(j).html(oponente);
			}

			if (tablero[i][j] === 13) {

				$(filas[i]).children().eq(j).html(usuarioReina);
			}

			if (tablero[i][j] === 23) {

				$(filas[i]).children().eq(j).html(oponenteReina);
			}

		}
	}
}

function setMovimientoAnterior() {

	if (index > -1) {
		makeMovimientoInvertido();
		setTablero();
		index--;
		updateContador();
	}
}

function setMovimientoSiguiente() {
	if (index < movimientosPartida.length - 1) {
		index++;
		updateContador()
		makeMovimiento();
		setTablero();
	}
}

function makeMovimiento() {

	var seleccionado = movimientosPartida[index];

	var ficha = reinarDama(tablero[seleccionado.fila_origen][seleccionado.columna_origen]);

	tablero[seleccionado.fila_origen][seleccionado.columna_origen] = 0;
	tablero[seleccionado.fila_destino][seleccionado.columna_destino] = ficha;

	eliminarFicha(seleccionado.fila_origen, seleccionado.columna_origen,
			seleccionado.fila_destino, seleccionado.columna_destino);

}

function eliminarFicha(filaOrigen, columnaOrigen, filaDestino, columnaDestino) {

	var fila = filaDestino + ((filaOrigen - filaDestino) / 2);

	var columna = columnaDestino + ((columnaOrigen - columnaDestino) / 2);
	
	console.log(tablero);

	if (tablero[fila][columna] > 0) {

		fichasEliminadas.push("[fila:'" + fila + "', columna:'" + columna+ "']");

	} else {
		fichasEliminadas.push("[]");

	}

}

function reinarDama(dama, filaLimite) {

	if (dama == 1 && filaLimite == 0) {

		return 13;

	} else if (dama == 2 && filaLimite == 7) {

		return 23;

	} else {

		return dama;
	}
}

function makeMovimientoInvertido() {

	var seleccionado = movimientosPartida[index];

	var ficha = reinarDama(tablero[seleccionado.fila_destino][seleccionado.columna_destino]);

	tablero[seleccionado.fila_destino][seleccionado.columna_destino] = 0;
	tablero[seleccionado.fila_origen][seleccionado.columna_origen] = ficha;

}

function reinarDamaInvertido(dama, filaLimite) {

	if (dama == 13 && filaLimite == 1) {

		return 1;

	} else if (dama == 23 && filaLimite == 6) {

		return 2;

	} else {

		return dama;
	}
}