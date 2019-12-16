;;;PARA EJECUTAR batch ((batch "carga.clp"))
;;;;;;;;;;;;;;;;;;;;;;;;; ONTOLOGIA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Sun Dec 15 23:08:03 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")
; Sun Dec 15 23:35:36 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot id_nivel
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot nivel_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_nivel)
		(create-accessor read-write))
	(single-slot anyos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_personaje_secundario
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(inverse-slot personaje_secundario_libro)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero_de_paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(inverse-slot idioma_libro)
		(create-accessor read-write))
	(single-slot id_personaje
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Motivos
;+		(comment "motivos por el que elegimos este libro")
		(type STRING)
		(create-accessor read-write))
	(single-slot id_persona
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot subtitulo
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot idioma_original_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot libro_idioma_original)
		(create-accessor read-write))
	(single-slot id_idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot id_genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot id_tiempo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot personaje_principal_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_personaje_principal)
		(create-accessor read-write))
	(single-slot id_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_tiempo
		(type INSTANCE)
;+		(allowed-classes Tiempo)
;+		(inverse-slot tiempo_libro)
		(create-accessor read-write))
	(single-slot titulo
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_animo
		(type INSTANCE)
;+		(allowed-classes Animo)
;+		(inverse-slot animo_libro)
		(create-accessor read-write))
	(multislot libro_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(inverse-slot genero_libro)
		(create-accessor read-write))
	(multislot libro_nivel
		(type INSTANCE)
;+		(allowed-classes Nivel)
;+		(inverse-slot nivel_libro)
		(create-accessor read-write))
	(single-slot sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tiempo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_tiempo)
		(create-accessor read-write))
	(multislot escritor_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_escritor)
		(create-accessor read-write))
	(multislot animo_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_animo)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot publico_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_publico)
		(create-accessor read-write))
	(single-slot personaje_secundario_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot libro_personaje_secundario)
;+		(subslot-of numero_de_paginas)
		(create-accessor read-write))
	(single-slot Tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
;+		(comment "Puntuacion en la que se basa nuestra sistema de bases de conocimientos")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dibujante_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot libro_dibujante)
		(create-accessor read-write))
	(single-slot libro_idioma_original
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 1 1)
;+		(inverse-slot idioma_original_libro)
		(create-accessor read-write))
	(single-slot id_publico
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo_publicacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_publico
		(type INSTANCE)
;+		(allowed-classes Publico)
;+		(inverse-slot publico_libro)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(inverse-slot personaje_principal_libro)
		(create-accessor read-write))
	(multislot libro_dibujante
		(type INSTANCE)
;+		(allowed-classes Dibujante)
;+		(inverse-slot dibujante_libro)
		(create-accessor read-write))
	(multislot libro_escritor
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(inverse-slot escritor_libro)
		(create-accessor read-write))
	(multislot idioma_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_idioma)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot genero_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot libro_genero)
		(create-accessor read-write)))

(defclass Libro "Clase generica para elaborar la recomendacion"
	(is-a USER)
	(role concrete)
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_personaje_secundario
		(type INSTANCE)
;+		(allowed-classes Personaje)
		(create-accessor read-write))
	(single-slot libro_idioma_original
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot numero_de_paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
		(create-accessor read-write))
	(single-slot anyo_publicacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_tiempo
		(type INSTANCE)
;+		(allowed-classes Tiempo)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot titulo
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libro_animo
		(type INSTANCE)
;+		(allowed-classes Animo)
		(create-accessor read-write))
	(multislot libro_publico
		(type INSTANCE)
;+		(allowed-classes Publico)
		(create-accessor read-write))
	(multislot Motivos
;+		(comment "motivos por el que elegimos este libro")
		(type STRING)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
		(create-accessor read-write))
	(multislot libro_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot subtitulo
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libro_nivel
		(type INSTANCE)
;+		(allowed-classes Nivel)
		(create-accessor read-write))
	(multislot libro_dibujante
		(type INSTANCE)
;+		(allowed-classes Dibujante)
		(create-accessor read-write))
	(multislot libro_escritor
		(type INSTANCE)
;+		(allowed-classes Escritor)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
;+		(comment "Puntuacion en la que se basa nuestra sistema de bases de conocimientos")
		(type INTEGER)
		(default 0)
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

(defclass Idioma "Representa a los posibles idiomas que puede tener un libro"
	(is-a USER)
	(role concrete)
	(multislot idioma_original_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot idioma_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Personaje "Caracterísitcas del personaje"
	(is-a USER)
	(role concrete)
	(single-slot anyos
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot personaje_principal_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot id_personaje
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot personaje_secundario_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Animo "Representa a los posibles estados de animos que te puede producir un libro"
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
	(single-slot id_publico
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot publico_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
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

(defclass Genero "Representa a todos los generos literarios"
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

(defclass Nivel "Representa a todos los niveles posibles que tiene un libro"
	(is-a USER)
	(role concrete)
	(single-slot id_nivel
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot nivel_libro
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

;;;;;;;;;;;;;;;;;;;;;;;;; INSTANCIAS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(definstances instances
 ; Sun Dec 15 23:35:36 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")

([Ontologia_Class1] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2016)
	(best_seller TRUE)
	(libro_animo [Ontologia_Class33])
	(libro_escritor [Ontologia_Class10082])
	(libro_genero
		[Ontologia_Class7]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class6]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class28])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 780)
	(precio 23)
	(Puntuacion 0)
	(titulo "Gabriel's Angel"))

([Ontologia_Class10001] of  Escritor

	(escritor_libro [Ontologia_Class10042])
	(id_persona "Megan Abbott"))

([Ontologia_Class10002] of  Libro

	(anyo_publicacion 2003)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class20005])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class13]
		[Ontologia_Class17]
		[Ontologia_Class14])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 368)
	(precio 20)
	(Puntuacion 0)
	(titulo "While the Sun Shines"))

([Ontologia_Class10003] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2005)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class33])
	(libro_escritor [Ontologia_Class20105])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class18]
		[Ontologia_Class9]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico [Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 384)
	(precio 20)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Coffin Path"))

([Ontologia_Class10004] of  Libro

	(anyo_publicacion 2010)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class20111])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class15]
		[Ontologia_Class47]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real TRUE)
	(numero_de_paginas 320)
	(precio 43)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Other Side of Silence"))

([Ontologia_Class10005] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 2007)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10007])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class7])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente FALSE)
	(numero_de_paginas 544)
	(precio 23)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Mistborn: The Final Empire"))

([Ontologia_Class10006] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 2010)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class34]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10007])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class7])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real FALSE)
	(numero_de_paginas 592)
	(precio 31)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Mistborn: The Well of Ascension"))

([Ontologia_Class10007] of  Escritor

	(escritor_libro
		[Ontologia_Class10006]
		[Ontologia_Class10005]
		[Ontologia_Class10008])
	(id_persona "Brandon Sanderson"))

([Ontologia_Class10008] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 2006)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class32]
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10007])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class7])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 576)
	(precio 23)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Mistborn: The Hero of Ages"))

([Ontologia_Class10009] of  Libro

	(anyo_publicacion 2006)
	(best_seller TRUE)
	(libro_animo [Ontologia_Class40])
	(libro_escritor [Ontologia_Class20100])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class11])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(numero_de_paginas 240)
	(precio 10)
	(Puntuacion 0)
	(titulo "Seven Tales of Sex and Death"))

([Ontologia_Class10010] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2005)
	(libro_animo
		[Ontologia_Class34]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10075])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class12])
	(libro_idioma
		[Ontologia_Class24]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class24])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 340)
	(precio 21)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Buenas Noches Buenos Aires"))

([Ontologia_Class10011] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2001)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class33])
	(libro_escritor [Ontologia_Class20002])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class13]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 630)
	(precio 8)
	(Puntuacion 0)
	(titulo "The Wine of Angels"))

([Ontologia_Class10012] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2016)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class55])
	(libro_escritor [Ontologia_Class10091])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 400)
	(precio 23)
	(Puntuacion 0)
	(titulo "Just Friends"))

([Ontologia_Class10014] of  Libro

	(anyo_publicacion 2010)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class37]
		[Ontologia_Class39]
		[Ontologia_Class32]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class20004])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class11]
		[Ontologia_Class20]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(numero_de_paginas 384)
	(precio 10)
	(Puntuacion 0)
	(titulo "Where the Crawdads Sing"))

([Ontologia_Class10015] of  Libro

	(anyo_publicacion 2017)
	(best_seller TRUE)
	(libro_escritor [Ontologia_Class20003])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class17])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 384)
	(precio 15)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Then She Was Gone: A Novel"))

([Ontologia_Class10016] of  Libro

	(anyo_publicacion 2018)
	(libro_animo
		[Ontologia_Class31]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10090])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class46])
	(numero_de_paginas 299)
	(precio 14)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "It All Comes Back to You: A Book Club Recommendation!"))

([Ontologia_Class10017] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2014)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class38]
		[Ontologia_Class35])
	(libro_dibujante [Ontologia_Class10018])
	(libro_escritor [Ontologia_Class10019])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class20]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class30])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class51]
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 2400)
	(precio 90)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Death Note"))

([Ontologia_Class10018] of  Dibujante

	(dibujante_libro [Ontologia_Class10017])
	(id_persona "Takeshi Obata"))

([Ontologia_Class10019] of  Escritor

	(escritor_libro [Ontologia_Class10017])
	(id_persona "Tsugumi Ohba"))

([Ontologia_Class10025] of  Nivel

	(id_nivel "easy")
	(nivel_libro
		[Ontologia_Class10031]
		[Ontologia_Class10036]
		[Ontologia_Class10037]
		[Ontologia_Class10038]
		[Ontologia_Class10049]
		[Ontologia_Class10053]
		[Ontologia_Class10055]
		[Ontologia_Class10058]
		[Ontologia_Class10063]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10169]
		[Ontologia_Class10170]
		[Ontologia_Class10172]
		[Ontologia_Class5]
		[Ontologia_Class62]
		[Ontologia_Class72]
		[Ontologia_Class81]
		[Ontologia_Class87]
		[Ontologia_Class89]
		[Ontologia_Class92]))

([Ontologia_Class10026] of  Nivel

	(id_nivel "medium")
	(nivel_libro
		[Ontologia_Class10033]
		[Ontologia_Class10034]
		[Ontologia_Class10035]
		[Ontologia_Class10039]
		[Ontologia_Class10040]
		[Ontologia_Class10043]
		[Ontologia_Class10045]
		[Ontologia_Class10046]
		[Ontologia_Class10050]
		[Ontologia_Class10052]
		[Ontologia_Class10056]
		[Ontologia_Class10059]
		[Ontologia_Class10060]
		[Ontologia_Class10061]
		[Ontologia_Class10062]
		[Ontologia_Class10095]
		[Ontologia_Class2]
		[Ontologia_Class65]
		[Ontologia_Class67]
		[Ontologia_Class68]
		[Ontologia_Class71]
		[Ontologia_Class73]
		[Ontologia_Class74]
		[Ontologia_Class75]
		[Ontologia_Class77]
		[Ontologia_Class88]))

