%alimento(NOMBRE,KCALxPorcion)
alimento(vagon1,140).
alimento(vagon2,35).
alimento(vagon3,40).
alimento(vagon4,165).
alimento(vagon5,135).
alimento(vagon6,45).
alimento(vagon7,60).

alimento(Alimento,Kcal):-pertenece_a(Familia,Alimento),alimento(Familia,Kcal).

kilocal(Alimento,Cantidad,Medida,Kcal):-porcion(Alimento,Medida,Cantidad,Porcion),alimento(Alimento,Kporc),Kcal is (Porcion)*Kporc.

%porcion(Alimento,Medida,Cantidad,Porcion)
%jalea-(Jalea de Frutas,Mermelada...)
porcion(leguminosas_secas,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(arroz_blanco,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(cereal_desayuno,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(espaguetis,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(papa_pastusa,unidades_med,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(papa_criolla,unidades,Cantidad,Porcion):- Porcion is (Cantidad/3).
porcion(yuca_blanca,trozo,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(lechuga,pocillos,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(habichuela,pocillos,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(espinaca,pocillos,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(apio_tallo,pocillos,Cantidad,Porcion):- Porcion is (Cantidad).

porcion(lomo_cerdo,onzas,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(pollo,onzas,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(res,onzas,Cantidad,Porcion):- Porcion is (Cantidad/1.5).
porcion(mojarra,onzas,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(huevo,unidades,Cantidad,Porcion):- Porcion is (Cantidad).

porcion(leche_vaca,pocillos,Cantidad,Porcion):-Porcion is (Cantidad*(4/3)).
porcion(queso_campesino,onzas,Cantidad,Porcion):- Porcion is (Cantidad*2).

porcion(jalea,cucharada,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(panelitas,unidades,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(gelatina,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).

porcion(aceite_de_ajonjolí,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(aceite_de_canola,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(aceitunas,unidades,Cantidad,Porcion):-Porcion is (Cantidad/10).
porcion(aceite_de_palma,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(mantequilla,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).

porcion(aguacate,unidades_med,Cantidad,Porcion):-Porcion is (Cantidad*4).
porcion(guayaba,unidades_peq,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(kiwi,unidades_peq,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(jugo_limon,pocillos,Cantidad,Porcion):- Porcion is (Cantidad*2).
porcion(mandarina,unidades_med,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(mango,unidades_med,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(manzana,unidades_med,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(jugo_maracuya,onzas,Cantidad,Porcion):- Porcion is (Cantidad/3).
porcion(mora,pocillos,Cantidad,Porcion):- Porcion is (Cantidad*2).

porcion(Alimento,Medida,Cantidad,Porcion):-pertenece_a(Familia,Alimento),porcion(Familia,Medida,Cantidad,Porcion).

medida(leguminosas_secas,pocillos).
medida(arroz_blanco,pocillos).
medida(cereal_desayuno,pocillos).
medida(espaguetis,pocillos).
medida(papa_pastusa,unidades_med).
medida(papa_criolla,unidades).
medida(yuca_blanca,trozo).
medida(jalea,cucharada).
medida(panelitas,unidades).
medida(gelatina,pocillos).
medida(aceite_de_ajonjolí,curachadita).
medida(aceite_de_canola,curachadita).
medida(aceitunas,unidades).
medida(aceite_de_palma,curachadita).
medida(mantequilla,curachadita).
medida(aguacate,unidades_med).
medida(guayaba,unidades_peq).
medida(kiwi,unidades_peq).
medida(jugo_limon,pocillos).
medida(mandarina,unidades_med).
medida(mango,unidades_med).
medida(manzana,unidades_med).
medida(jugo_maracuya,onzas).
medida(mora,pocillos).
medida(lomo_cerdo,onzas).
medida(pollo,onzas).
medida(res,onzas).
medida(mojarra,onzas).
medida(huevo,unidades).
medida(leche_vaca,pocillos).
medida(queso_campesino,onzas).
medida(lechuga,pocillos).
medida(habichuela,pocillos).
medida(espinaca,pocillos).
medida(apio_tallo,pocillos).


%pertenece_a(Familia,Alimento).
pertenece_a(vagon1,cereales).
pertenece_a(vagon1,raices).
pertenece_a(vagon1,tuberculos).
pertenece_a(vagon1,platanos).
pertenece_a(vagon2,hortalizas).
pertenece_a(vagon2,verduras).
pertenece_a(vagon2,leguminosas_verdes).
pertenece_a(vagon3,frutas).
pertenece_a(vagon4,carnes).
pertenece_a(vagon4,huevos).
pertenece_a(vagon4,leguminosas_secas).
pertenece_a(vagon4,mezclas_vegetales).
pertenece_a(vagon5,lacteos).
pertenece_a(vagon6,grasas).
pertenece_a(vagon7,dulces).

pertenece_a(leguminosas_secas,arveja).
pertenece_a(leguminosas_secas,frijol_blanco).
pertenece_a(leguminosas_secas,frijol_guandul).
pertenece_a(leguminosas_secas,garvanzo).
pertenece_a(leguminosas_secas,lenteja).
pertenece_a(cereales,arroz_blanco).
pertenece_a(cereales,cereal_desayuno).
pertenece_a(cereales,espaguetis).
pertenece_a(tuberculos,papa_pastusa).
pertenece_a(tuberculos,papa_criolla).
pertenece_a(tuberculos,yuca_blanca).
pertenece_a(frutas,guayaba).
pertenece_a(frutas,kiwi).
pertenece_a(frutas,jugo_limon).
pertenece_a(frutas,mandarina).
pertenece_a(frutas,mango).
pertenece_a(frutas,manzana).
pertenece_a(frutas,jugo_maracuya).
pertenece_a(frutas,mora).
pertenece_a(carnes,lomo_cerdo).
pertenece_a(carnes,pollo).
pertenece_a(carnes,res).
pertenece_a(carnes,mojarra).
pertenece_a(huevos,huevo).
pertenece_a(lacteos,leche_vaca).
pertenece_a(lacteos,queso_campesino).
pertenece_a(dulces,gelatina).
pertenece_a(dulces,panelitas).
pertenece_a(dulces,jalea).
pertenece_a(verduras,habichuela).
pertenece_a(verduras,lechuga).
pertenece_a(verduras,apio_tallo).
pertenece_a(verduras,espinaca).


:- dynamic alimentos/2.
alimentos([],0).

%El programa inicia 
inicia:- write('Para calcular la cantidad de kilocalorias y nutrientes que usted necesita en promedio, le solicitaré algunos datos'),nl,
		  write('Digite su edad: '),  read(Edad), nl,
		  write('Digite su altura(cms):'),  read(Altura), nl,
		  write('Digite su peso(Kgs):'),  read(Peso), nl,
		  write('Digite su sexo (m/f)'), read(Sexo),nl,
		  write('Digite su nivel de Actividad de 1 a 5 siendo: '), nl,
		  tab(4),write('1. Sedentario'), nl,
		  tab(4),write('2. Actividad Baja'), nl,
		  tab(4),write('3. Activo'), nl,
		  tab(4),write('4. Muy Activo'),
		  tab(4),write('5. Excepcional'), nl,read(Actividad),
		  assert(persona(Edad,Altura,Peso,Sexo,Actividad)),
		  ingresarDesayuno,ingresarAlmuerzo,ingresarComida,resultados.
resultados:- nl,write('La Cantidad de kilocalorias consumidas entre'),nl,
			 write('Desayuno, Almuerzo y Comida Fueron: '),alimentos(_,Kcal),
			 write(Kcal),write(' Kcal'),nl,
			 write('Por otro lado las Kcal que deben ser consumidas para reponer la Energia gastada diariamente'),nl,
			 write('según su estructura son: '),
			 persona(Edad,Talla,Peso,Sexo,AFisica),gastoEETotal(Edad,Sexo,Peso,Talla,AFisica,GEET),
			 write(GEET),write(' Kcal').
ingresarDesayuno:-write('-------------------------------------------------------------------------'),nl,
				  write('ALIMENTOS EN EL DESAYUNO'),nl,
				  tab(2),write('Digite el Alimento si lo Consumió al Desayuno: '),nl,cerealDesayuno,
				  frutas;lacteos;fin.
ingresarAlmuerzo:-write('-------------------------------------------------------------------------'),nl,
				  write('ALIMENTOS EN EL ALMUERZO'),nl,
				  tab(2),write('Digite el Alimento si lo Consumió al Almuerzo: '),nl,
				  baseCaldo,entradas;carnes;verduras;frutas;postres;fin.
fin:-nl,write('--------------------------------------------------------------------------------').
ingresarComida:-nl,write('NOTA: Se asume que la Cena corresponde a el 20% de la Alimentación'),
				alimentos(_,Kcal)
				->(retract(alimentos(Lista,Kcal)),(NKcal is (((Kcal*15)/70))+Kcal),assert(alimentos(Lista,NKcal))).

frutas:-nl, tab(2),write('Listado de Frutas:'),nl,
		    tab(4),write('- guayaba_peq'),nl,
		    tab(4),write('- kiwi'),nl,
		    tab(4),write('- jugo_limon'),nl,
		    tab(4),write('- jugo_maracuya'),nl,
		    tab(4),write('- mandarina'),nl,
		    tab(4),write('- mango'),nl,
		    tab(4),write('- manzana'),nl,
		    tab(4),write('- mora'),nl,
		    read(Fruta),medida(Fruta,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Fruta),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Fruta,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de fruta?(si/no): '),read(Respuesta),
		    ((Respuesta==si)->frutas).
cerealDesayuno:- nl, tab(2),write('Consume Cereal al Desayuno? (si/no):'),nl,read(Respuesta),
			medida(cereal_desayuno,Medida),
			((Respuesta==si)
				->tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(cereal_desayuno),write(' consumió?'),nl,
				read(Cantidad),agregarAlimento(cereal_desayuno,Cantidad,Medida) ).
lacteos:- nl, tab(2),write('Listado de Lacteos:'),nl,
		    tab(4),write('- queso_campesino'),nl,
		    tab(4),write('- leche_vaca'),nl,
		    read(Lacteo),medida(Lacteo,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Lacteo),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Lacteo,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de Lacteo?(si/no): '),read(Respuesta),
		    ((Respuesta==si)->lacteos).
sopa_cereal:-medida(arroz_blanco,Medida),agregarAlimento(arroz_blanco,0.25,Medida),
			 medida(papa_pastusa,Medida2),agregarAlimento(papa_pastusa,0.5,Medida2),nl.
crema_pollo:-medida(leche_vaca,Medida),agregarAlimento(arroz_blanco,0.5,Medida),
			 medida(pollo,Medida2),agregarAlimento(pollo,0.10,Medida2),nl.			 
baseCaldo:- nl, tab(2),write('Listado de Platos basados en Caldo:'),nl,
			tab(4),write('- sopa_lentejas'),nl,
		    tab(4),write('- sopa_pasta'),nl,
		    tab(4),write('- crema_pollo'),nl,
		    read(Caldo),((Caldo==sopa_pasta)
		    ->	sopa_cereal;((Caldo==sopa_lentejas)
		    ->	sopa_cereal;((Caldo==crema_pollo)
		    ->	crema_pollo))).
carnes:- nl, tab(2),write('Listado de Carnes y Sustitutos  (1oz = 28g):'),nl,
			tab(4),write('- lomo_cerdo'),nl,
		    tab(4),write('- pollo'),nl,
		    tab(4),write('- res'),nl,
		    tab(4),write('- mojarra'),nl,
		    read(Carne),medida(Carne,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Carne),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Carne,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de Carne o sustituto? (si/no): '),read(Respuesta),
		    ((Respuesta==si)->carnes).
verduras:- nl, tab(2),write('Listado de Verduras:'),nl,
			tab(4),write('- apio_tallo'),nl,
		    tab(4),write('- espinaca'),nl,
		    tab(4),write('- lechuga'),nl,
		    tab(4),write('- habichuela'),nl,
		    read(Verdura),medida(Verdura,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Verdura),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Verdura,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de Verdura? (si/no): '),read(Respuesta),
		    ((Respuesta==si)->verduras).
entradas:-nl, tab(2),write('Listado de Entradas:'),nl,
			tab(4),write('- arroz_blanco'),nl,
		    tab(4),write('- espaguetis'),nl,
		    tab(4),write('- papa_criolla'),nl,
		    tab(4),write('- papa_pastusa'),nl,
		    tab(4),write('- yuca_blanca'),nl,
		    read(Entrada),medida(Entrada,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Entrada),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Entrada,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de Entrada? (si/no): '),read(Respuesta),
		    ((Respuesta==si)->entradas).
postres:-nl, tab(2),write('Listado de Postres:'),nl,
			tab(4),write('- gelatina'),nl,
		    tab(4),write('- panelitas'),nl,
		    tab(4),write('- jalea'),nl,
		    read(Postre),medida(Postre,Medida),
		    tab(2),write('¿Cuantas '),write(Medida),write(' de '),write(Postre),write(' consumió?'),nl,
		    read(Cantidad),agregarAlimento(Postre,Cantidad,Medida),nl,
		    write('¿Consumió otro tipo de Postre? (si/no): '),read(Respuesta),
		    ((Respuesta==si)->postres).


agregarAlimento(Alimento,Cantidad,Medida):-(alimentos(Lista,_))
			->append([alimento(Alimento,Cantidad,Medida)],Lista,NuevaLista),
			(retract(alimentos(Lista,Kcal)),kilocal(Alimento,Cantidad,Medida,K),(NKcal is Kcal + K),assert(alimentos(NuevaLista,NKcal))).

gastoEReposo(Edad,m,Peso,Talla,GER):- GER is ((10*Peso) + (6.25*Talla) - (5*Edad) + 5 ). 
gastoEReposo(Edad,f,Peso,Talla,GER):- GER is ((10*Peso) + (6.25*Talla) - (5*Edad) -161 ). 
gastoAFisica(GER,GAF,1):- GAF is (GER*0.30).
gastoAFisica(GER,GAF,2):- GAF is (GER*0.40).
gastoAFisica(GER,GAF,3):- GAF is (GER*0.50).
gastoAFisica(GER,GAF,4):- GAF is (GER*0.65).
gastoAFisica(GER,GAF,5):- GAF is (GER*0.9). 
efectoTAlimentos(GER,GAF,ETA):- ETA is ((GER+GAF)*0.1).
gastoEETotal(Edad,Sexo,Peso,Talla,AFisica,GEET):- gastoEReposo(Edad,Sexo,Talla,Peso,GER),
										  gastoAFisica(GER,GAF,AFisica),
										  efectoTAlimentos(GER,GAF,ETA),
										  GEET is (GER + GAF + ETA). 

%calcularKcal([]):-!.
%calcularKcal([Head|Tail]):-obtenerKcal(Head,K),write(K),calcularKcal(Tail).
%calcularKcal:-alimentos([Head|Tail]),obtenerKcal(Head,K),write(K),calcularKcal(Tail).
%obtenerKcal(alimento(Alimento,Cantidad,Medida),Kcal):-
%						kilocal(Alimento,Cantidad,Medida,Kcal).

