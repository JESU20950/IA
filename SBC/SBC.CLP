;;;PARA EJECUTAR batch ((batch "carga.clp"))
;;;;;;;;;;;;;;;;;;;;;;;;; ONTOLOGIA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Wed Nov 27 18:13:47 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 660")

; Wed Nov 27 18:20:25 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 660")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot id_tiempo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_publico
		(type INSTANCE)
;+		(allowed-classes Publico)
;+		(inverse-slot publico_libro)
		(create-accessor read-write))
	(single-slot sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot animo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_animo)
		(create-accessor read-write))
	(single-slot libro_personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot personaje_principal_libro)
		(create-accessor read-write))
	(single-slot titulo
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot publico_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_publico)
		(create-accessor read-write))
	(multislot idioma_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_idioma)
		(create-accessor read-write))
	(single-slot subtitulo
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_publicacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(inverse-slot idioma_libro)
		(create-accessor read-write))
	(single-slot Puntuacion
;+		(comment "Puntuacion en la que se basa nuestra sistema de bases de conocimientos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot libro_personaje_secundario
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot personaje_secundario_libro)
		(create-accessor read-write))
	(single-slot id_genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot id_personaje
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot genero_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_genero)
		(create-accessor read-write))
	(multislot libro_animo
		(type INSTANCE)
;+		(allowed-classes Animo)
;+		(inverse-slot animo_libro)
		(create-accessor read-write))
	(multislot escritor_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_escritor)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_de_paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tiempo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_tiempo)
		(create-accessor read-write))
	(single-slot personaje_secundario_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot libro_personaje_secundario)