([Ontologia_Class10027] of  Nivel

	(id_nivel "hard")
	(nivel_libro
		[Ontologia_Class10028]
		[Ontologia_Class10030]
		[Ontologia_Class10032]
		[Ontologia_Class10041]
		[Ontologia_Class10042]
		[Ontologia_Class10044]
		[Ontologia_Class10048]
		[Ontologia_Class10051]
		[Ontologia_Class10054]
		[Ontologia_Class10064]
		[Ontologia_Class10069]
		[Ontologia_Class61]
		[Ontologia_Class63]
		[Ontologia_Class64]
		[Ontologia_Class69]
		[Ontologia_Class70]
		[Ontologia_Class78]
		[Ontologia_Class79]
		[Ontologia_Class82]
		[Ontologia_Class83]
		[Ontologia_Class86]
		[Ontologia_Class90]
		[Ontologia_Class91]))

([Ontologia_Class10028] of  Libro

	(anyo_publicacion 2016)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class35]
		[Ontologia_Class37]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class10029])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class20]
		[Ontologia_Class13]
		[Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 946)
	(precio 31)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Kingdom Of The Vanished: A Stranger"))

([Ontologia_Class10029] of  Escritor

	(escritor_libro [Ontologia_Class10028])
	(id_persona "Unknown"))

([Ontologia_Class10030] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2011)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class35]
		[Ontologia_Class37]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class20112])
	(libro_genero [Ontologia_Class10116])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 489)
	(precio 24)
	(Puntuacion 0)
	(titulo "The Painted Lady"))

([Ontologia_Class10031] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2006)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class31]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class20103])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class15]
		[Ontologia_Class20]
		[Ontologia_Class13])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 224)
	(precio 10)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Butterfly Boy"))

([Ontologia_Class10032] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2018)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class40])
	(libro_escritor [Ontologia_Class10093])
	(libro_genero
		[Ontologia_Class7]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class29]
		[Ontologia_Class28]
		[Ontologia_Class27]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 400)
	(precio 12)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Light as a Feather"))

([Ontologia_Class10033] of  Libro

	(anyo_publicacion 2017)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class10086])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class6]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 320)
	(precio 12)
	(Puntuacion 0)
	(titulo "In Love with Freedom"))

([Ontologia_Class10034] of  Libro

	(anyo_publicacion 2018)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class39]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class10065])
	(libro_genero [Ontologia_Class15])
	(libro_idioma [Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 288)
	(precio 17)
	(Puntuacion 0)
	(titulo "A Land of Permanent Goodbyes"))

([Ontologia_Class10035] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2016)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class10089])
	(libro_genero [Ontologia_Class20])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class6]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class30])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 208)
	(precio 26)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Innocent"))

([Ontologia_Class10036] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2002)
	(best_seller FALSE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class10073])
	(libro_genero
		[Ontologia_Class18]
		[Ontologia_Class15])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class28])
	(libro_idioma_original [Ontologia_Class29])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 324)
	(precio 29)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Black Sun"))

([Ontologia_Class10037] of  Libro

	(anyo_publicacion 2013)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class31]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class20114])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class18]
		[Ontologia_Class8]
		[Ontologia_Class17])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class27]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 60)
	(precio 5)
	(Puntuacion 0)
	(titulo "The Search for the Pearl Stone"))

([Ontologia_Class10038] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2004)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class33]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class20099])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class21]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class51]
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real FALSE)
	(numero_de_paginas 1203)
	(precio 90)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Scoot Pilgrim"))

([Ontologia_Class10039] of  Libro

	(anyo_publicacion 2012)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class20104])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class18]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 362)
	(precio 15)
	(Puntuacion 0)
	(titulo "Daughter of the Centaurs"))

([Ontologia_Class10040] of  Libro

	(anyo_publicacion 2004)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class32]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class20102])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class13]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 214)
	(precio 15)
	(Puntuacion 0)
	(titulo "Summer Boys"))

([Ontologia_Class10041] of  Libro

	(anyo_publicacion 2014)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class31]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class10094])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class9]
		[Ontologia_Class17])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 408)
	(precio 15)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Panic"))

([Ontologia_Class10042] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1995)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class37]
		[Ontologia_Class39]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10001])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class7]
		[Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class46])
	(numero_de_paginas 423)
	(precio 20)
	(Puntuacion 0)
	(titulo "The Street Was Mine"))

([Ontologia_Class10043] of  Libro

	(anyo_publicacion 2018)
	(libro_animo
		[Ontologia_Class32]
		[Ontologia_Class35])
	(libro_escritor [Ontologia_Class10083])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class29]
		[Ontologia_Class28]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real FALSE)
	(novela_independiente TRUE)
	(numero_de_paginas 312)
	(precio 15)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Give Me Your Hand"))

([Ontologia_Class10044] of  Libro

	(anyo_publicacion 1999)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class32]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class20006])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class15]
		[Ontologia_Class7]
		[Ontologia_Class47]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 410)
	(precio 24)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Wizard or Witch?"))

([Ontologia_Class10045] of  Libro

	(anyo_publicacion 2018)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class32]
		[Ontologia_Class36])
	(libro_escritor [Ontologia_Class20113])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class18])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 480)
	(precio 20)
	(Puntuacion 0)
	(titulo "The Reckoning"))

([Ontologia_Class10046] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 2013)
	(libro_animo
		[Ontologia_Class37]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10076])
	(libro_genero
		[Ontologia_Class8]
		[Ontologia_Class14])
	(libro_idioma
		[Ontologia_Class27]
		[Ontologia_Class24]
		[Ontologia_Class28])
	(libro_idioma_original [Ontologia_Class28])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 397)
	(precio 6)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Campside Creeps"))

([Ontologia_Class10048] of  Libro

	(anyo_publicacion 1996)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class33]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class20108])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class7]
		[Ontologia_Class20])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class49]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 283)
	(precio 15)
	(Puntuacion 0)
	(titulo "The Final Fury"))

([Ontologia_Class10049] of  Libro

	(anyo_publicacion 1989)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10092])
	(libro_genero
		[Ontologia_Class13]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class28])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real TRUE)
	(numero_de_paginas 412)
	(precio 39)
	(Puntuacion 0)
	(titulo "Kathryn: In the Court of Six Queens"))

([Ontologia_Class10050] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2015)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class20097])
	(libro_genero
		[Ontologia_Class7]
		[Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 621)
	(precio 32)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Riptide"))

([Ontologia_Class10051] of  Libro

	(anyo_publicacion 2012)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class20095])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class15])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 464)
	(precio 11)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Periodic Tales"))

([Ontologia_Class10052] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2013)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class20101])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class20]
		[Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 321)
	(precio 5)
	(Puntuacion 0)
	(titulo "Shapeshifted"))

([Ontologia_Class10053] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2000)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class39]
		[Ontologia_Class34]
		[Ontologia_Class36])
	(libro_escritor [Ontologia_Class20106])
	(libro_genero
		[Ontologia_Class10116]
		[Ontologia_Class11]
		[Ontologia_Class20]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class49])
	(libro_tiempo [Ontologia_Class46])
	(numero_de_paginas 468)
	(precio 25)
	(Puntuacion 0)
	(titulo "The Desert Crop"))

([Ontologia_Class10054] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1993)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class31]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class20110])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class18]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 736)
	(precio 30)
	(Puntuacion 0)
	(titulo "The Man Who Made Husbands Jealous"))

([Ontologia_Class10055] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1995)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class10077])
	(libro_genero
		[Ontologia_Class47]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class27]
		[Ontologia_Class6]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class49]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 166)
	(precio 10)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Daphne's Book"))

([Ontologia_Class10056] of  Libro

	(anyo_publicacion 2010)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class36])
	(libro_escritor [Ontologia_Class10085])
	(libro_genero
		[Ontologia_Class9]
		[Ontologia_Class11])
	(libro_idioma
		[Ontologia_Class29]
		[Ontologia_Class6]
		[Ontologia_Class28])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 336)
	(precio 9)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Hero of Rome"))

([Ontologia_Class10058] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2002)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class10084])
	(libro_genero
		[Ontologia_Class13]
		[Ontologia_Class15])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 320)
	(precio 13)
	(Puntuacion 0)
	(titulo "Glorious Angel"))

([Ontologia_Class10059] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2013)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class35]
		[Ontologia_Class56])
	(libro_escritor [Ontologia_Class10078])
	(libro_genero
		[Ontologia_Class14]
		[Ontologia_Class10116])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class6]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 384)
	(precio 23)
	(Puntuacion 0)
	(titulo "Darkness Bred"))

([Ontologia_Class10060] of  Libro

	(anyo_publicacion 2001)
	(best_seller FALSE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10074])
	(libro_genero
		[Ontologia_Class8]
		[Ontologia_Class11])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class24]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 180)
	(precio 33)
	(Puntuacion 0)
	(titulo "Blame It on Texas"))

([Ontologia_Class10061] of  Libro

	(anyo_publicacion 2010)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class10068])
	(libro_genero [Ontologia_Class9])
	(libro_idioma [Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 432)
	(precio 50)
	(Puntuacion 0)
	(titulo "Barely a Lady"))

([Ontologia_Class10062] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 2003)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class37]
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class20107])
	(libro_genero
		[Ontologia_Class47]
		[Ontologia_Class8]
		[Ontologia_Class17]
		[Ontologia_Class14])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real TRUE)
	(numero_de_paginas 900)
	(precio 24)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Destiny"))

([Ontologia_Class10063] of  Libro

	(anyo_publicacion 2002)
	(libro_animo
		[Ontologia_Class31]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10080])
	(libro_genero
		[Ontologia_Class18]
		[Ontologia_Class12])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class6]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(numero_de_paginas 220)
	(precio 15)
	(Puntuacion 0)
	(titulo "For the Love of Pete"))

([Ontologia_Class10064] of  Libro

	(anyo_publicacion 1991)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class10081])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class6]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 192)
	(precio 9)
	(Puntuacion 0)
	(titulo "Forbidden Passion"))

([Ontologia_Class10065] of  Escritor

	(escritor_libro [Ontologia_Class10034])
	(id_persona "Abawi Atia"))

([Ontologia_Class10067] of  Escritor

	(id_persona "Carolyne Aarsen"))

([Ontologia_Class10068] of  Escritor

	(escritor_libro
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072])
	(id_persona "Eileen Dreyer"))

([Ontologia_Class10069] of  Libro

	(anyo_publicacion 2011)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class10068])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 480)
	(precio 10)
	(Puntuacion 0)
	(titulo "Never a Gentleman"))

([Ontologia_Class10070] of  Libro

	(anyo_publicacion 2011)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class10068])
	(libro_genero [Ontologia_Class9])
	(libro_idioma [Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 432)
	(precio 5)
	(Puntuacion 0)
	(titulo "Always a Temptress"))

([Ontologia_Class10071] of  Libro

	(anyo_publicacion 2013)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class10068])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 416)
	(precio 10)
	(Puntuacion 0)
	(titulo "Once a Rake"))

