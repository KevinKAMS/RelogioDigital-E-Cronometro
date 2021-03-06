module maquinaDeEstados(clk, swState, swHor, swMin, swSec, key1, key0, key2, key3);

	input clk, swState, swHor, swMin, swSec, key1, key0, key2, key3;
	reg cntkey1, cntkey0;
	parameter[2:0] 	relogio = 3'b000, 
					configHor = 3'b001, 
					configMin = 3'b010,
					cronParado = 3'b011, 
					cronometro = 3'b100;
					
					
	reg[2:0] estado, prox_estado;
	
	always@(posedge key1)
		if(cntkey1 == 0) cntkey1 <= 1;
		else cntkey1 <= 0;
	
	always@(posedge clk)
		estado <= prox_estado;
		
	always@(estado or swHor or swMin or swSec or swState or cntkey1 or posedge key0)
		begin
			case(estado)
				relogio:
					if(swHor) prox_estado = configHor;
					else if(swMin) prox_estado = configMin;
					else if(!swState)
						begin
							if(cntkey1) prox_estado = cronometro;
							else prox_estado = cronParado; 
						end
					
				configHor:
					if(!swHor) prox_estado = relogio;
				configMin:
					if(!swMin) prox_estado = relogio;
				cronometro:
					if(swState) prox_estado = relogio;
					else if(!cntkey1) prox_estado = cronParado;
				cronParado:
					if(swState) prox_estado = relogio;
					else if(cntkey1) prox_estado = cronometro;
			endcase
		end
		
	always@(estado)
		begin
			case(estado)
				relogio:
					//Nesse estado o display deve mostrar o contador do relogio.
					//O bot�o para resetar os segundos pode ser implementado logo aqui.
				configHor:
					//Nesse estado o display continua mostrando o contador do relogio, mas agr voc� � capaz de edita-lo
				configMin:
					//Nesse estado o display continua mostrando o contador do relogio, mas agr voc� � capaz de edita-lo
				cronometro:
					//Nesse estado o display deve mostrar o contador do cronometro, ou inicializa-lo caso ainda n�o tenha
				cronParado:
					//Nesse estado o display deve mostrar o ultimo numero do cronometro ou zero caso tenha sido reiniciado
			endcase
		end
endmodule
