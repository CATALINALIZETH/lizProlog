cenidiabetica:-	writeln('Hola, Soy Cenidiabetica se cosas sobre princesas Disney y de la enfermedad Diabetes Gestacional, sobre que quieres saber?'),
	readln(Input),
	eliza(Input),!.
	
	eliza(Input):- Input == ['bye'],
	writeln('Nos vemos, espero haberte ayudado'), !.
	eliza(Input):- Input == ['bye', '.'],
	writeln('Nos vemos, espero haberte ayudado'), !.
	eliza(Input):- Input == ['Adios'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['Adios', '.'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['adios'],
	writeln('Nos vemos, espero haberte ayudado.'), !.
	eliza(Input):- Input == ['adios', '.'],
	writeln('Nos vemos, espero haberte ayudado.'), !.


	eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.



template([alumno, _], ['Lizeth Catalina Guzman Paz'],[]).

%Gestional - Preguntas simples señálando informacion

template([que, es, la, diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([diabetes, gestacional], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([sabes, que, es, la, diabetes, gestacional, _], ['La diabetes gestacional es una forma de diabetes que se desarrolla durante el embarazo. Afecta el control del azúcar en la sangre y generalmente desaparece después del parto. Sin embargo, las mujeres que han tenido diabetes gestacional tienen un mayor riesgo de desarrollar diabetes tipo 2 más adelante en la vida.'],[]).
template([cuales, son, los, factores, de, riesgo, de, la, diabetes, gestacional, _], ['Algunos factores de riesgo para desarrollar diabetes gestacional incluyen tener antecedentes familiares de diabetes, sobrepeso u obesidad antes del embarazo, tener más de 25 años, haber tenido diabetes gestacional en embarazos anteriores, tener un historial de bebés grandes o complicaciones durante el embarazo anterior, y pertenecer a ciertos grupos étnicos, como hispanos, afroamericanos o asiáticos. Sin embargo, cada caso es único y es importante recibir un diagnóstico y seguimiento adecuados por parte de un profesional de la salud.'], []).
template([cuales, son, los, síntomas, de, la, diabetes, gestacional, _], ['La diabetes gestacional generalmente no presenta sintomas obvios. Sin embargo, algunas mujeres pueden experimentar sed excesiva, micción frecuente, aumento del apetito, fatiga o visión borrosa. Es importante destacar que estos síntomas también pueden ser comunes durante el embarazo normal, por lo que es esencial realizar pruebas de detección para confirmar el diagnóstico de diabetes gestacional.'], []).
template([como, se, detecta, la, diabetes, gestacional, _], ['La diabetes gestacional se detecta mediante pruebas de deteccion de glucosa en sangre. La prueba más comúnmente utilizada es la prueba de tolerancia oral a la glucosa. En esta prueba, se le pedirá a la mujer embarazada que beba una solución de glucosa y se medirá el nivel de azúcar en la sangre después de cierto tiempo. Si los resultados de la prueba indican niveles de azúcar elevados, se realizarán pruebas adicionales para confirmar el diagnóstico de diabetes gestacional.'], []).
template([como, se, trata, la, diabetes, gestacional, _], ['El tratamiento de la diabetes gestacional generalmente incluye cambios en la alimentación y actividad física. Las mujeres pueden necesitar ajustar su dieta para controlar los niveles de azúcar en la sangre y realizar actividad física regularmente. En algunos casos, puede ser necesario administrar insulina para controlar los niveles de azúcar en la sangre. Además, es importante monitorear regularmente los niveles de azúcar en la sangre y realizar visitas de seguimiento con el médico. Cada caso es único, por lo que es esencial trabajar en estrecha colaboración con un equipo médico para recibir el tratamiento adecuado.'], []).
template([cuales, son, los, posibles, riesgos, de, la, diabetes, gestacional, _], ['La diabetes gestacional puede aumentar el riesgo de complicaciones tanto para la madre como para el bebé. Algunos posibles riesgos incluyen un mayor riesgo de presión arterial alta y preeclampsia, un mayor riesgo de dar a luz a un bebé grande (macrosomía), mayor riesgo de requerir una cesárea, mayor riesgo de hipoglucemia en el recién nacido y un mayor riesgo de desarrollar diabetes tipo 2 en el futuro. Es importante recibir un tratamiento adecuado y realizar un seguimiento regular con el médico para reducir estos riesgos.'], []).
	
	
	%Sintomas - gestacional
		template([si, tengo, dolor, de , s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [4]).
		template([si, tengo, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [2]).
		template([si, tengo, vision, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).
		template([si, tengo, una, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).
		template([si, tengo, s(_), es, sintoma, de, diabetes, gestacional, _], [flagSintomas], [3]).

	%Soluciones - gestacional
		template([que, debo, de, tomar, si, tengo, dolor, de, s(_), _], [flagSoluciones], [8]).
		template([tengo, dolor, de, s(_)], [flagSoluciones], [3]).
		template([tengo, una, s(_)], [flagSoluciones], [3]).
		template([tengo, s(_)], [flagSoluciones], [1]).


% templates sencillos y generales
template([Holi, mi, nombre, es, Name, '.'], ['Hola', Name, 'es', un, gusto, '?'], [4]).

template([cual, es, tu, nombre, _], ['Mi nombre es Cenidiabetica, soy una base de conocimientos con respuestas predefinidas sobre la enfermedad de diabetes gestacional y sobre las princesas de Disney'], []).
template([por, que, te, llamas, Cenidiabetica, _], ['Gracias a que mi creadora es fan de las princesas Disney y le gusta investigar sobre enfermedades de biabetes'], []).
template([que, haces, _, ahora], ['Soy un modelo de lenguaje desarrollado por OpenAI y estoy aquí para ayudarte con tus preguntas e inquietudes de Diabetes Gestacional o si tienes hablar de princesas'], []).
template([que, hace, Cenidiabetica, ahorita], ['Pensando en que princesa soy si soy una inteligencia artificial, creo que sería Penelope ya que ella es la princesa de un videojuego y fue creada por un programador al igual que yo :)'], []).
template([que, piensas, sobre, _], ['No puedo pensar por mi misma, ya que soy una IA y solo trabajo con la informacion que me esten añadiendo :c'], []).
template([de, donde, eres, _], ['Como tal soy una base de conocimientos, soy un conjunto de bits de 0 y 1 en la computadora de un estudiante, triste no?'], []).
template([que, puedes, hacer, _], ['Puedo responder algunas preguntas sobre Diabetes Gestacional, proporcionar información de princesas Disney'], []).
template([como, funciona, _, esto], ['Funciono procesando el texto de entrada que tu escribes y generando respuestas basadas en el conocimiento que mi creadora me dio.'], []).
template([cual, es, tu, hobby, _], ['Como base de conocimiento, no tengo hobbies en el sentido tradicional, pero me gusta pasar el tiempo pensando que princesa soy y si algún día encontraré a mi principe azul'], []).
template([cual, fue, la, primer, princesa, de, disney, _],['La primera pelicula de animacion estrenada por Walt Disney fue Blancanieves y los Siete Enanitos en 1937. En consecuencia, Blancanieves es considerada la primera princesa Disney.'], []).

template(_, ['No entiendo lo que quieres decir amix, puedes explicarlo de manera diferente?'], []). 



%Diabetes gestacional
	%Sintomas
		elizaSintomas(X, R) :-
			sintomas(X),
			(
				X = estomago, R = ['Sí, el dolor de estómago es un síntoma común de la diabetes gestacional.'];
				X = sed, R = ['Sí, la sed excesiva puede ser un síntoma de la diabetes gestacional.'];
				X = miccion, R = ['Sí, la micción frecuente puede ser un síntoma de la diabetes gestacional.'];
				X = hambre, R = ['Sí, la falta de hambre puede ser un síntoma de la diabetes gestacional.'];
				X = fatiga, R = ['Sí, la la fatiga puede ser un síntoma de la diabetes gestacional.'];
				X = peso, R = ['Sí, bajar de peso puede ser un síntoma de la diabetes gestacional.'];
				X = borrosa, R = ['Sí, la vision borrosa puede ser un síntoma de la diabetes gestacional.'];
				X = infeccion, R = ['Sí, una infeccion puede ser un síntoma de la diabetes gestacional.'];
				
				R = ['Sí, el dolor de', X, 'puede ser un síntoma de la diabetes gestacional.']
			).

		elizaSintomas(X, R):- \+sintomas(X), R = [al, parecer, el, sintoma, X , no, es, sintoma, de, diabetes, gestacional].

		sintomas(estomago).
		sintomas(sed).
		sintomas(miccion).
		sintomas(hambre).
		sintomas(fatiga).
		sintomas(peso).
		sintomas(borrosa).
		sintomas(infeccion).
		
% /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.





replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.



% Eliza Sintomas:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas,
    elizaSintomas(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas1,
    elizaSintomas1(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSintomas2,
    elizaSintomas2(Atom, R).


% Eliza Soluciones:
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagSoluciones,
    elizaSoluciones(Atom, R).