;+		(subslot-of numero_de_paginas)
		(create-accessor read-write))
	(multislot libro_escritor
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(inverse-slot escritor_libro)
		(create-accessor read-write))
	(multislot libro_dibujante
		(type INSTANCE)
;+		(allowed-classes Dibujante)
;+		(inverse-slot dibujante_libro)
		(create-accessor read-write))
	(single-slot id_persona
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot dibujante_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot libro_dibujante)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot id_publico
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Motivos
;+		(comment "motivos por el que elegimos este libro")
		(type STRING)
		(create-accessor read-write))
	(single-slot Tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot personaje_principal_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_personaje_principal)
		(create-accessor read-write))
	(single-slot anyos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_tiempo
		(type INSTANCE)
;+		(allowed-classes Tiempo)
;+		(inverse-slot tiempo_libro)
		(create-accessor read-write))
	(single-slot id_idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot id_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(inverse-slot genero_libro)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Libro "Clase generica para elaborar la recomendacion"
	(is-a USER)
	(role concrete)
	(single-slot mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_animo
		(type INSTANCE)
;+		(allowed-classes Animo)
		(create-accessor read-write))
	(multislot libro_dibujante
		(type INSTANCE)
;+		(allowed-classes Dibujante)
		(create-accessor read-write))
	(multislot libro_publico
		(type INSTANCE)
;+		(allowed-classes Publico)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Motivos
;+		(comment "motivos por el que elegimos este libro")
		(type STRING)
		(create-accessor read-write))
	(multislot libro_tiempo
		(type INSTANCE)
;+		(allowed-classes Tiempo)
		(create-accessor read-write))
	(single-slot numero_de_paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot libro_personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot subtitulo
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_publicacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
		(create-accessor read-write))
	(single-slot Puntuacion
;+		(comment "Puntuacion en la que se basa nuestra sistema de bases de conocimientos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot libro_personaje_secundario
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_escritor
		(type INSTANCE)
;+		(allowed-classes Escritor)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona "Clase generica que representa a todo tipo de persona tanto escritor como dibujante."
	(is-a USER)
	(role concrete)
	(single-slot id_persona
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dibujante
	(is-a Persona)
	(role concrete)
	(multislot dibujante_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Escritor
	(is-a Persona)
	(role concrete)
	(multislot escritor_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Idioma
	(is-a USER)
	(role concrete)
	(single-slot id_idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot idioma_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Personaje "CaracterÃ­sitcas del personaje"
	(is-a USER)
	(role concrete)
	(single-slot anyos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot id_personaje
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot personaje_principal_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot personaje_secundario_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Animo "Estado de animo"
	(is-a USER)
	(role concrete)
	(multislot animo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Publico "Publico al que va dirigido el libro"
	(is-a USER)
	(role concrete)
	(multislot publico_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_publico
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tiempo "Tiempo en el que transcurre el libro"
	(is-a USER)
	(role concrete)
	(multislot tiempo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_tiempo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(multislot genero_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

;;;;;;;;;;;;;;;;;;;;;;;;; INSTANCIAS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(definstances instances

([Ontologia_Class10095] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2011)
	(best_seller TRUE)
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 514)
	(precio 34)
	(titulo "Fifty Shades of Grey"))

([Ontologia_Class101] of  Escritor

	(escritor_libro [Ontologia_Class74])
	(id_persona "Albert Camus"))

([Ontologia_Class10116] of  Genero

	(genero_libro [Ontologia_Class92])
	(id_genero "Black novel"))

([Ontologia_Class10169] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2009)
	(best_seller TRUE)
	(libro_idioma [Ontologia_Class6])
	(numero_de_paginas 391)
	(precio 12)
	(primera_persona FALSE)
	(titulo "Catching Fire"))

([Ontologia_Class10170] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2008)
	(best_seller TRUE)
	(libro_idioma [Ontologia_Class6])
	(numero_de_paginas 438)
	(precio 19)
	(primera_persona FALSE)
	(titulo "Mockingjay"))

([Ontologia_Class10171] of  Dibujante

	(dibujante_libro [Ontologia_Class79])
	(id_persona "Brian Selznick"))

([Ontologia_Class10172] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2009)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class38]
		[Ontologia_Class36]
		[Ontologia_Class32]
		[Ontologia_Class39])
	(libro_dibujante [Ontologia_Class10174])
	(libro_escritor [Ontologia_Class10173])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class8]
		[Ontologia_Class7])
	(libro_idioma [Ontologia_Class30])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 0)
	(precio 8)
	(titulo "Shingeki no Kyojin"))

([Ontologia_Class10173] of  Escritor

	(escritor_libro [Ontologia_Class10172])
	(id_persona "Hajime Isayama"))

([Ontologia_Class10174] of  Dibujante

	(dibujante_libro [Ontologia_Class10172])
	(id_persona "Hajime Isayama"))

([Ontologia_Class102] of  Escritor

	(escritor_libro
		[Ontologia_Class67]
		[Ontologia_Class65])
	(id_persona "Stephen King"))

([Ontologia_Class103] of  Escritor

	(escritor_libro [Ontologia_Class68])
	(id_persona "John le Carre"))

([Ontologia_Class104] of  Escritor

	(escritor_libro [Ontologia_Class78])
	(id_persona "Ken Follett"))

([Ontologia_Class105] of  Escritor

	(escritor_libro [Ontologia_Class72])
	(id_persona "Nicholas Sparks"))

([Ontologia_Class106] of  Escritor

	(escritor_libro [Ontologia_Class82])
	(id_persona "Patrick Rothfuss"))

([Ontologia_Class107] of  Escritor

	(escritor_libro [Ontologia_Class71])
	(id_persona "Andy Weir"))

([Ontologia_Class11] of  Genero

	(genero_libro
		[Ontologia_Class87]
		[Ontologia_Class86]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class92])
	(id_genero "Detective novel"))

([Ontologia_Class111] of  Escritor

	(escritor_libro [Ontologia_Class92])
	(id_persona "Dashiell Hammett"))

([Ontologia_Class112] of  Escritor

	(escritor_libro [Ontologia_Class79])
	(id_persona "Brian Selznick"))

([Ontologia_Class117] of  Escritor

	(escritor_libro [Ontologia_Class87])
	(id_persona "Arthur Conan Doyle"))

([Ontologia_Class118] of  Escritor

	(escritor_libro [Ontologia_Class83])
	(id_persona "J. R. R. Tolkien"))

([Ontologia_Class119] of  Escritor

	(escritor_libro [Ontologia_Class61])
	(id_persona "Jack London"))

([Ontologia_Class12] of  Genero

	(genero_libro
		[Ontologia_Class68]
		[Ontologia_Class69])
	(id_genero "Spy novel"))

([Ontologia_Class121] of  Escritor

	(escritor_libro [Ontologia_Class91])
	(id_persona "Raymond Chandler"))

([Ontologia_Class122] of  Escritor

	(escritor_libro [Ontologia_Class88])
	(id_persona "Dennis Lehane"))

([Ontologia_Class123] of  Escritor

	(escritor_libro [Ontologia_Class64])
	(id_persona "Zane Grey"))

([Ontologia_Class125] of  Escritor

	(escritor_libro [Ontologia_Class70])
	(id_persona "George Orwell"))

([Ontologia_Class126] of  Escritor

	(escritor_libro [Ontologia_Class63])
	(id_persona "Larry McMurtry"))

([Ontologia_Class128] of  Escritor

	(id_persona "Neil Gaiman"))

([Ontologia_Class129] of  Escritor

	(escritor_libro [Ontologia_Class89])
	(id_persona "Terry Pratchett"))

([Ontologia_Class13] of  Genero

	(genero_libro
		[Ontologia_Class65]
		[Ontologia_Class67]
		[Ontologia_Class89])
	(id_genero "Horror fiction"))

([Ontologia_Class130] of  Escritor

	(escritor_libro
		[Ontologia_Class73]
		[Ontologia_Class2])
	(id_persona "E. L. James"))

([Ontologia_Class132] of  Escritor

	(escritor_libro [Ontologia_Class86])
	(id_persona "Agatha Christie"))

([Ontologia_Class134] of  Dibujante

	(dibujante_libro [Ontologia_Class81])
	(id_persona "Jim Steranko"))

([Ontologia_Class135] of  Escritor

	(escritor_libro [Ontologia_Class81])
	(id_persona "Jim Steranko"))

([Ontologia_Class14] of  Genero

	(genero_libro
		[Ontologia_Class63]
		[Ontologia_Class64])
	(id_genero "Western novel"))

([Ontologia_Class15] of  Genero

	(genero_libro
		[Ontologia_Class70]
		[Ontologia_Class86]
		[Ontologia_Class10172])
	(id_genero "Drama"))

([Ontologia_Class16] of  Genero

	(genero_libro
		[Ontologia_Class61]
		[Ontologia_Class62]
		[Ontologia_Class79])
	(id_genero "Adventure"))

([Ontologia_Class17] of  Genero

	(genero_libro
		[Ontologia_Class65]
		[Ontologia_Class67]
		[Ontologia_Class88]
		[Ontologia_Class91])
	(id_genero "Thriller"))

([Ontologia_Class18] of  Genero

	(genero_libro
		[Ontologia_Class77]
		[Ontologia_Class78]
		[Ontologia_Class81]
		[Ontologia_Class79]
		[Ontologia_Class82])
	(id_genero "Historical fiction"))

([Ontologia_Class2] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2012)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class130])
	(libro_genero [Ontologia_Class9])
	(libro_publico [Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 544)
	(precio 11)
	(titulo "Fifty Shades Darker"))