([Ontologia_Class10072] of  Libro

	(anyo_publicacion 2014)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class10068])
	(libro_genero [Ontologia_Class9])
	(libro_idioma [Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 432)
	(precio 10)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Twice Tempted"))

([Ontologia_Class10073] of  Escritor

	(escritor_libro [Ontologia_Class10036])
	(id_persona "Nicholas Goodrick-Clarke"))

([Ontologia_Class10074] of  Escritor

	(escritor_libro [Ontologia_Class10060])
	(id_persona "Kristine Rolofson"))

([Ontologia_Class10075] of  Escritor

	(escritor_libro [Ontologia_Class10010])
	(id_persona "Gilbert Adair"))

([Ontologia_Class10076] of  Escritor

	(escritor_libro [Ontologia_Class10046])
	(id_persona "Vindhya Vishwanath"))

([Ontologia_Class10077] of  Escritor

	(escritor_libro [Ontologia_Class10055])
	(id_persona "Mary Downing Hahn"))

([Ontologia_Class10078] of  Escritor

	(escritor_libro [Ontologia_Class10059])
	(id_persona "Stella Cameron"))

([Ontologia_Class10080] of  Escritor

	(escritor_libro [Ontologia_Class10063])
	(id_persona "Frances Little"))

([Ontologia_Class10081] of  Escritor

	(escritor_libro [Ontologia_Class10064])
	(id_persona "Sarah Holland"))

([Ontologia_Class10082] of  Escritor

	(escritor_libro [Ontologia_Class1])
	(id_persona "Mark Radcliffe"))

([Ontologia_Class10083] of  Escritor

	(escritor_libro [Ontologia_Class10043])
	(id_persona "Megan Abbott"))

([Ontologia_Class10084] of  Escritor

	(escritor_libro [Ontologia_Class10058])
	(id_persona "Johanna Lindsey"))

([Ontologia_Class10085] of  Escritor

	(escritor_libro [Ontologia_Class10056])
	(id_persona "Douglas Jackson"))

([Ontologia_Class10086] of  Escritor

	(escritor_libro [Ontologia_Class10033])
	(id_persona "Esther Kant"))

([Ontologia_Class10089] of  Escritor

	(escritor_libro [Ontologia_Class10035])
	(id_persona "Sakamoto Shin Ichi"))

([Ontologia_Class10090] of  Escritor

	(escritor_libro [Ontologia_Class10016])
	(id_persona "Beth Duke"))

([Ontologia_Class10091] of  Escritor

	(escritor_libro [Ontologia_Class10012])
	(id_persona "Mira Lyn Kelly"))

([Ontologia_Class10092] of  Escritor

	(escritor_libro [Ontologia_Class10049])
	(id_persona "Anne Merton Abbey"))

([Ontologia_Class10093] of  Escritor

	(escritor_libro [Ontologia_Class10032])
	(id_persona "Zoe Aarsen"))

([Ontologia_Class10094] of  Escritor

	(escritor_libro [Ontologia_Class10041])
	(id_persona "Lauren Oliver"))

([Ontologia_Class10095] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2011)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class39]
		[Ontologia_Class56])
	(libro_escritor [Ontologia_Class130])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 514)
	(precio 34)
	(primera_persona FALSE)
	(Puntuacion 0)
	(titulo "Fifty Shades of Grey"))

([Ontologia_Class101] of  Escritor

	(escritor_libro [Ontologia_Class74])
	(id_persona "Albert Camus"))

([Ontologia_Class10116] of  Genero

	(genero_libro
		[Ontologia_Class92]
		[Ontologia_Class10010]
		[Ontologia_Class10059]
		[Ontologia_Class10009]
		[Ontologia_Class10031]
		[Ontologia_Class10053]
		[Ontologia_Class10028]
		[Ontologia_Class10030]
		[Ontologia_Class10045]
		[Ontologia_Class10014]
		[Ontologia_Class10015])
	(id_genero "Black novel"))

([Ontologia_Class10169] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2009)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class36]
		[Ontologia_Class55]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class4])
	(libro_genero
		[Ontologia_Class18]
		[Ontologia_Class8])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class29]
		[Ontologia_Class28]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente FALSE)
	(numero_de_paginas 391)
	(precio 12)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Catching Fire"))

([Ontologia_Class10170] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2010)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class32]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class4])
	(libro_genero
		[Ontologia_Class16]
		[Ontologia_Class7]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(numero_de_paginas 390)
	(precio 19)
	(primera_persona TRUE)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class30]
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class30])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 0)
	(precio 8)
	(Puntuacion 0)
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
		[Ontologia_Class92]
		[Ontologia_Class10060]
		[Ontologia_Class10017]
		[Ontologia_Class10056]
		[Ontologia_Class10009]
		[Ontologia_Class10039]
		[Ontologia_Class10003]
		[Ontologia_Class10053]
		[Ontologia_Class10054]
		[Ontologia_Class10042]
		[Ontologia_Class10011]
		[Ontologia_Class10014]
		[Ontologia_Class10002])
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
		[Ontologia_Class69]
		[Ontologia_Class10010]
		[Ontologia_Class10063])
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
		[Ontologia_Class89]
		[Ontologia_Class10058]
		[Ontologia_Class10049]
		[Ontologia_Class10040]
		[Ontologia_Class10031]
		[Ontologia_Class10028]
		[Ontologia_Class10011]
		[Ontologia_Class10002])
	(id_genero "Horror fiction"))

([Ontologia_Class130] of  Escritor

	(escritor_libro
		[Ontologia_Class73]
		[Ontologia_Class2]
		[Ontologia_Class10095])
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
		[Ontologia_Class64]
		[Ontologia_Class10046]
		[Ontologia_Class10059]
		[Ontologia_Class10062]
		[Ontologia_Class10002])
	(id_genero "Western novel"))

([Ontologia_Class15] of  Genero

	(genero_libro
		[Ontologia_Class86]
		[Ontologia_Class10172]
		[Ontologia_Class10034]
		[Ontologia_Class10036]
		[Ontologia_Class10058]
		[Ontologia_Class70]
		[Ontologia_Class10051]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10031]
		[Ontologia_Class10004]
		[Ontologia_Class10044])
	(id_genero "Drama"))

([Ontologia_Class16] of  Genero

	(genero_libro
		[Ontologia_Class61]
		[Ontologia_Class62]
		[Ontologia_Class79]
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10170]
		[Ontologia_Class10041]
		[Ontologia_Class10038]
		[Ontologia_Class10048]
		[Ontologia_Class10044])
	(id_genero "Adventure"))

([Ontologia_Class17] of  Genero

	(genero_libro
		[Ontologia_Class65]
		[Ontologia_Class67]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class10041]
		[Ontologia_Class10062]
		[Ontologia_Class10037]
		[Ontologia_Class10002]
		[Ontologia_Class10015])
	(id_genero "Thriller"))

([Ontologia_Class18] of  Genero

	(genero_libro
		[Ontologia_Class77]
		[Ontologia_Class78]
		[Ontologia_Class81]
		[Ontologia_Class79]
		[Ontologia_Class82]
		[Ontologia_Class10036]
		[Ontologia_Class10169]
		[Ontologia_Class10063]
		[Ontologia_Class70]
		[Ontologia_Class10039]
		[Ontologia_Class10003]
		[Ontologia_Class10054]
		[Ontologia_Class10045]
		[Ontologia_Class10037])
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico [Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 544)
	(precio 11)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Fifty Shades Darker"))

([Ontologia_Class20] of  Genero

	(genero_libro
		[Ontologia_Class81]
		[Ontologia_Class79]
		[Ontologia_Class10017]
		[Ontologia_Class10035]
		[Ontologia_Class10052]
		[Ontologia_Class10031]
		[Ontologia_Class10053]
		[Ontologia_Class10048]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class10014])
	(id_genero "Graphic novel"))

([Ontologia_Class20002] of  Escritor

	(escritor_libro [Ontologia_Class10011])
	(id_persona "Phil Rickman"))

([Ontologia_Class20003] of  Escritor

	(escritor_libro [Ontologia_Class10015])
	(id_persona "Lisa Jewell"))

([Ontologia_Class20004] of  Escritor

	(escritor_libro [Ontologia_Class10014])
	(id_persona "Delia Owens"))

([Ontologia_Class20005] of  Escritor

	(escritor_libro [Ontologia_Class10002])
	(id_persona "John Harding"))

([Ontologia_Class20006] of  Escritor

	(escritor_libro [Ontologia_Class10044])
	(id_persona "Cate Tiernan"))

([Ontologia_Class20095] of  Escritor

	(escritor_libro [Ontologia_Class10051])
	(id_persona "Hugh Aldersey-Williams"))

([Ontologia_Class20097] of  Escritor

	(escritor_libro [Ontologia_Class10050])
	(id_persona "Lincoln Child"))

([Ontologia_Class20098] of  Escritor

	(id_persona "Douglas Preston"))

([Ontologia_Class20099] of  Escritor

	(escritor_libro [Ontologia_Class10038])
	(id_persona "Lee O'Malley"))

([Ontologia_Class20100] of  Escritor

	(escritor_libro [Ontologia_Class10009])
	(id_persona "Patricia Duncker"))

([Ontologia_Class20101] of  Escritor

	(escritor_libro [Ontologia_Class10052])
	(id_persona "Cassie Alexander"))

([Ontologia_Class20102] of  Escritor

	(escritor_libro [Ontologia_Class10040])
	(id_persona "Hailey Abbott"))

([Ontologia_Class20103] of  Escritor

	(escritor_libro [Ontologia_Class10031])
	(id_persona "Rigoberto González"))

([Ontologia_Class20104] of  Escritor

	(escritor_libro [Ontologia_Class10039])
	(id_persona "Kate Klimo"))

([Ontologia_Class20105] of  Escritor

	(escritor_libro [Ontologia_Class10003])
	(id_persona "Katherine Clements"))

([Ontologia_Class20106] of  Escritor

	(escritor_libro [Ontologia_Class10053])
	(id_persona "Catherine Cookson"))

([Ontologia_Class20107] of  Escritor

	(escritor_libro [Ontologia_Class10062])
	(id_persona "Sally Beauman"))

([Ontologia_Class20108] of  Escritor

	(escritor_libro [Ontologia_Class10048])
	(id_persona "Dafydd ab Hugh"))

([Ontologia_Class20110] of  Escritor

	(escritor_libro [Ontologia_Class10054])
	(id_persona "Jilly Cooper"))

([Ontologia_Class20111] of  Escritor

	(escritor_libro [Ontologia_Class10004])
	(id_persona "Bernie Gunther"))

([Ontologia_Class20112] of  Escritor

	(escritor_libro [Ontologia_Class10030])
	(id_persona "Maeve Haran"))

([Ontologia_Class20113] of  Escritor

	(escritor_libro [Ontologia_Class10045])
	(id_persona "John Grisham"))

([Ontologia_Class20114] of  Escritor

	(escritor_libro [Ontologia_Class10037])
	(id_persona "S.J.Abbey"))

([Ontologia_Class21] of  Genero

	(genero_libro
		[Ontologia_Class90]
		[Ontologia_Class89]
		[Ontologia_Class10051]
		[Ontologia_Class10038]
		[Ontologia_Class5]
		[Ontologia_Class10004]
		[Ontologia_Class10037])
	(id_genero "Comedy fiction"))

