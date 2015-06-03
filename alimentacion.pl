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
porcion(espaguetis,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(papa_pastusa,unidades_med,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(papa_criolla,unidades,Cantidad,Porcion):- Porcion is (Cantidad/3).
porcion(yuca_blanca,trozo,Cantidad,Porcion):- Porcion is (Cantidad).
porcion(jalea,cucharada,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(panelitas,unidades,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(gelatina,pocillos,Cantidad,Porcion):-Porcion is (Cantidad/0.5).
porcion(aceite_de_ajonjolí,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(aceite_de_canola,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(aceitunas,unidades,Cantidad,Porcion):-Porcion is (Cantidad/10).
porcion(aceite_de_palma,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(mantequilla,curachadita,Cantidad,Porcion):-Porcion is (Cantidad).
porcion(aguacate,unidades_med,Cantidad,Porcion):-Porcion is (Cantidad*4).
porcion(guayaba_peq,unidades_peq,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(kiwi,unidades_peq,Cantidad,Porcion):- Porcion is (Cantidad/2).
porcion(Alimento,Medida,Cantidad,Porcion):-pertenece_a(Familia,Alimento),porcion(Familia,Medida,Cantidad,Porcion).

medida(leguminosas_secas,pocillos).
medida(arroz_blanco,pocillos).
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
medida(guayaba_peq,unidades_peq).
medida(kiwi,unidades_peq).


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
pertenece_a(cereales,espaguetis).
pertenece_a(tuberculos,papa_pastusa).
pertenece_a(tuberculos,papa_criolla).
pertenece_a(tuberculos,yuca_blanca).
pertenece_a(frutas,guayaba_peq).
pertenece_a(frutas,kiwi).
pertenece_a(frutas,jugo_limon).
pertenece_a(frutas,mandarina).
pertenece_a(frutas,mango).
pertenece_a(frutas,manzana).
pertenece_a(frutas,jugo_maracuya).
pertenece_a(frutas,mora).

:- dynamic alimentos/2.
alimentos([],0).

%preparar programa
%preparar:-alimentos(Lista),size(Lista,N),(N!=0)
%			->(retract(alimentos(_)),assert(alimentos([]))).

%El programa inicia 
inicia:- write('Para calcular la cantidad de kilocalorias y nutrientes que usted necesita en promedio, le solicitaré algunos datos'),nl,
		  write('Digite su edad: '),  read(Edad), nl,
		  write('Digite su altura(mts):'),  read(Altura), nl,
		  write('Digite su nivel de Actividad de 1 a 4 siendo: '), nl,
		  tab(4),write('1. Sedentario'), nl,
		  tab(4),write('2. Actividad Baja'), nl,
		  tab(4),write('3. Activo'), nl,
		  tab(4),write('4. Muy Activo'), nl,read(Actividad),
		  assert(persona(Edad,Altura,Actividad)),ingresarDesayuno,ingresarAlmuerzo.
ingresarDesayuno:-write('ALIMENTOS EN EL DESAYUNO'),nl,
				  tab(2),write('Digite el Alimento si lo Consumió al Desayuno: '),nl,cerealDesayuno,
				  frutas;lacteos.
ingresarAlmuerzo:-write('ALIMENTOS EN EL ALMUERZO'),nl,
				  tab(2),write('Digite el Alimento si lo Consumió al Almuerzo: '),nl,
				  baseCaldo,frutas;listing(alimentos).
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
cerealDesayuno:- nl, tab(2),write('Listado de Cereales:'),nl. 
lacteos:- nl, tab(2),write('Listado de Lacteos:'),nl.
baseCaldo:- nl, tab(2),write('Listado de Platos basados en Caldo:'),nl.
agregarAlimento(Alimento,Cantidad,Medida):-(alimentos(Lista,_))
			->append([alimento(Alimento,Cantidad,Medida)],Lista,NuevaLista),
			(retract(alimentos(Lista,Kcal)),kilocal(Alimento,Cantidad,Medida,K),(NKcal is Kcal + K),assert(alimentos(NuevaLista,NKcal))).

%calcularKcal([]):-!.
%calcularKcal([Head|Tail]):-obtenerKcal(Head,K),write(K),calcularKcal(Tail).
%calcularKcal:-alimentos([Head|Tail]),obtenerKcal(Head,K),write(K),calcularKcal(Tail).
%obtenerKcal(alimento(Alimento,Cantidad,Medida),Kcal):-
%						kilocal(Alimento,Cantidad,Medida,Kcal).