([Ontologia_Class20] of  Genero

	(genero_libro
		[Ontologia_Class81]
		[Ontologia_Class79])
	(id_genero "Graphic novel"))

([Ontologia_Class21] of  Genero

	(genero_libro
		[Ontologia_Class90]
		[Ontologia_Class89])
	(id_genero "Comedy fiction"))

([Ontologia_Class24] of  Idioma

	(id_idioma "Spanish"))

([Ontologia_Class27] of  Idioma

	(id_idioma "Italian"))

([Ontologia_Class28] of  Idioma

	(id_idioma "French"))

([Ontologia_Class29] of  Idioma

	(id_idioma "German"))

([Ontologia_Class30] of  Idioma

	(id_idioma "Japanese")
	(idioma_libro [Ontologia_Class10172]))

([Ontologia_Class31] of  Animo

	(animo_libro
		[Ontologia_Class89]
		[Ontologia_Class72])
	(id_animo "happy"))

([Ontologia_Class32] of  Animo

	(animo_libro
		[Ontologia_Class91]
		[Ontologia_Class10172])
	(id_animo "sad"))

([Ontologia_Class33] of  Animo

	(animo_libro
		[Ontologia_Class89]
		[Ontologia_Class83])
	(id_animo "funny"))

([Ontologia_Class34] of  Animo

	(animo_libro
		[Ontologia_Class86]
		[Ontologia_Class70]
		[Ontologia_Class92])
	(id_animo "serious"))

([Ontologia_Class35] of  Animo

	(animo_libro
		[Ontologia_Class61]
		[Ontologia_Class87]
		[Ontologia_Class78])
	(id_animo "expected"))

([Ontologia_Class36] of  Animo

	(animo_libro
		[Ontologia_Class64]
		[Ontologia_Class88]
		[Ontologia_Class83]
		[Ontologia_Class67]
		[Ontologia_Class71]
		[Ontologia_Class10172])
	(id_animo "unpredictable"))

([Ontologia_Class37] of  Animo

	(animo_libro [Ontologia_Class72])
	(id_animo "gentle"))

([Ontologia_Class38] of  Animo

	(animo_libro
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class63]
		[Ontologia_Class64]
		[Ontologia_Class91]
		[Ontologia_Class10172])
	(id_animo "violent"))

([Ontologia_Class39] of  Animo

	(animo_libro
		[Ontologia_Class79]
		[Ontologia_Class71]
		[Ontologia_Class10172])
	(id_animo "optimistic"))

([Ontologia_Class4] of  Escritor

	(id_persona "Suzanne Collins"))

([Ontologia_Class40] of  Animo

	(animo_libro
		[Ontologia_Class83]
		[Ontologia_Class82])
	(id_animo "bleak"))

([Ontologia_Class43] of  Tiempo

	(id_tiempo "Past")
	(tiempo_libro
		[Ontologia_Class86]
		[Ontologia_Class81]
		[Ontologia_Class63]
		[Ontologia_Class64]
		[Ontologia_Class83]
		[Ontologia_Class82]
		[Ontologia_Class10172]))