([Ontologia_Class24] of  Idioma

	(id_idioma "Spanish")
	(idioma_libro
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10010]
		[Ontologia_Class10017]
		[Ontologia_Class10060]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class81]
		[Ontologia_Class10055]
		[Ontologia_Class10059]
		[Ontologia_Class2]
		[Ontologia_Class10058]
		[Ontologia_Class89]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10069]
		[Ontologia_Class10071]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class10038]
		[Ontologia_Class10009]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class10039]
		[Ontologia_Class10053]
		[Ontologia_Class83]
		[Ontologia_Class92]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class10004]
		[Ontologia_Class72]
		[Ontologia_Class10030]
		[Ontologia_Class65]
		[Ontologia_Class74]
		[Ontologia_Class69]
		[Ontologia_Class10002]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class10015])
	(idioma_original_libro [Ontologia_Class10010]))

([Ontologia_Class27] of  Idioma

	(id_idioma "Italian")
	(idioma_libro
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10017]
		[Ontologia_Class10060]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class10055]
		[Ontologia_Class86]
		[Ontologia_Class2]
		[Ontologia_Class10095]
		[Ontologia_Class1]
		[Ontologia_Class89]
		[Ontologia_Class10016]
		[Ontologia_Class10032]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10069]
		[Ontologia_Class10071]
		[Ontologia_Class64]
		[Ontologia_Class10038]
		[Ontologia_Class10009]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class10031]
		[Ontologia_Class61]
		[Ontologia_Class10039]
		[Ontologia_Class10062]
		[Ontologia_Class10048]
		[Ontologia_Class83]
		[Ontologia_Class5]
		[Ontologia_Class67]
		[Ontologia_Class79]
		[Ontologia_Class10028]
		[Ontologia_Class92]
		[Ontologia_Class10054]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class10004]
		[Ontologia_Class72]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class10042]
		[Ontologia_Class62]
		[Ontologia_Class75]
		[Ontologia_Class77]))

([Ontologia_Class28] of  Idioma

	(id_idioma "French")
	(idioma_libro
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10017]
		[Ontologia_Class10036]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class81]
		[Ontologia_Class10059]
		[Ontologia_Class86]
		[Ontologia_Class2]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class1]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class89]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10035]
		[Ontologia_Class10012]
		[Ontologia_Class10049]
		[Ontologia_Class10032]
		[Ontologia_Class63]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10041]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10052]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class61]
		[Ontologia_Class10003]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class5]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class72]
		[Ontologia_Class10045]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class10042]
		[Ontologia_Class75]
		[Ontologia_Class10044])
	(idioma_original_libro
		[Ontologia_Class1]
		[Ontologia_Class10046]))

([Ontologia_Class29] of  Idioma

	(id_idioma "German")
	(idioma_libro
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10010]
		[Ontologia_Class10017]
		[Ontologia_Class10036]
		[Ontologia_Class10169]
		[Ontologia_Class81]
		[Ontologia_Class86]
		[Ontologia_Class2]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class10043]
		[Ontologia_Class89]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10035]
		[Ontologia_Class10016]
		[Ontologia_Class10012]
		[Ontologia_Class10049]
		[Ontologia_Class10032]
		[Ontologia_Class63]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10041]
		[Ontologia_Class10038]
		[Ontologia_Class10052]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class10040]
		[Ontologia_Class91]
		[Ontologia_Class10031]
		[Ontologia_Class10003]
		[Ontologia_Class10053]
		[Ontologia_Class10048]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class5]
		[Ontologia_Class79]
		[Ontologia_Class10028]
		[Ontologia_Class10054]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class72]
		[Ontologia_Class10030]
		[Ontologia_Class10045]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class69]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class10014]
		[Ontologia_Class10002]
		[Ontologia_Class90]
		[Ontologia_Class77]
		[Ontologia_Class10015])
	(idioma_original_libro
		[Ontologia_Class10036]
		[Ontologia_Class75]))

([Ontologia_Class30] of  Idioma

	(id_idioma "Japanese")
	(idioma_libro
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10017]
		[Ontologia_Class10035]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10051]
		[Ontologia_Class10038]
		[Ontologia_Class10052]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class10040]
		[Ontologia_Class10062]
		[Ontologia_Class83]
		[Ontologia_Class67]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class72]
		[Ontologia_Class10030]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class62]
		[Ontologia_Class10011]
		[Ontologia_Class10014]
		[Ontologia_Class90]
		[Ontologia_Class10044])
	(idioma_original_libro
		[Ontologia_Class10017]
		[Ontologia_Class10035]
		[Ontologia_Class10172]))

([Ontologia_Class31] of  Animo

	(animo_libro
		[Ontologia_Class89]
		[Ontologia_Class72]
		[Ontologia_Class10055]
		[Ontologia_Class10063]
		[Ontologia_Class10033]
		[Ontologia_Class10016]
		[Ontologia_Class10041]
		[Ontologia_Class10038]
		[Ontologia_Class10031]
		[Ontologia_Class10048]
		[Ontologia_Class10054]
		[Ontologia_Class10037]
		[Ontologia_Class74]
		[Ontologia_Class62]
		[Ontologia_Class77])
	(id_animo "happy"))

([Ontologia_Class32] of  Animo

	(animo_libro
		[Ontologia_Class91]
		[Ontologia_Class10172]
		[Ontologia_Class10002]
		[Ontologia_Class10003]
		[Ontologia_Class10004]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10034]
		[Ontologia_Class10036]
		[Ontologia_Class10017]
		[Ontologia_Class10043]
		[Ontologia_Class10035]
		[Ontologia_Class10012]
		[Ontologia_Class10170]
		[Ontologia_Class10040]
		[Ontologia_Class10031]
		[Ontologia_Class10028]
		[Ontologia_Class10054]
		[Ontologia_Class10030]
		[Ontologia_Class10045]
		[Ontologia_Class10037]
		[Ontologia_Class68]
		[Ontologia_Class62]
		[Ontologia_Class10014]
		[Ontologia_Class90]
		[Ontologia_Class10044])
	(id_animo "sad"))

([Ontologia_Class33] of  Animo

	(animo_libro
		[Ontologia_Class89]
		[Ontologia_Class83]
		[Ontologia_Class1]
		[Ontologia_Class10002]
		[Ontologia_Class10003]
		[Ontologia_Class10011]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10038]
		[Ontologia_Class10048]
		[Ontologia_Class62]
		[Ontologia_Class69])
	(id_animo "funny"))

([Ontologia_Class34] of  Animo

	(animo_libro
		[Ontologia_Class70]
		[Ontologia_Class92]
		[Ontologia_Class10004]
		[Ontologia_Class10006]
		[Ontologia_Class10060]
		[Ontologia_Class10010]
		[Ontologia_Class86]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class10016]
		[Ontologia_Class10049]
		[Ontologia_Class10051]
		[Ontologia_Class10039]
		[Ontologia_Class10053]
		[Ontologia_Class65]
		[Ontologia_Class10042]
		[Ontologia_Class69]
		[Ontologia_Class75])
	(id_animo "serious"))

([Ontologia_Class35] of  Animo

	(animo_libro
		[Ontologia_Class61]
		[Ontologia_Class87]
		[Ontologia_Class78]
		[Ontologia_Class10055]
		[Ontologia_Class10059]
		[Ontologia_Class10017]
		[Ontologia_Class10043]
		[Ontologia_Class10035]
		[Ontologia_Class10049]
		[Ontologia_Class10170]
		[Ontologia_Class10041]
		[Ontologia_Class10031]
		[Ontologia_Class10053]
		[Ontologia_Class10028]
		[Ontologia_Class10054]
		[Ontologia_Class10030]
		[Ontologia_Class74]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class77])
	(id_animo "expected"))

([Ontologia_Class36] of  Animo

	(animo_libro
		[Ontologia_Class64]
		[Ontologia_Class88]
		[Ontologia_Class83]
		[Ontologia_Class67]
		[Ontologia_Class71]
		[Ontologia_Class10172]
		[Ontologia_Class10005]
		[Ontologia_Class10008]
		[Ontologia_Class10169]
		[Ontologia_Class10056]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10045]
		[Ontologia_Class65])
	(id_animo "unpredictable"))

([Ontologia_Class37] of  Animo

	(animo_libro
		[Ontologia_Class72]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10046]
		[Ontologia_Class10051]
		[Ontologia_Class10050]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10039]
		[Ontologia_Class10062]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class10030]
		[Ontologia_Class68]
		[Ontologia_Class10042]
		[Ontologia_Class75]
		[Ontologia_Class10014]
		[Ontologia_Class90])
	(id_animo "gentle"))

([Ontologia_Class38] of  Animo

	(animo_libro
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class63]
		[Ontologia_Class64]
		[Ontologia_Class91]
		[Ontologia_Class10172]
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10010]
		[Ontologia_Class10046]
		[Ontologia_Class10017]
		[Ontologia_Class10058]
		[Ontologia_Class10170]
		[Ontologia_Class10040]
		[Ontologia_Class10062]
		[Ontologia_Class65]
		[Ontologia_Class10014]
		[Ontologia_Class10044])
	(id_animo "violent"))

([Ontologia_Class39] of  Animo

	(animo_libro
		[Ontologia_Class79]
		[Ontologia_Class71]
		[Ontologia_Class10172]
		[Ontologia_Class10008]
		[Ontologia_Class10011]
		[Ontologia_Class10034]
		[Ontologia_Class10169]
		[Ontologia_Class10059]
		[Ontologia_Class10095]
		[Ontologia_Class10041]
		[Ontologia_Class10050]
		[Ontologia_Class10052]
		[Ontologia_Class10053]
		[Ontologia_Class5]
		[Ontologia_Class10045]
		[Ontologia_Class10042]
		[Ontologia_Class10014])
	(id_animo "optimistic"))

([Ontologia_Class4] of  Escritor

	(escritor_libro
		[Ontologia_Class10169]
		[Ontologia_Class10170]
		[Ontologia_Class5])
	(id_persona "Suzanne Collins"))

([Ontologia_Class40] of  Animo

	(animo_libro
		[Ontologia_Class83]
		[Ontologia_Class82]
		[Ontologia_Class10009]
		[Ontologia_Class10064]
		[Ontologia_Class10058]
		[Ontologia_Class10032]
		[Ontologia_Class10062]
		[Ontologia_Class10028]
		[Ontologia_Class10030]
		[Ontologia_Class74]
		[Ontologia_Class10042]
		[Ontologia_Class77])
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
		[Ontologia_Class10172]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10036]
		[Ontologia_Class10060]
		[Ontologia_Class10046]
		[Ontologia_Class10059]
		[Ontologia_Class1]
		[Ontologia_Class10056]
		[Ontologia_Class10035]
		[Ontologia_Class10012]
		[Ontologia_Class10032]
		[Ontologia_Class10005]
		[Ontologia_Class10008]
		[Ontologia_Class10006]
		[Ontologia_Class70]
		[Ontologia_Class10031]
		[Ontologia_Class10003]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class90]
		[Ontologia_Class77]))