([Ontologia_Class44] of  Tiempo

	(id_tiempo "Present")
	(tiempo_libro
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class70]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class61]
		[Ontologia_Class87]
		[Ontologia_Class79]
		[Ontologia_Class92]
		[Ontologia_Class72]
		[Ontologia_Class78]))

([Ontologia_Class46] of  Tiempo

	(id_tiempo "Future")
	(tiempo_libro
		[Ontologia_Class89]
		[Ontologia_Class67]
		[Ontologia_Class71]))

([Ontologia_Class47] of  Genero

	(genero_libro
		[Ontologia_Class75]
		[Ontologia_Class74])
	(id_genero "Philosophy novel"))

([Ontologia_Class49] of  Publico

	(id_publico "Children")
	(publico_libro
		[Ontologia_Class81]
		[Ontologia_Class79]))

([Ontologia_Class5] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2008)
	(best_seller TRUE)
	(libro_idioma [Ontologia_Class6])
	(numero_de_paginas 396)
	(precio 11)
	(primera_persona FALSE)
	(titulo "The Hunger Games"))

([Ontologia_Class50] of  Publico

	(id_publico "Adolescents")
	(publico_libro
		[Ontologia_Class86]
		[Ontologia_Class89]
		[Ontologia_Class63]
		[Ontologia_Class64]
		[Ontologia_Class61]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class67]
		[Ontologia_Class92]
		[Ontologia_Class71]
		[Ontologia_Class82]
		[Ontologia_Class72]
		[Ontologia_Class78]
		[Ontologia_Class10172]))

([Ontologia_Class51] of  Publico

	(id_publico "Young people")
	(publico_libro
		[Ontologia_Class81]
		[Ontologia_Class86]
		[Ontologia_Class61]
		[Ontologia_Class83]
		[Ontologia_Class67]
		[Ontologia_Class79]
		[Ontologia_Class71]
		[Ontologia_Class10172]))

([Ontologia_Class52] of  Publico

	(id_publico "Adults")
	(publico_libro
		[Ontologia_Class2]
		[Ontologia_Class86]
		[Ontologia_Class73]
		[Ontologia_Class89]
		[Ontologia_Class63]
		[Ontologia_Class70]
		[Ontologia_Class64]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class61]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class92]
		[Ontologia_Class71]
		[Ontologia_Class82]
		[Ontologia_Class72]
		[Ontologia_Class78]
		[Ontologia_Class10172]))

([Ontologia_Class53] of  Publico

	(id_publico "Old people")
	(publico_libro
		[Ontologia_Class86]
		[Ontologia_Class63]
		[Ontologia_Class70]
		[Ontologia_Class64]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class87]
		[Ontologia_Class92]
		[Ontologia_Class82]
		[Ontologia_Class72]
		[Ontologia_Class78]))

([Ontologia_Class55] of  Animo

	(id_animo "disgusting"))

([Ontologia_Class56] of  Animo

	(animo_libro
		[Ontologia_Class81]
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class61]
		[Ontologia_Class79])
	(id_animo "beautiful"))

([Ontologia_Class6] of  Idioma

	(id_idioma "English")
	(idioma_libro
		[Ontologia_Class5]
		[Ontologia_Class10169]
		[Ontologia_Class10170]
		[Ontologia_Class67]
		[Ontologia_Class79]
		[Ontologia_Class92]
		[Ontologia_Class71]
		[Ontologia_Class82]
		[Ontologia_Class72]
		[Ontologia_Class78]))

([Ontologia_Class61] of  Libro

	(anyo_publicacion 1903)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class56])
	(libro_escritor [Ontologia_Class119])
	(libro_genero [Ontologia_Class16])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 232)
	(precio 9)
	(titulo "The Call of the Wild"))

([Ontologia_Class62] of  Libro

	(anyo_publicacion 1812)
	(libro_escritor [Ontologia_Class99])
	(libro_genero [Ontologia_Class16])
	(mundo_real FALSE)
	(numero_de_paginas 323)
	(precio 40)
	(titulo "The Swiss Family Robinson"))

([Ontologia_Class63] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1985)
	(libro_animo [Ontologia_Class38])
	(libro_escritor [Ontologia_Class126])
	(libro_genero [Ontologia_Class14])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 843)
	(precio 13)
	(titulo "Lonesome Dove"))

([Ontologia_Class64] of  Libro

	(anyo_publicacion 1912)
	(libro_animo
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class123])
	(libro_genero [Ontologia_Class14])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 335)
	(precio 23)
	(titulo "Riders of the Purple Sage"))

([Ontologia_Class65] of  Libro

	(libro_escritor [Ontologia_Class102])
	(libro_genero
		[Ontologia_Class17]
		[Ontologia_Class13])
	(numero_de_paginas 447)
	(precio 2)
	(titulo "The Shining"))

([Ontologia_Class67] of  Libro

	(anyo_publicacion 2019)
	(libro_animo [Ontologia_Class36])
	(libro_escritor [Ontologia_Class102])
	(libro_genero
		[Ontologia_Class17]
		[Ontologia_Class13])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real FALSE)
	(novela_independiente TRUE)
	(numero_de_paginas 576)
	(precio 17)
	(titulo "The institute"))

([Ontologia_Class68] of  Libro

	(anyo_publicacion 1963)
	(libro_escritor [Ontologia_Class103])
	(libro_genero [Ontologia_Class12])
	(numero_de_paginas 1)
	(precio 223)
	(titulo "The Spy Who Came in from the Cold"))

([Ontologia_Class69] of  Libro

	(anyo_publicacion 1915)
	(libro_escritor [Ontologia_Class98])
	(libro_genero [Ontologia_Class12])
	(novela_independiente FALSE)
	(numero_de_paginas 10)
	(precio 10)
	(titulo "The Thirty-Nine Steps"))

([Ontologia_Class7] of  Genero

	(genero_libro
		[Ontologia_Class83]
		[Ontologia_Class89]
		[Ontologia_Class82]
		[Ontologia_Class10172])
	(id_genero "Fantasy"))

([Ontologia_Class70] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 1949)
	(libro_animo [Ontologia_Class34])
	(libro_escritor [Ontologia_Class125])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class8])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 328)
	(precio 100)
	(primera_persona FALSE)
	(titulo "Nineteen Eighty-Four"))

([Ontologia_Class71] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2011)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class36]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class107])
	(libro_genero [Ontologia_Class8])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 369)
	(precio 11)
	(titulo "The Martian"))

([Ontologia_Class72] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1996)
	(libro_animo
		[Ontologia_Class31]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class105])
	(libro_genero [Ontologia_Class9])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 224)
	(precio 3)
	(primera_persona FALSE)
	(titulo "The Notebook"))

([Ontologia_Class73] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2012)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class130])
	(libro_genero [Ontologia_Class9])
	(libro_publico [Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 592)
	(precio 26)
	(titulo "Fifty Shades Freed"))

([Ontologia_Class74] of  Libro

	(libro_escritor [Ontologia_Class101])
	(libro_genero [Ontologia_Class47])
	(numero_de_paginas 123)
	(precio 2)
	(titulo "The Stranger"))

([Ontologia_Class75] of  Libro

	(adaptada_a_cine FALSE)
	(libro_escritor [Ontologia_Class97])
	(libro_genero [Ontologia_Class47])
	(numero_de_paginas 1883)
	(precio 21)
	(titulo "Thus Spoke Zarathustra"))

([Ontologia_Class77] of  Libro

	(libro_escritor [Ontologia_Class95])
	(libro_genero [Ontologia_Class18])
	(numero_de_paginas 672)
	(precio 10)
	(titulo "Wolf Hall"))

([Ontologia_Class78] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1989)
	(libro_animo [Ontologia_Class35])
	(libro_escritor [Ontologia_Class104])
	(libro_genero [Ontologia_Class18])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 806)
	(precio 40)
	(titulo "The Pillars of the Earth"))

([Ontologia_Class79] of  Libro

	(anyo_publicacion 2007)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class56])
	(libro_dibujante [Ontologia_Class10171])
	(libro_escritor [Ontologia_Class112])
	(libro_genero
		[Ontologia_Class18]
		[Ontologia_Class20]
		[Ontologia_Class16])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class51]
		[Ontologia_Class49])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 526)
	(precio 16)
	(titulo "The Invention of Hugo Cabret"))

([Ontologia_Class8] of  Genero

	(genero_libro
		[Ontologia_Class71]
		[Ontologia_Class70]
		[Ontologia_Class10172])
	(id_genero "Science fiction"))

([Ontologia_Class81] of  Libro

	(anyo_publicacion 1976)
	(libro_animo [Ontologia_Class56])
	(libro_dibujante [Ontologia_Class134])
	(libro_escritor [Ontologia_Class135])
	(libro_genero
		[Ontologia_Class20]
		[Ontologia_Class18])
	(libro_publico
		[Ontologia_Class49]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 146)
	(precio 60)
	(titulo "Chandler: Red Tide"))

([Ontologia_Class82] of  Libro

	(anyo_publicacion 2007)
	(libro_animo [Ontologia_Class40])
	(libro_escritor [Ontologia_Class106])
	(libro_genero
		[Ontologia_Class7]
		[Ontologia_Class18])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 662)
	(precio 10)
	(titulo "The Name of the Wind"))

([Ontologia_Class83] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1937)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class36]
		[Ontologia_Class40])
	(libro_escritor [Ontologia_Class118])
	(libro_genero [Ontologia_Class7])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente FALSE)
	(numero_de_paginas 310)
	(precio 9)
	(titulo "The Hobbit"))

([Ontologia_Class86] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1937)
	(best_seller FALSE)
	(libro_animo [Ontologia_Class34])
	(libro_escritor [Ontologia_Class132])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class11])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 288)
	(precio 9)
	(titulo "Death on the Nile"))