([Ontologia_Class44] of  Tiempo

	(id_tiempo "Present")
	(tiempo_libro
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class88]
		[Ontologia_Class91]
		[Ontologia_Class61]
		[Ontologia_Class87]
		[Ontologia_Class79]
		[Ontologia_Class92]
		[Ontologia_Class72]
		[Ontologia_Class78]
		[Ontologia_Class10034]
		[Ontologia_Class10010]
		[Ontologia_Class10169]
		[Ontologia_Class10055]
		[Ontologia_Class10017]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10043]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10009]
		[Ontologia_Class10040]
		[Ontologia_Class10039]
		[Ontologia_Class10054]
		[Ontologia_Class10045]
		[Ontologia_Class69]
		[Ontologia_Class10014]
		[Ontologia_Class10002]
		[Ontologia_Class10044]
		[Ontologia_Class10015]))

([Ontologia_Class46] of  Tiempo

	(id_tiempo "Future")
	(tiempo_libro
		[Ontologia_Class89]
		[Ontologia_Class67]
		[Ontologia_Class71]
		[Ontologia_Class10064]
		[Ontologia_Class10058]
		[Ontologia_Class10033]
		[Ontologia_Class10016]
		[Ontologia_Class10049]
		[Ontologia_Class10170]
		[Ontologia_Class10052]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10048]
		[Ontologia_Class10004]
		[Ontologia_Class10030]
		[Ontologia_Class10037]
		[Ontologia_Class10042]
		[Ontologia_Class62]))

([Ontologia_Class47] of  Genero

	(genero_libro
		[Ontologia_Class75]
		[Ontologia_Class74]
		[Ontologia_Class10055]
		[Ontologia_Class10050]
		[Ontologia_Class10052]
		[Ontologia_Class10062]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class10004]
		[Ontologia_Class10042]
		[Ontologia_Class10044])
	(id_genero "Philosophy novel"))

([Ontologia_Class49] of  Publico

	(id_publico "Children")
	(publico_libro
		[Ontologia_Class81]
		[Ontologia_Class79]
		[Ontologia_Class10055]
		[Ontologia_Class10053]
		[Ontologia_Class10048]
		[Ontologia_Class62]))

([Ontologia_Class5] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2008)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class39])
	(libro_escritor [Ontologia_Class4])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class20]
		[Ontologia_Class47]
		[Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente FALSE)
	(numero_de_paginas 396)
	(precio 11)
	(primera_persona FALSE)
	(Puntuacion 0)
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
		[Ontologia_Class10172]
		[Ontologia_Class10034]
		[Ontologia_Class10060]
		[Ontologia_Class10010]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class10017]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class1]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class10056]
		[Ontologia_Class10035]
		[Ontologia_Class10012]
		[Ontologia_Class10032]
		[Ontologia_Class10005]
		[Ontologia_Class10008]
		[Ontologia_Class10006]
		[Ontologia_Class10170]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10031]
		[Ontologia_Class10039]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10048]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class10054]
		[Ontologia_Class10030]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class10042]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class10014]
		[Ontologia_Class10002]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class10015]))

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
		[Ontologia_Class10172]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class10055]
		[Ontologia_Class10017]
		[Ontologia_Class10063]
		[Ontologia_Class10056]
		[Ontologia_Class10035]
		[Ontologia_Class10032]
		[Ontologia_Class10170]
		[Ontologia_Class10038]
		[Ontologia_Class10048]
		[Ontologia_Class10054]
		[Ontologia_Class10037]
		[Ontologia_Class62]
		[Ontologia_Class90]))

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
		[Ontologia_Class10172]
		[Ontologia_Class10034]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10036]
		[Ontologia_Class10060]
		[Ontologia_Class10010]
		[Ontologia_Class10169]
		[Ontologia_Class10059]
		[Ontologia_Class10017]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class1]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10035]
		[Ontologia_Class10016]
		[Ontologia_Class10012]
		[Ontologia_Class10049]
		[Ontologia_Class10005]
		[Ontologia_Class10008]
		[Ontologia_Class10006]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10009]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10031]
		[Ontologia_Class10039]
		[Ontologia_Class10003]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class5]
		[Ontologia_Class10028]
		[Ontologia_Class10054]
		[Ontologia_Class10004]
		[Ontologia_Class10030]
		[Ontologia_Class10045]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class10042]
		[Ontologia_Class69]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class10014]
		[Ontologia_Class10002]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class77]
		[Ontologia_Class10015]))

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
		[Ontologia_Class78]
		[Ontologia_Class10034]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10036]
		[Ontologia_Class10060]
		[Ontologia_Class10059]
		[Ontologia_Class10064]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class10033]
		[Ontologia_Class10016]
		[Ontologia_Class10012]
		[Ontologia_Class10049]
		[Ontologia_Class10005]
		[Ontologia_Class10008]
		[Ontologia_Class10006]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class10009]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10039]
		[Ontologia_Class10004]
		[Ontologia_Class10045]
		[Ontologia_Class65]
		[Ontologia_Class74]
		[Ontologia_Class69]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class10044]
		[Ontologia_Class77]
		[Ontologia_Class10015]))

([Ontologia_Class55] of  Animo

	(animo_libro
		[Ontologia_Class10034]
		[Ontologia_Class10036]
		[Ontologia_Class10060]
		[Ontologia_Class10169]
		[Ontologia_Class86]
		[Ontologia_Class10012]
		[Ontologia_Class10032]
		[Ontologia_Class10050]
		[Ontologia_Class10052]
		[Ontologia_Class10040]
		[Ontologia_Class10039]
		[Ontologia_Class5]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class69]
		[Ontologia_Class75])
	(id_animo "disgusting"))

([Ontologia_Class56] of  Animo

	(animo_libro
		[Ontologia_Class81]
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class61]
		[Ontologia_Class79]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10059]
		[Ontologia_Class10095]
		[Ontologia_Class10051]
		[Ontologia_Class10038]
		[Ontologia_Class10048]
		[Ontologia_Class5]
		[Ontologia_Class75])
	(id_animo "beautiful"))

([Ontologia_Class6] of  Idioma

	(id_idioma "English")
	(idioma_libro
		[Ontologia_Class78]
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10017]
		[Ontologia_Class10034]
		[Ontologia_Class10061]
		[Ontologia_Class10070]
		[Ontologia_Class10072]
		[Ontologia_Class10036]
		[Ontologia_Class10060]
		[Ontologia_Class10169]
		[Ontologia_Class81]
		[Ontologia_Class10055]
		[Ontologia_Class10059]
		[Ontologia_Class86]
		[Ontologia_Class2]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class1]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class89]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10035]
		[Ontologia_Class10016]
		[Ontologia_Class10012]
		[Ontologia_Class10049]
		[Ontologia_Class10032]
		[Ontologia_Class63]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10069]
		[Ontologia_Class10071]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class64]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10009]
		[Ontologia_Class10052]
		[Ontologia_Class10172]
		[Ontologia_Class88]
		[Ontologia_Class10040]
		[Ontologia_Class91]
		[Ontologia_Class10031]
		[Ontologia_Class61]
		[Ontologia_Class10039]
		[Ontologia_Class10003]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10048]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class5]
		[Ontologia_Class67]
		[Ontologia_Class79]
		[Ontologia_Class10028]
		[Ontologia_Class92]
		[Ontologia_Class10054]
		[Ontologia_Class82]
		[Ontologia_Class71]
		[Ontologia_Class10004]
		[Ontologia_Class72]
		[Ontologia_Class10030]
		[Ontologia_Class10045]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class10042]
		[Ontologia_Class62]
		[Ontologia_Class69]
		[Ontologia_Class10011]
		[Ontologia_Class75]
		[Ontologia_Class10014]
		[Ontologia_Class10002]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class77]
		[Ontologia_Class10015])
	(idioma_original_libro
		[Ontologia_Class10002]
		[Ontologia_Class10003]
		[Ontologia_Class10004]
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class10009]
		[Ontologia_Class10011]
		[Ontologia_Class10012]
		[Ontologia_Class10014]
		[Ontologia_Class10015]
		[Ontologia_Class10016]
		[Ontologia_Class10034]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10060]
		[Ontologia_Class10169]
		[Ontologia_Class81]
		[Ontologia_Class10055]
		[Ontologia_Class10059]
		[Ontologia_Class86]
		[Ontologia_Class2]
		[Ontologia_Class73]
		[Ontologia_Class10095]
		[Ontologia_Class10063]
		[Ontologia_Class10064]
		[Ontologia_Class10043]
		[Ontologia_Class10058]
		[Ontologia_Class89]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10049]
		[Ontologia_Class10032]
		[Ontologia_Class63]
		[Ontologia_Class10170]
		[Ontologia_Class70]
		[Ontologia_Class10041]
		[Ontologia_Class10051]
		[Ontologia_Class64]
		[Ontologia_Class10050]
		[Ontologia_Class10038]
		[Ontologia_Class10052]
		[Ontologia_Class88]
		[Ontologia_Class10040]
		[Ontologia_Class91]
		[Ontologia_Class10031]
		[Ontologia_Class61]
		[Ontologia_Class10039]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10048]
		[Ontologia_Class83]
		[Ontologia_Class87]
		[Ontologia_Class5]
		[Ontologia_Class67]
		[Ontologia_Class79]
		[Ontologia_Class10028]
		[Ontologia_Class92]
		[Ontologia_Class10054]
		[Ontologia_Class71]
		[Ontologia_Class82]
		[Ontologia_Class72]
		[Ontologia_Class10030]
		[Ontologia_Class78]
		[Ontologia_Class10045]
		[Ontologia_Class10037]
		[Ontologia_Class65]
		[Ontologia_Class68]
		[Ontologia_Class74]
		[Ontologia_Class10042]
		[Ontologia_Class62]
		[Ontologia_Class69]
		[Ontologia_Class90]
		[Ontologia_Class10044]
		[Ontologia_Class77]))

([Ontologia_Class61] of  Libro

	(anyo_publicacion 1903)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class56])
	(libro_escritor [Ontologia_Class119])
	(libro_genero [Ontologia_Class16])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 232)
	(precio 9)
	(Puntuacion 0)
	(titulo "The Call of the Wild"))

([Ontologia_Class62] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1812)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class31]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class99])
	(libro_genero [Ontologia_Class16])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class49]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real TRUE)
	(numero_de_paginas 323)
	(precio 40)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Swiss Family Robinson"))

([Ontologia_Class63] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1985)
	(libro_animo [Ontologia_Class38])
	(libro_escritor [Ontologia_Class126])
	(libro_genero [Ontologia_Class14])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 843)
	(precio 13)
	(Puntuacion 0)
	(titulo "Lonesome Dove"))

([Ontologia_Class64] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1912)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class123])
	(libro_genero [Ontologia_Class14])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 335)
	(precio 23)
	(Puntuacion 0)
	(titulo "Riders of the Purple Sage"))

([Ontologia_Class65] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1977)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class34]
		[Ontologia_Class36]
		[Ontologia_Class38])
	(libro_escritor [Ontologia_Class102])
	(libro_genero
		[Ontologia_Class17]
		[Ontologia_Class13])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 447)
	(precio 10)
	(Puntuacion 0)
	(titulo "The Shining"))

([Ontologia_Class67] of  Libro

	(anyo_publicacion 2019)
	(libro_animo [Ontologia_Class36])
	(libro_escritor [Ontologia_Class102])
	(libro_genero
		[Ontologia_Class17]
		[Ontologia_Class13])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 576)
	(precio 17)
	(Puntuacion 0)
	(titulo "The institute"))