([Ontologia_Class87] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 1902)
	(libro_animo [Ontologia_Class35])
	(libro_escritor [Ontologia_Class117])
	(libro_genero [Ontologia_Class11])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 360)
	(precio 10)
	(titulo "The Hound of the Baskervilles"))

([Ontologia_Class88] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2003)
	(best_seller TRUE)
	(libro_animo [Ontologia_Class36])
	(libro_escritor [Ontologia_Class122])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class17])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 380)
	(precio 10)
	(titulo "Shutter Island"))

([Ontologia_Class89] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1990)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class129])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class13]
		[Ontologia_Class7])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente FALSE)
	(numero_de_paginas 288)
	(precio 9)
	(titulo "Good Omens"))

([Ontologia_Class9] of  Genero

	(genero_libro
		[Ontologia_Class72]
		[Ontologia_Class73]
		[Ontologia_Class2])
	(id_genero "Romance novel"))

([Ontologia_Class90] of  Libro

	(libro_escritor [Ontologia_Class96])
	(libro_genero [Ontologia_Class21])
	(numero_de_paginas 210)
	(precio 0)
	(titulo "Without Feathers"))

([Ontologia_Class91] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1939)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class121])
	(libro_genero
		[Ontologia_Class17]
		[Ontologia_Class11])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 277)
	(precio 11)
	(titulo "The Big Sleep"))

([Ontologia_Class92] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1930)
	(libro_animo [Ontologia_Class34])
	(libro_escritor [Ontologia_Class111])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class10116])
	(libro_idioma [Ontologia_Class6])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 0)
	(precio 9)
	(titulo "The Maltese Falcon"))

([Ontologia_Class95] of  Escritor

	(escritor_libro [Ontologia_Class77])
	(id_persona "Hilary Mantel"))

([Ontologia_Class96] of  Escritor

	(escritor_libro [Ontologia_Class90])
	(id_persona "Woody Allen"))

([Ontologia_Class97] of  Escritor

	(escritor_libro [Ontologia_Class75])
	(id_persona "Friedrich Nietzsche"))

([Ontologia_Class98] of  Escritor

	(escritor_libro [Ontologia_Class69])
	(id_persona "John Buchan"))

([Ontologia_Class99] of  Escritor

	(escritor_libro [Ontologia_Class62])
	(id_persona "Johann David Wyss"))

     
     
)

;;****************
;;* DEFFUNCTIONS *
;;****************


(deffunction imprime-todo (?v)
  (if (> (length$ ?v) 0) then
   (loop-for-count (?i 1 (length ?v)) do
	 (printout t (nth$ ?i ?v) crlf)
   )
 )
)

(deffunction ask-interval (?question)
	(printout t ?question crlf)
	(bind ?var1  (read))
	(bind ?var2  (read))
	(while   (and (or (not (integerp ?var1)) (not (integerp ?var2)))  (< ?var1 ?var2)) do
        	(bind ?var1  (read))
	        (bind ?var2  (read))
	)
	(return (create$ ?var1 ?var2))
)

(deffunction ask-number (?question)
   (printout t ?question crlf)
   (bind ?answer (read))
   (while (not (integerp ?answer)) do
      (printout t ?question crlf)
      (bind ?answer (read)))
   (return ?answer)
)

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question crlf)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question crlf)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))

(deffunction ask-multievaluated (?question ?list)
    (printout t ?question crlf)
    (loop-for-count (?i 1 (length ?list)) do
	 (printout t ?i (nth$ ?i ?list) crlf)
    )
    
    (bind ?answer2 (readline))
	(bind ?answer (explode$ ?answer2))
    
    (loop-for-count (?i 1 (length$ ?answer)) do
       (bind ?var (nth$ ?i ?answer))
       (if  (or (or (not (integerp ?var)) (> ?var (length$ ?list))) (< ?var  1)) then
            (ask-multievaluated ?question ?list)
      )
    )
	
    (bind ?result (create$))
    (loop-for-count (?i 1 (length$ ?answer)) do
        (bind ?number (nth$ ?i ?answer))
		(bind ?var (nth$ ?number ?list))
        (bind ?result (insert$ ?result ?i ?var))
    )
    (return ?result)
)

(deffunction get-all-values (?var ?slot) 
	(bind $?list (create$))
    (loop-for-count (?i 1 (length$ ?var)) do
        (bind ?x (send (nth$ ?i ?var) (sym-cat get- ?slot)))
        (bind ?list (insert$ ?list ?i  ?x))
    )
	(return ?list)
)