([Ontologia_Class68] of  Libro

	(anyo_publicacion 1963)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class103])
	(libro_genero [Ontologia_Class12])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class30])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(numero_de_paginas 1)
	(precio 223)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Spy Who Came in from the Cold"))

([Ontologia_Class69] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1915)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class55]
		[Ontologia_Class33]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class98])
	(libro_genero [Ontologia_Class12])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente FALSE)
	(numero_de_paginas 10)
	(precio 10)
	(Puntuacion 0)
	(titulo "The Thirty-Nine Steps"))

([Ontologia_Class7] of  Genero

	(genero_libro
		[Ontologia_Class83]
		[Ontologia_Class89]
		[Ontologia_Class82]
		[Ontologia_Class10172]
		[Ontologia_Class10005]
		[Ontologia_Class10006]
		[Ontologia_Class10008]
		[Ontologia_Class1]
		[Ontologia_Class10032]
		[Ontologia_Class10170]
		[Ontologia_Class10050]
		[Ontologia_Class10048]
		[Ontologia_Class10042]
		[Ontologia_Class10044])
	(id_genero "Fantasy"))

([Ontologia_Class70] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1949)
	(libro_animo [Ontologia_Class34])
	(libro_escritor [Ontologia_Class125])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class8]
		[Ontologia_Class18])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 304)
	(precio 100)
	(primera_persona FALSE)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente TRUE)
	(numero_de_paginas 369)
	(precio 11)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "The Martian"))

([Ontologia_Class72] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1996)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class31]
		[Ontologia_Class37])
	(libro_escritor [Ontologia_Class105])
	(libro_genero [Ontologia_Class9])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(numero_de_paginas 224)
	(precio 3)
	(primera_persona FALSE)
	(Puntuacion 0)
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
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico [Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente FALSE)
	(numero_de_paginas 592)
	(precio 26)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Fifty Shades Freed"))

([Ontologia_Class74] of  Libro

	(anyo_publicacion 2004)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class35]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class101])
	(libro_genero [Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 640)
	(precio 25)
	(Puntuacion 0)
	(titulo "The Stranger"))

([Ontologia_Class75] of  Libro

	(adaptada_a_cine TRUE)
	(libro_animo
		[Ontologia_Class56]
		[Ontologia_Class55]
		[Ontologia_Class37]
		[Ontologia_Class34])
	(libro_escritor [Ontologia_Class97])
	(libro_genero [Ontologia_Class47])
	(libro_idioma
		[Ontologia_Class27]
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class29])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 1883)
	(precio 21)
	(Puntuacion 0)
	(titulo "Thus Spoke Zarathustra"))

([Ontologia_Class77] of  Libro

	(anyo_publicacion 2001)
	(libro_animo
		[Ontologia_Class40]
		[Ontologia_Class35]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class95])
	(libro_genero [Ontologia_Class18])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente TRUE)
	(numero_de_paginas 672)
	(precio 10)
	(Puntuacion 0)
	(titulo "Wolf Hall"))

([Ontologia_Class78] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1989)
	(best_seller TRUE)
	(libro_animo [Ontologia_Class35])
	(libro_escritor [Ontologia_Class104])
	(libro_genero [Ontologia_Class18])
	(libro_idioma [Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 806)
	(precio 40)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class51]
		[Ontologia_Class49])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 526)
	(precio 16)
	(Puntuacion 0)
	(titulo "The Invention of Hugo Cabret"))

([Ontologia_Class8] of  Genero

	(genero_libro
		[Ontologia_Class71]
		[Ontologia_Class10172]
		[Ontologia_Class10060]
		[Ontologia_Class10046]
		[Ontologia_Class10169]
		[Ontologia_Class10055]
		[Ontologia_Class10017]
		[Ontologia_Class10049]
		[Ontologia_Class10032]
		[Ontologia_Class70]
		[Ontologia_Class10003]
		[Ontologia_Class10053]
		[Ontologia_Class10062]
		[Ontologia_Class10004]
		[Ontologia_Class10037]
		[Ontologia_Class10011]
		[Ontologia_Class10044])
	(id_genero "Science fiction"))

([Ontologia_Class81] of  Libro

	(anyo_publicacion 1976)
	(libro_animo [Ontologia_Class56])
	(libro_dibujante [Ontologia_Class134])
	(libro_escritor [Ontologia_Class135])
	(libro_genero
		[Ontologia_Class20]
		[Ontologia_Class18])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class24]
		[Ontologia_Class6])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class49]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 146)
	(precio 60)
	(Puntuacion 0)
	(titulo "Chandler: Red Tide"))

([Ontologia_Class82] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 2007)
	(libro_animo [Ontologia_Class40])
	(libro_escritor [Ontologia_Class106])
	(libro_genero
		[Ontologia_Class7]
		[Ontologia_Class18])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class43])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 662)
	(precio 10)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class51]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class43])
	(novela_independiente FALSE)
	(numero_de_paginas 310)
	(precio 9)
	(Puntuacion 0)
	(titulo "The Hobbit"))

([Ontologia_Class86] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1937)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class34]
		[Ontologia_Class55])
	(libro_escritor [Ontologia_Class132])
	(libro_genero
		[Ontologia_Class15]
		[Ontologia_Class11])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
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
	(Puntuacion 0)
	(titulo "Death on the Nile"))

([Ontologia_Class87] of  Libro

	(adaptada_a_cine FALSE)
	(anyo_publicacion 1902)
	(libro_animo [Ontologia_Class35])
	(libro_escritor [Ontologia_Class117])
	(libro_genero [Ontologia_Class11])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 360)
	(precio 10)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10026])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(mundo_real TRUE)
	(novela_independiente TRUE)
	(numero_de_paginas 380)
	(precio 10)
	(Puntuacion 0)
	(titulo "Shutter Island"))

([Ontologia_Class89] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1990)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class33]
		[Ontologia_Class31])
	(libro_escritor [Ontologia_Class129])
	(libro_genero
		[Ontologia_Class21]
		[Ontologia_Class13]
		[Ontologia_Class7])
	(libro_idioma
		[Ontologia_Class28]
		[Ontologia_Class29]
		[Ontologia_Class24]
		[Ontologia_Class6]
		[Ontologia_Class27])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50])
	(libro_tiempo [Ontologia_Class46])
	(novela_independiente FALSE)
	(numero_de_paginas 288)
	(precio 9)
	(primera_persona TRUE)
	(Puntuacion 0)
	(titulo "Good Omens"))

([Ontologia_Class9] of  Genero

	(genero_libro
		[Ontologia_Class72]
		[Ontologia_Class73]
		[Ontologia_Class2]
		[Ontologia_Class10061]
		[Ontologia_Class10069]
		[Ontologia_Class10070]
		[Ontologia_Class10071]
		[Ontologia_Class10072]
		[Ontologia_Class10095]
		[Ontologia_Class10064]
		[Ontologia_Class1]
		[Ontologia_Class10043]
		[Ontologia_Class10056]
		[Ontologia_Class10033]
		[Ontologia_Class10016]
		[Ontologia_Class10012]
		[Ontologia_Class10170]
		[Ontologia_Class10041]
		[Ontologia_Class10038]
		[Ontologia_Class10040]
		[Ontologia_Class10039]
		[Ontologia_Class10003]
		[Ontologia_Class5]
		[Ontologia_Class10054]
		[Ontologia_Class10014])
	(id_genero "Romance novel"))

([Ontologia_Class90] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1994)
	(best_seller TRUE)
	(libro_animo
		[Ontologia_Class35]
		[Ontologia_Class37]
		[Ontologia_Class32])
	(libro_escritor [Ontologia_Class96])
	(libro_genero [Ontologia_Class21])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class30]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class50]
		[Ontologia_Class52]
		[Ontologia_Class51])
	(libro_tiempo [Ontologia_Class43])
	(numero_de_paginas 210)
	(precio 10)
	(Puntuacion 0)
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
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class29]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10027])
	(libro_publico
		[Ontologia_Class53]
		[Ontologia_Class52])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 277)
	(precio 11)
	(Puntuacion 0)
	(titulo "The Big Sleep"))

([Ontologia_Class92] of  Libro

	(adaptada_a_cine TRUE)
	(anyo_publicacion 1930)
	(libro_animo [Ontologia_Class34])
	(libro_escritor [Ontologia_Class111])
	(libro_genero
		[Ontologia_Class11]
		[Ontologia_Class10116])
	(libro_idioma
		[Ontologia_Class6]
		[Ontologia_Class27]
		[Ontologia_Class24])
	(libro_idioma_original [Ontologia_Class6])
	(libro_nivel [Ontologia_Class10025])
	(libro_publico
		[Ontologia_Class52]
		[Ontologia_Class50]
		[Ontologia_Class53])
	(libro_tiempo [Ontologia_Class44])
	(novela_independiente TRUE)
	(numero_de_paginas 0)
	(precio 9)
	(Puntuacion 0)
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

(deffunction set "funcion que elimina todo elemento repetido en una lista" (?list)
    (if (< (length$ ?list) 2) then (return ?list))
    (bind ?first (nth$ 1 ?list))
    (bind ?list (set (delete$ ?list 1 1)))
    (loop-for-count (?i 1 (length ?list)) do
        (if (eq ?first (nth$ ?i ?list)) then (return ?list))
    )
    (return (insert$ ?list 1 ?first))
)

(deffunction imprime-todo "funcion que imprime una lista" (?v)
  (if (> (length$ ?v) 0) then
   (loop-for-count (?i 1 (length ?v)) do
	 (printout t (nth$ ?i ?v) crlf)
   )
 )
)

(deffunction ask-interval "funcion que pregunta un intervalo" (?question)
	(printout t ?question crlf)
	(bind ?answer2 (readline))
	(bind ?answer (explode$ ?answer2))
	(bind ?var1 (nth$ 1 ?answer))
	(bind ?var2 (nth$ 2 ?answer))
	(while (or (or (not (integerp ?var1)) (not (integerp ?var2))) (> ?var1 ?var2)) do
        (printout t ?question crlf)
        (bind ?answer2 (readline))
        (bind ?answer (explode$ ?answer2))
        (bind ?var1 (nth$ 1 ?answer))
	    (bind ?var2 (nth$ 2 ?answer))
	)
	(return (create$ ?var1 ?var2))
)

(deffunction ask-age "funcion que perguna la edad" (?question)
    (printout t ?question crlf)
    (bind ?answer (read))
    (while (or (not (integerp ?answer)) (< ?answer 0) (> ?answer 150)) do
        (printout t ?question crlf)
        (bind ?answer (read))
    )
    (return ?answer)
)

(deffunction ask-number "funcion que pregunta un numero" (?question)
   (printout t ?question crlf)
   (bind ?answer (read))
   (while (not (integerp ?answer)) do
      (printout t ?question crlf)
      (bind ?answer (read)))
   (return ?answer)
)

(deffunction ask-positive-number "funcion que pregunta un numero positivo" (?question)
    (printout t ?question crlf)
    (bind ?answer (read))
    (while (or (not (integerp ?answer)) (< ?answer 0)) do
        (printout t ?question crlf)
        (bind ?answer (read))
    )
    (return ?answer)
)

(deffunction ask-question "funcion que pregunta un pregunta respecto a diferente valores permitidos" (?question $?allowed-values)
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

(deffunction yes-or-no-p "funcion que realiza una pregunta binaria" (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))

(deffunction ask-multievaluated "funcion que realiza una pregunta con mas de un valor permitido" (?question ?list)
    (printout t ?question crlf)
    (loop-for-count (?i 1 (length ?list)) do
	 (printout t ?i " " (nth$ ?i ?list) crlf)
    )
    
    (bind ?answer2 (readline))
	(bind ?answer (explode$ ?answer2))
    
    (loop-for-count (?i 1 (length$ ?answer)) do
       (bind ?var (nth$ ?i ?answer))
       (if  (or (or (not (integerp ?var)) (> ?var (length$ ?list))) (< ?var  1)) then
            (return (ask-multievaluated ?question ?list))
      )
    )
	
    (bind ?result (create$))
    (loop-for-count (?i 1 (length$ ?answer)) do
        (bind ?number (nth$ ?i ?answer))
		(bind ?var (nth$ ?number ?list))
        (bind ?result (insert$ ?result ?i ?var))
    )
    (return (set ?result))
)


(deffunction get-all-values "funcion que devuelve la lista con todos los slots de los objetos de la variable var" (?var ?slot) 
	(bind $?list (create$))
    (loop-for-count (?i 1 (length$ ?var)) do
        (bind ?x (send (nth$ ?i ?var) (sym-cat get- ?slot)))
        (bind ?list (insert$ ?list ?i  ?x))
    )
	(return ?list)
)

(deffunction increase-puntuation "funcion que aumenta puntuacio a un libro" (?libro ?puntuation)
      (send  ?libro put-Puntuacion ( + (send ?libro get-Puntuacion) ?puntuation) )
	  (return ?libro)
)
(deffunction decrease-puntuation "funcion que disminuye puntuacion a un libro" (?libro ?puntuation)
      (send  ?libro put-Puntuacion ( - (send ?libro get-Puntuacion) ?puntuation) )
	  (return ?libro)
)
(deffunction merge "funcion que dada dos listas devuelve la fusion de las listas ordenadas segun la puntuacion de los libros" (?right ?left)
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

(deffunction merge_sort "funcion que ordena una lista de libros segun su puntuacion" (?list)
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

(defmessage-handler Libro imprimir ()
     (printout t "The characteristics of the book are:" crlf)
     (printout t "Title: "  ?self:titulo crlf)
     (if (neq ?self:subtitulo nil) then (printout t "Subtitle: "  ?self:subtitulo crlf))
     (printout t "Has a film?: " ?self:adaptada_a_cine crlf)
     (printout t "Year of publication: " ?self:anyo_publicacion crlf)
     (printout t "Best-Seller: " ?self:best_seller crlf)
     (printout t "Feelings produced: " (get-all-values ?self:libro_animo id_animo) crlf)
     (printout t "Ilustrators: " (get-all-values ?self:libro_dibujante id_persona) crlf)
     (printout t "Writter: " (get-all-values ?self:libro_dibujante id_persona)  crlf)
     (printout t "Number of pages: "  ?self:numero_de_paginas crlf)
     (printout t "Genres: " (get-all-values ?self:libro_genero id_genero) crlf)
     (printout t "Languages: " (get-all-values ?self:libro_idioma id_idioma) crlf)
     ;(printout t "Original language: " (send ?self:libro_idioma_original get-id_idioma) crlf)
     ;(printout t "Level: " (send ?self:libro_nivel get-id_nivel) crlf)
     (printout t "The story take place in the : " (get-all-values ?self:libro_tiempo id_tiempo) crlf)
     (printout t "Real world?: " ?self:mundo_real crlf)
     (printout t "Independent novel: " ?self:novela_independiente crlf)
     (printout t "First person: " ?self:primera_persona crlf)
     (printout t "Price": ?self:precio crlf)
	 (printout t "Puntuacion: " ?self:Puntuacion crlf)
	 (printout t "Publico: " (get-all-values ?self:libro_publico id_publico) crlf)
     (printout t "Motivos:" crlf)
     (loop-for-count  (?i 1  (length$ ?self:Motivos)) do
        (printout t ?i ". " (nth$ ?i ?self:Motivos) crlf)
     )
     (printout t crlf)
)


;;;;;;;;;;;;; REGLAS DE ABSTRACCION ;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;; ABSTRACCION DE DATOS DE USURARIO
    (defrule years_old "regla que pregunta la edad del usuario"
    (declare (salience 100))
    =>
    (bind ?response (ask-age "How old are you? "))
    (assert (years ?response))
    (if (<= ?response 16) then (assert (level_book easy)))
    )
    
	(defrule work "regla que pregunta si actualmente el usario trabaja"
	(declare (salience 99))
	(years ?var)
	(test (> ?var 16))
	=>
	(if (yes-or-no-p "Actually are you working? (yes/no)") then (assert (working TRUE))
	 else (assert (working TRUE)))
	)
    
    (defrule user-languages "regla que pregunta que idiomas sabe"
    (declare (salience 98))
    =>

    (bind ?response (ask-multievaluated "What languages do you know?"  (get-all-values (find-all-instances ((?inst Idioma)) TRUE) id_idioma ) ))
    (assert (user_languages ?response))
    )

    (defrule cinema "regla que pregunta si es cinefilo"
		(declare (salience 97))
		=>
		(if (yes-or-no-p "Do you like movies? (yes/no)") then (assert (movies TRUE))
		else (assert (movies FALSE)))
	)
    
    (defrule frequency-read "regla que pregunta la frecuencia de lectura del usuario"
		(declare (salience 96))
		=> 
		(bind ?response (ask-positive-number "How many hours do you read every week?"))
		(if (> ?response 9) then (assert (frequency_read high))
		else (if (< ?response 4) then (assert (frequency_read low))
		else (assert (frequency_read medium))))
	)
    


;;;;; ABSTRACCION DE LIBRO QUE BUSCA

    (defrule favourite-genre "regla que pregunta de que genero literario quiere que sea el libro"
    (declare (salience 94))
    =>
    (bind ?response (ask-multievaluated "What genres do you want?"  (get-all-values (find-all-instances ((?inst Genero)) TRUE) id_genero ) ))
    (assert (favourite_genre ?response))
    )
    
    (defrule size-book "regla que pregunta cuantas paginas tendra el libro que desea"
        (frequency_read low)
        => 
        (bind ?response (ask-number "How many pages will the book have? (Doesn't matter: negative value)  "))
        (if (< ?response 0) then (assert (size_book no-care))
        else (if (> ?response 400) then (assert (size_book long-book))
                else (assert (size_book little-book))
            )
        )
    )
    
	(defrule time-book "regla que pregunta en que tiempo quiere que transucrra la historia"
	=>
	(bind ?response (ask-question "The story of the book will be involved in?(past,present,future, no-care)" past present future no-care))
	(if (eq ?response past) then (assert (time_book past))
	else if (eq ?response present) then (assert (time_book present))
	else if (eq ?response future) then (assert (time_book future))
	else then (assert (time_book no-care))
	)
	)
	
	(defrule level-book "regla que pregunta que nivel de dificultat quiere el libro"
	(years ?var)
	(test (> ?var 16))
	=>
	(bind ?response (ask-question "Level of the book?(easy,medium,hard, no-care)" easy medium hard no-care))
	(if (eq ?response easy) then (assert (level_book easy))
	else if (eq ?response medium) then (assert (level_book medium))
	else if (eq ?response hard) then (assert (level_book hard))
	else then (assert (level_book no-care))
	)
	)

	(defrule price-book "regla que pregunta que precio sera el libro que busca"
		(years ?var)
		(test (> ?var 16))
		=>
		(bind ?response (ask-interval "Price of the book?(give an interval of two numbers separated with a space, make sure that the number1 is smaller than number2)"))
		(bind ?lowerBound (nth$ 1 ?response))
		(bind ?upperBound (nth$ 2 ?response))
		(assert (price_book ?response))
	)
	

    (defrule language-book "regla que pregunta en que idioma desea el libro"
        (user_languages $?response)
        (test  (< 1 (length$ ?response)))
        =>
        (bind ?answer (ask-multievaluated "In what language do you want the book?"  ?response))
        (assert (language_book ?answer))
    )

    (defrule feelings "regla que pregunta que sensacion quiere que le produzca el libro"
        =>
        (bind ?response (ask-multievaluated "What feelings would you like while reading a book?" (get-all-values (find-all-instances ((?inst Animo)) TRUE) id_animo)))
        (assert (feeling_state ?response))
    )

    (defrule independent-novel "regla que pregunta si desea una novela independiente"
        =>
        (if (yes-or-no-p "Would you like to read an independent novel? (yes/no)") then (assert (independent_novel TRUE))
        else (assert (independent_novel FALSE)))
    )
    
    (defrule best-seller "regla que pregunta si desea un bestseller"
        =>
        (if (yes-or-no-p "Would you like to read a bestseller? (yes/no)") then (assert (bestseller TRUE)))
    )

;;;;;;;;;;;; REGLAS DE ASOCIACION HEURÍSITCA ;;;;;;;;;;;;;;;;
(defglobal ?*libros* = nil)

(defrule initial-solution "inicializa la variabe global que contendra todos los libros durante la ejecucion del programa"
	(declare (salience 1000))
	=>
	(bind ?*libros*  (find-all-instances ((?ins Libro)) TRUE))
	)

(defrule publico "regla que determina segun la edad que publico pertenecera el usuario"
		(years ?var)
		=>
		(if (and (> ?var 0) (<= ?var 6)) then (assert (public "Children"))
		else (if (and (> ?var 6) (<= ?var 12)) then (assert (public "Young people"))
		else (if (and (> ?var 12) (<= ?var 18)) then (assert (public "Adolescents"))
		else (if (and (> ?var 18) (<= ?var 50)) then (assert (public "Adults"))
		else (assert (public "Old people"))))))
)

(defrule puntuation "regla que puntua un libro si el numero de paginas es menor a 400"
	(size_book little-book)
	=> 
	 (loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?puntuacion 10)
		(bind ?libro (nth$ ?i ?*libros*))
		( if (< (send ?libro get-numero_de_paginas)  400 ) then 
            (bind ?libro (increase-puntuation ?libro ?puntuacion))
			(bind ?motivo (send ?libro get-Motivos))
			(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book is a short book (less than 400 pages)"))
            (send ?libro put-Motivos ?motivo)
		)
		(replace$ ?*libros* ?i ?i ?libro)
	 )
)

(defrule puntuation2 "regla que puntua un libro si el numero de paginas es mayor a 400"
	(size_book long-book)
	=> 
	 (loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?puntuacion 10)
		(bind ?libro (nth$ ?i ?*libros*))
		( if (>= (send ?libro get-numero_de_paginas) 400) then 
            (bind ?libro (increase-puntuation ?libro ?puntuacion))
			(bind ?motivo (send ?libro get-Motivos))
			(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book is a large book (exactly or more than 400 pages)"))
            (send ?libro put-Motivos ?motivo)
		)
		(replace$ ?*libros* ?i ?i ?libro)
	 )
)

(deffunction puntuacion_multi_evaluated_1 "funcion que puntua elementos multievaludos" (?puntuacion ?response ?relacion ?identificador ?tipo) 
	(loop-for-count (?i 1 (length$ ?response)) do
        (bind ?unique_response (nth$ ?i ?response))

        (loop-for-count (?j 1 (length$ ?*libros*)) do
            (bind ?libro (nth$ ?j ?*libros*))
            (bind ?relacion_libro (send ?libro (sym-cat get- ?relacion)))
            (bind ?motives "")
            (loop-for-count (?k 1 (length$ ?relacion_libro)) do
                (if (eq (send (nth$ ?k ?relacion_libro) (sym-cat get- ?identificador)) ?unique_response) then 
                    (bind ?libro (increase-puntuation ?libro ?puntuacion))
                    (bind ?motives (str-cat ?motives ?unique_response " "))
                )
            )
			(if (not (eq ?motives "")) then
                (bind ?motives (str-cat ?tipo ?motives))
				(bind ?motivo (send ?libro get-Motivos))
                (printout t ?motives crlf)
				(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) ?motives))
				(send ?libro put-Motivos ?motivo)
				(replace$ ?*libros* ?j ?j ?libro)
			)
	   )
    )
)


    
(defrule puntuacion3 "regla que puntua segun el nivel del libro"
    (level_book $?response)
    (test (neq (nth$ 1 ?response) no-care))
    =>
    (puntuacion_multi_evaluated_1 10 ?response libro_nivel id_nivel "The book has the level: ")
)

(defrule puntuation4 "regla que puntua segun el idioma del libro"
    (language_book $?response)
    =>
    (puntuacion_multi_evaluated_1 10 ?response libro_idioma_original id_idioma "The book has the following language: ")
    )

(defrule puntacion5 "regla que puntua segun el precio del libro"
    (price_book $?answer)
    =>
    (bind ?puntuacion 10)
    (bind ?lowerBound (nth$ 1 ?answer))
    (bind ?upperBound (nth$ 2 ?answer))
    (loop-for-count (?i 1 (length$ ?*libros*)) do
        (bind ?libro (nth$ ?i ?*libros*))
        (bind ?precio (send ?libro get-precio))
        (if (< ?precio ?lowerBound) then 
            (bind ?libro (increase-puntuation ?libro ?puntuacion))
			(bind ?motivo (send ?libro get-Motivos))
			(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book is cheap"))
            (send ?libro put-Motivos ?motivo)
        else 
            (if (< ?precio ?upperBound) then 
                (bind ?libro (increase-puntuation ?libro (div ?puntuacion 2)))
				(bind ?motivo (send ?libro get-Motivos))
				(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book is affordable"))
				(send ?libro put-Motivos ?motivo)
            )
        )
        (replace$ ?*libros* ?i ?i ?libro)
    )
)

(defrule puntuation6 "regla que puntua si ha sido adapatada al cine"
	(movies TRUE)
	=>
	(bind ?puntuacion 10)
	(loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?libro (nth$ ?i ?*libros*))
		(bind ?movie (send ?libro get-adaptada_a_cine))
		(if ?movie then 
			(bind ?libro (increase-puntuation ?libro ?puntuacion))			
			(bind ?motivo (send ?libro get-Motivos))
			(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book has been adapted to a movie"))
			(send ?libro put-Motivos ?motivo)
		)
		(replace$ ?*libros* ?i ?i ?libro)
	)
)

(defrule puntuation7 "regla que puntua si es un bestseller"
    (bestseller TRUE)
	=>
	(bind ?puntuacion 3)
	(loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?libro (nth$ ?i ?*libros*))
		(bind ?bs (send ?libro get-best_seller))
		(if ?bs then 
			(bind ?libro (increase-puntuation ?libro ?puntuacion))	
			(bind ?motivo (send ?libro get-Motivos))
			(bind ?motivo (insert$ ?motivo (+ (length$ ?motivo) 1) "This book is a bestseller"))
			(send ?libro put-Motivos ?motivo)			
		)
		(replace$ ?*libros* ?i ?i ?libro)
	)
)

(defrule puntuation8 "regla que puntua segun en que tiempo transcurre la historia"
    (time_book $?response)
    (test (neq (nth$ 1 ?response) no-care))
    =>
    (puntuacion_multi_evaluated_1 10 ?response libro_tiempo id_tiempo "The story take place in the: ")
    
)

(deffunction calculo_publico "funcion que puntua segun el publico al que pertenece el libro" (?response ?puntuacion1 ?puntuacion2)
	(bind ?value 0)
	(switch ?response 
			(case "Children" then 
				(bind ?value 1)
			)
			(case "Young People" then 
				(bind ?value 2)
			)
			(case "Adolescents" then 
				(bind ?value 3)
			)
			(case "Adults" then 
				(bind ?value 4)
			)
			(case "Old people" then 
				(bind ?value 5)
			)
		)
	(loop-for-count (?i 1 (length$ ?*libros*)) do
		(bind ?libro (nth$ ?i ?*libros*))
		(bind ?pub (send ?libro get-libro_publico))
		(bind ?sum 0)

		(loop-for-count (?i2 1 (length$ ?pub)) do
			(bind ?publico (send (nth$ ?i2 ?pub) get-id_publico))
			(if (eq ?publico "Children") then 
				(bind ?quantity (abs (- 1 ?value)))
				(bind ?sum (+ ?sum (- ?puntuacion1 (* ?puntuacion2 ?quantity))))
			)
			(if (eq ?publico "Young people") then 
				(bind ?quantity (abs (- 2 ?value)))
				(bind ?sum (+ ?sum (- ?puntuacion1 (* ?puntuacion2 ?quantity))))
			)
			(if (eq ?publico "Adolescents") then 
				(bind ?quantity (abs (- 3 ?value)))
				(bind ?sum (+ ?sum (- ?puntuacion1 (* ?puntuacion2 ?quantity))))
			)
			(if (eq ?publico "Adults") then 
				(bind ?quantity (abs (- 4 ?value)))
				(bind ?sum (+ ?sum (- ?puntuacion1 (* ?puntuacion2 ?quantity))))
			)
			(if (eq ?publico "Old people") then 
				(bind ?quantity (abs (- 5 ?value)))
				(bind ?sum (+ ?sum (- ?puntuacion1 (* ?puntuacion2 ?quantity))))
			)

		)
		(bind ?libro (increase-puntuation ?libro ?sum))
		(replace$ ?*libros* ?i ?i ?libro)
	)
)

(defrule puntuation9 "regla que que puntua segun el publico al que pertenece el libro"
	(public ?response)
	=>
	(bind ?base 20)
	(bind ?interval 5)
	(calculo_publico ?response ?base ?interval)
)

(defrule puntuacion10 "regla que puntua segun que sensacion produce el libro"
    (feeling_state $?response)
    =>
    (puntuacion_multi_evaluated_1 10 ?response libro_animo id_animo "The book emits: ")
)

(defrule puntuation11 "regla que puntua si es una novela independiente o no"
    (independent_novel ?response)
    =>
    (bind ?puntuacion 7)
    (loop-for-count (?i 1 (length$ ?*libros*)) do
        (bind ?libro (nth$ ?i ?*libros*))
        (bind ?novel (send ?libro get-novela_independiente))
        (if (eq ?novel ?response) then
            (increase-puntuation ?libro ?puntuacion)
            (bind ?motivos (send ?libro get-Motivos))
            (if (eq ?response TRUE) then
                (bind ?motivos (insert$ ?motivos (+ (length$ ?motivos) 1) "The book is an Independent Novel"))
            else (bind ?motivos (insert$ ?motivos (+ (length$ ?motivos) 1) "The book is not an Independent Novel"))
            )
            (send ?libro put-Motivos ?motivos)
        )
        (replace$ ?*libros* ?i ?i ?libro)
    )
)

(defrule puntuacionfinal "puntuacion para precisar mas en los resultados, pegunta sobre que autor respecto a una lista le interesaria mas"
    (declare (salience -1))
    =>
    (bind ?*libros* (merge_sort ?*libros*))
    (bind ?libros (create$))
    (bind ?escs (create$))
    (bind ?i 1)
    (while (and (> 6 (length$ ?escs)) (<= ?i (length$ ?*libros*))) do
        (bind ?libro (nth$ ?i ?*libros*))
        (bind ?esc (send ?libro get-libro_escritor))
        (bind ?esc (send (nth$ 1 ?esc) get-id_persona))
        (bind ?escs (set (insert$ ?escs 1 ?esc)))
        (bind ?libros (insert$ ?libros (+ (length$ ?libros) 1) ?libro))
        (bind ?i (+ ?i 1))
    )
    (bind ?*libros* ?libros)
    (puntuacion_multi_evaluated_1 10 (ask-multievaluated "Do you want any of this authors?" ?escs) libro_escritor id_persona "The book has the following author: ")
)
    
;;;;;;;;;;;;;;;PODAS;;;;;;;;;;;;;;


(deffunction poda "funcion encargada de podar respecto a un conjunto de libro" (?list ?id ?relation)
    (bind ?libros_aux (create$ ))
    (loop-for-count (?i 1 (length$ ?*libros*)) do
        (bind ?libro (nth$ ?i ?*libros*))
        (bind ?notfound TRUE)
        (bind ?j 1)
        (while (and ?notfound (<= ?j (length$ ?list))) do
            (bind ?element_list1 (nth$ ?j ?list))
            (bind ?list2 (send ?libro (sym-cat get- ?relation)))
            (bind ?k 1)
            (while (and ?notfound (<= ?k (length$ ?list2))) do
                (bind ?element_list2 (send (nth$ ?k ?list2) (sym-cat get- ?id)))
                (if (eq ?element_list1 ?element_list2 ) then
                    (bind ?libros_aux (insert$ ?libros_aux (+ (length$ ?libros_aux) 1) ?libro))
                    (bind ?notfound FALSE)
                )
                (bind ?k (+ ?k 1))
            )
            (bind ?j (+ ?j 1))
        )
    )
    (return ?libros_aux)
)
(defrule poda1 "regla que poda segun que generos literarios ha elegido el usuario. Poda segun que genero tiene el libro"
    (favourite_genre $?generos)
    =>
    (bind ?*libros* (poda ?generos id_genero libro_genero))
)

(defrule poda2 "regla que poda segun que idiomas conoce el usuario. Poda respecto en que idiomas se puede encontrar el libro."
    (user_languages $?idiomas)
    =>
    (bind ?*libros* (poda ?idiomas id_idioma libro_idioma))
)



;;;;;;;;;;;;;;;;;SOLUCION FINAL;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule final_solution "regla que muestra la solucion final"
	(declare (salience -2))
    
	=>
    
    (bind ?*libros* (merge_sort ?*libros*))
    (printout t "The recommended books are:" crlf)
     (send (nth$ (- (length$ ?*libros*) 0) ?*libros*) imprimir)
     (send (nth$ (- (length$ ?*libros*) 1) ?*libros*) imprimir)
     (send (nth$ (- (length$ ?*libros*) 2) ?*libros*) imprimir)
)
	
	