(deffunction increase-puntuation (?libro ?puntuation)
      (send  ?libro put-Puntuacion ( + (send ?libro get-Puntuacion) ?puntuation) )
	  (return ?libro)
)
(deffunction decrease-puntuation (?libro ?puntuation)
      (send  ?libro put-Puntuacion ( - (send ?libro get-Puntuacion) ?puntuation) )
	  (return ?libro)
)
(deffunction merge (?right ?left)
	(bind ?length_right (+ (length$ ?right) 1))
	(bind ?length_left (+ (length$ ?left) 1))
	(bind ?it 1)
	(bind ?it2 1)
	(bind ?result (create$))
	(while (and (< ?it ?length_left) (< ?it2 ?length_right)) do 
		(bind ?puntuacion1 (send (nth$ ?it ?left) get-Puntuacion))
		(bind ?puntuacion2 (send (nth$ ?it2 ?right) get-Puntuacion))
		(if (<=  ?puntuacion1 ?puntuacion2) then
			(bind ?result (insert$ ?result (+ (length$ ?result) 1)  (nth$ ?it ?left)))
			(bind ?it (+ ?it 1))
		else
			(bind ?result (insert$ ?result (+ (length$ ?result) 1)  (nth$ ?it2 ?right)))
			(bind ?it2 (+ ?it2 1))
		)
	)
	(while (< ?it ?length_left) do
		(bind ?result (insert$ ?result (+ (length$ ?result) 1)  (nth$ ?it ?left)))
			(bind ?it (+ ?it 1))
	
	
	)
	(while (< ?it2 ?length_right) do
		(bind ?result (insert$ ?result (+ (length$ ?result) 1)  (nth$ ?it2 ?right)))
			(bind ?it2 (+ ?it2 1))
	)
	(return ?result)
)

(deffunction merge_sort (?list)
	(if (< (length$ ?list) 2) then (return ?list) )
		(bind ?middle (div (length$ ?list) 2))
		
		(bind ?right (create$))
		(bind ?left (create$))
		
		(bind ?it 1)
		
		(while (<= ?it ?middle) do 
			(bind ?left (insert$ ?left (+ (length$ ?left) 1) (nth$ ?it ?list)))
			(bind ?it (+ ?it 1))
			)
		
		(while (<= ?it (length$ ?list)) do 
			(bind ?right (insert$ ?right (+ (length$ ?right) 1) (nth$ ?it ?list)))
			(bind ?it (+ ?it 1))
			)
			
		(bind ?left (merge_sort ?left))
		(bind ?right (merge_sort ?right))
		(return (merge ?right ?left))
	
)

;(sym-cat use ful ness) concatenacion de simbolos
;(str-cat "use" "ful" "ness") concatenacion de strings
;;*******************
;;* Message-handler *
;;*******************

(defmessage-handler Libro imprimir_libro()
    (printout t ?self:titulo crlf)
)

(defmessage-handler Libro imprimir ()
     (printout t "The characteristics of the book are:" crlf)
     (printout t "Title: "  ?self:titulo crlf)
     (if (neq ?self:subtitulo nil) then (printout t "Subtitle: "  ?self:subtitulo crlf))
     (printout t "Year of publication: " ?self:anyo_publicacion crlf)
     (printout t "Number of pages: "  ?self:numero_de_paginas crlf)
     (printout t "Generos: " (get-all-values ?self:libro_genero id_genero) crlf)
     (printout t "Idioma: " (get-all-values ?self:libro_idioma id_idioma) crlf)
     (printout t "Price": ?self:precio crlf)
	 (printout t "Puntuacion: " ?self:Puntuacion crlf crlf crlf crlf crlf)
     (printout t "Motivos:" crlf)
     (loop-for-count  (?i 1  (length$ ?self:Motivos)) do
     (printout t ?i ". " (nth$ ?i ?self:Motivos) crlf)
     )
)


;;;;;;;;;;;;; REGLAS DE ABSTRACCION ;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;; ABSTRACCION DE DATOS DE USURARIO
    (defrule years_old
    (declare (salience 100))
    =>
    (bind ?response (ask-number "How old are you? "))
    (assert (years ?response))
	
    )
    
	(defrule work 
	(declare (salience 99))
	(years ?var)
	(test (> ?var 14))
	=>
	(if (yes-or-no-p "Actually are you working?") then (assert (working TRUE))
	 else (assert (working TRUE)))
	)
    
    
    
    
    (defrule frequency-read
		(declare (salience 98))
		=> 
		(bind ?response (ask-number "How many hours do you read every week?"))
		(if (> ?response 9) then (assert (frequency_read high))
		else (if (< ?response 4) then (assert (frequency_read low))
		else (assert (frequency_read medium))))
	)
    
    (defrule favourite-genre
    (declare (salience 97))
    =>
    (bind ?response (ask-multievaluated "Number "  (get-all-values (find-all-instances ((?inst Genero)) TRUE) id_genero ) ))
    (assert (favourite_genre ?response))
    )
    
    (defrule user-languages
    (declare (salience 96))
    =>
    (bind ?response (ask-multievaluated "Number "  (get-all-values (find-all-instances ((?inst Idioma)) TRUE) id_idioma ) ))
    (assert (user_languages ?response))
    )


;;;;; ABSTRACCION DE LIBRO QUE BUSCA
    (defrule size-book
	(frequency_read low)
	=> 
	(bind ?response (ask-number "How many pages will the book have? (Doesn't matter -1)  "))
	(if (< ?response 400) then (assert (size_book little-book))
	else if (= ?response -1) then (assert (size_book no-care))
	else (assert (size-book long-book))
    )
    )
    
	(defrule time-book
	=>
	(bind ?response (ask-question "The story of the book will be involved in?(past,present,future, no-care)" past present future no-care))
	(if (eq ?response past) then (assert (time_book past))
	else if (eq ?response present) then (assert (time_book present))
	else if (eq ?response future) then (assert (time_book future))
	else then (assert (time_book no-care))
	)
	)
	
	(defrule level-book
	(years ?var)
	(test (> ?var 14))
	=>
	(bind ?response (ask-question "Level of the book?(easy,medium,hard, no-care)" easy medium hard no-care))
	(if (eq ?response easy) then (assert (level_book easy))
	else if (eq ?response medium) then (assert (level_book medium))
	else if (eq ?response hard) then (assert (level_book hard))
	else then (assert (level_book no-care))
	)
	)

	(defrule price-book
		(years ?var)
		(test (> ?var 14))
		=>
		(bind ?response (ask-interval "Price of the book?(give an interval of two numbers)"))
		(bind ?lowerBound (nth$ 1 ?response))
		(bind ?upperBound (nth$ 2 ?response))
		(if (< ?upperBound 10) then 
			(assert (price_book cheap))
		else
			(if (> ?lowerBound 30) then 
				(assert (price_book expensive))
			else (assert (price_book normal))
			)
		)
	)
	


;;;;;;;;;;;; REGLAS DE ASOCIACION HEURÍSITCA ;;;;;;;;;;;;;;;;
(defglobal ?*libros* = nil)

(defrule initial-solution 
	(declare (salience 1000))
	=>
	(bind ?*libros*  (find-all-instances ((?ins Libro)) TRUE))
	)

(defrule puntuation 
	(size_book little-book)
	=> 
	 (loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?puntuacion 1)
		(bind ?libro (nth$ ?i ?*libros*))
		( if (< (send ?libro get-numero_de_paginas)  400 ) then (bind ?libro (increase-puntuation ?libro ?puntuacion))
		  else (bind ?libro (decrease-puntuation ?libro ?puntuacion))
		)
		(replace$ ?*libros* ?i ?i ?libro)
	 )
)

(defrule puntuation2 
	(size_book long-book)
	=> 
	 (loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?puntuacion 1)
		(bind ?libro (nth$ ?i ?*libros*))
		( if (>= (send ?libro get-numero_de_paginas)  400 ) then (bind ?libro (increase-puntuation ?libro ?puntuacion))
		  else (bind ?libro (decrease-puntuation ?libro ?puntuacion))
		)
		(replace$ ?*libros* ?i ?i ?libro)
	 )
)

(deffunction puntuacion_multi_evaluated (?puntuacion ?response ?relacion ?identificador)
	(loop-for-count (?i 1 (length$ ?response)) do
        (bind ?unique_response (nth$ ?i ?response))

        (loop-for-count (?j 1 (length$ ?*libros*)) do
            (bind ?libro (nth$ ?j ?*libros*))
            (bind ?relacion_libro (send ?libro (sym-cat get- ?relacion)))
            
            (loop-for-count (?k 1 (length$ ?relacion_libro)) do
                (if (eq (send (nth$ ?k ?relacion_libro) (sym-cat get- ?identificador)) ?unique_response) then (bind ?libro (increase-puntuation ?libro ?puntuacion))
            )
            )
            
            (replace$ ?*libros* ?j ?j ?libro)
	   )
    )
)


(defrule puntuation3 ""
	(favourite_genre $?generos)
	=>
    (puntuacion_multi_evaluated 10 ?generos libro_genero id_genero)
)

(defrule puntuation4 "" 
    (user_languages $?response)
    =>
    (puntuacion_multi_evaluated 10 ?response libro_idioma id_idioma)
)




(defrule final_solution ""
	(declare (salience -1))
	=> 
	 (bind ?*libros* (merge_sort ?*libros*))
	 ;(loop-for-count (?i 1 (length$ ?*libros*)) do
	;	(send (nth$ ?i ?*libros*) imprimir)
	;	)
	 
    (printout t "The recommended books are:" crlf)
    (send (nth$ (- (length$ ?*libros*) 0) ?*libros*) imprimir)
	(send (nth$ (- (length$ ?*libros*) 1) ?*libros*) imprimir)
	(send (nth$ (- (length$ ?*libros*) 2) ?*libros*) imprimir)
)
	
	
