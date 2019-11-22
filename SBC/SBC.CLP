;;;PARA EJECUTAR batch ((batch "carga.clp"))
;;;;;;;;;;;;;;;;;;;;;;;;; ONTOLOGIA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Thu Nov 21 22:59:16 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lenguaje
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 0 1)
;+		(inverse-slot inverse_of_lenguaje)
		(create-accessor read-write))
	(multislot dibujo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Dibujado_por)
		(create-accessor read-write))
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot participa_como_principal_en
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Personaje_principal)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publish_date
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Title
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot pertenece_al_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(inverse-slot libros_del_genero)
		(create-accessor read-write))
	(single-slot KB_395446_Class69
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libros_del_genero
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot pertenece_al_genero)
		(create-accessor read-write))
	(multislot escrito_por
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(inverse-slot escribio)
		(create-accessor read-write))
	(single-slot estado_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Subtitle
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_secundario_en
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Personajes_secundarios)
		(create-accessor read-write))
	(single-slot number_of_pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Dibujado_por
		(type INSTANCE)
;+		(allowed-classes Dibujante)
;+		(inverse-slot dibujo)
		(create-accessor read-write))
	(single-slot a%C3%B1os
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot inverse_of_lenguaje
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot lenguaje)
		(create-accessor read-write))
	(single-slot escribio
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot escrito_por)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Personajes_secundarios
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot participa_como_secundario_en)
		(create-accessor read-write))
	(single-slot Personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot participa_como_principal_en)
		(create-accessor read-write))
	(single-slot Identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_395446_Class43
		(type STRING)
;+		(cardinality 0 1)
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
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publish_date
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Title
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot pertenece_al_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot number_of_pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Dibujado_por
		(type INSTANCE)
;+		(allowed-classes Dibujante)
		(create-accessor read-write))
	(single-slot Personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Personajes_secundarios
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lenguaje
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escrito_por
		(type INSTANCE)
;+		(allowed-classes Escritor)
		(create-accessor read-write))
	(single-slot Subtitle
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona "Clase generica que representa a todo tipo de persona tanto escritor como dibujante."
	(is-a USER)
	(role concrete)
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dibujante
	(is-a Persona)
	(role concrete)
	(multislot dibujo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Escritor
	(is-a Persona)
	(role concrete)
	(single-slot escribio
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Idioma
	(is-a USER)
	(role concrete)
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot inverse_of_lenguaje
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Personaje "Caracterísitcas del personaje"
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot a%C3%B1os
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_principal_en
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_secundario_en
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Animo "Estado de animo"
	(is-a USER)
	(role concrete)
	(single-slot estado_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Publico
	(is-a USER)
	(role concrete)
	(single-slot Identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tiempo
	(is-a USER)
	(role concrete)
	(single-slot identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libros_del_genero
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))



;;;;;;;;;;;;;;;;;;;;;;;;; INSTANCIAS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Thu Nov 21 22:59:16 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")

([KB_395446_Class114] of  Libro

	(adaptada_a_cine FALSE)
	(escrito_por [KB_395446_Class115])
	(number_of_pages 328)
	(pertenece_al_genero
		[KB_395446_Class130]
		[KB_395446_Class131]
		[KB_395446_Class132]
		[KB_395446_Class133])
	(precio 0)
	(publish_date 1984)
	(Title "Nineteen Eighty-Four"))

([KB_395446_Class115] of  Escritor

	(escribio [KB_395446_Class114])
	(name "George Orwell"))

([KB_395446_Class125] of  Libro

	(adaptada_a_cine FALSE)
	(escrito_por [KB_395446_Class134])
	(number_of_pages 218)
	(pertenece_al_genero
		[KB_395446_Class135]
		[KB_395446_Class136]
		[KB_395446_Class137])
	(precio 0)
	(publish_date 1925)
	(Title "The Great Gatsby"))

([KB_395446_Class130] of  Genero

	(libros_del_genero [KB_395446_Class114])
	(nombre "Science Fiction"))

([KB_395446_Class131] of  Genero

	(libros_del_genero [KB_395446_Class114])
	(nombre "Dystopian Fiction"))

([KB_395446_Class132] of  Genero

	(libros_del_genero [KB_395446_Class114])
	(nombre "Social science fiction"))

([KB_395446_Class133] of  Genero

	(libros_del_genero [KB_395446_Class114])
	(nombre "Political fiction"))

([KB_395446_Class134] of  Escritor

	(escribio [KB_395446_Class125])
	(name "F. Scott Fitzgerald"))

([KB_395446_Class135] of  Genero

	(libros_del_genero
		[KB_395446_Class125]
		[KB_395446_Class138]
		[KB_395446_Class144])
	(nombre "Novel"))

([KB_395446_Class136] of  Genero

	(libros_del_genero [KB_395446_Class125])
	(nombre "Tragedy"))

([KB_395446_Class137] of  Genero

	(libros_del_genero [KB_395446_Class125])
	(nombre "Psychological Fiction"))

([KB_395446_Class138] of  Libro

	(escrito_por [KB_395446_Class147])
	(number_of_pages 281)
	(pertenece_al_genero
		[KB_395446_Class135]
		[KB_395446_Class139]
		[KB_395446_Class140]
		[KB_395446_Class141]
		[KB_395446_Class142]
		[KB_395446_Class143])
	(precio 0)
	(primera_persona FALSE)
	(publish_date 1960)
	(Title "To Kill a Mockingbird"))

([KB_395446_Class139] of  Genero

	(libros_del_genero [KB_395446_Class138])
	(nombre "Bildungsroman"))

([KB_395446_Class140] of  Genero

	(libros_del_genero [KB_395446_Class138])
	(nombre "Thriller"))

([KB_395446_Class141] of  Genero

	(libros_del_genero [KB_395446_Class138])
	(nombre "Domestic Fiction"))

([KB_395446_Class142] of  Genero

	(libros_del_genero [KB_395446_Class138])
	(nombre "Southern Gothic"))

([KB_395446_Class143] of  Genero

	(libros_del_genero [KB_395446_Class138])
	(nombre "Legal Story"))

([KB_395446_Class144] of  Libro

	(adaptada_a_cine FALSE)
	(escrito_por [KB_395446_Class148])
	(number_of_pages 464)
	(pertenece_al_genero
		[KB_395446_Class135]
		[KB_395446_Class145]
		[KB_395446_Class146])
	(precio 0)
	(publish_date 1939)
	(Title "The Grapes of Wrath"))

([KB_395446_Class145] of  Genero

	(libros_del_genero [KB_395446_Class144])
	(nombre "Literary realism"))

([KB_395446_Class146] of  Genero

	(libros_del_genero [KB_395446_Class144])
	(nombre "Historical Fiction"))

([KB_395446_Class147] of  Escritor

	(escribio [KB_395446_Class138])
	(name "Harper Lee"))

([KB_395446_Class148] of  Escritor

	(escribio [KB_395446_Class144])
	(name "John Steinbeck"))

; Thu Nov 21 22:59:16 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot novela_independiente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lenguaje
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 0 1)
;+		(inverse-slot inverse_of_lenguaje)
		(create-accessor read-write))
	(multislot dibujo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot Dibujado_por)
		(create-accessor read-write))
	(single-slot precio
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot participa_como_principal_en
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Personaje_principal)
		(create-accessor read-write))
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publish_date
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Title
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot pertenece_al_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
;+		(inverse-slot libros_del_genero)
		(create-accessor read-write))
	(single-slot KB_395446_Class69
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot libros_del_genero
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot pertenece_al_genero)
		(create-accessor read-write))
	(multislot escrito_por
		(type INSTANCE)
;+		(allowed-classes Escritor)
;+		(inverse-slot escribio)
		(create-accessor read-write))
	(single-slot estado_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Subtitle
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_secundario_en
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot Personajes_secundarios)
		(create-accessor read-write))
	(single-slot number_of_pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Dibujado_por
		(type INSTANCE)
;+		(allowed-classes Dibujante)
;+		(inverse-slot dibujo)
		(create-accessor read-write))
	(single-slot a%C3%B1os
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot inverse_of_lenguaje
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(inverse-slot lenguaje)
		(create-accessor read-write))
	(single-slot escribio
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
;+		(inverse-slot escrito_por)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Personajes_secundarios
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot participa_como_secundario_en)
		(create-accessor read-write))
	(single-slot Personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
;+		(inverse-slot participa_como_principal_en)
		(create-accessor read-write))
	(single-slot Identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_395446_Class43
		(type STRING)
;+		(cardinality 0 1)
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
	(single-slot primera_persona
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot publish_date
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot adaptada_a_cine
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Title
;+		(comment "titulo del libro")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot pertenece_al_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot number_of_pages
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Dibujado_por
		(type INSTANCE)
;+		(allowed-classes Dibujante)
		(create-accessor read-write))
	(single-slot Personaje_principal
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Personajes_secundarios
		(type INSTANCE)
;+		(allowed-classes Personaje)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot best_seller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot lenguaje
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Mundo_real
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot escrito_por
		(type INSTANCE)
;+		(allowed-classes Escritor)
		(create-accessor read-write))
	(single-slot Subtitle
;+		(comment "subtitulo del libro")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Persona "Clase generica que representa a todo tipo de persona tanto escritor como dibujante."
	(is-a USER)
	(role concrete)
	(single-slot name_
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Dibujante
	(is-a Persona)
	(role concrete)
	(multislot dibujo
		(type INSTANCE)
;+		(allowed-classes Libro)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Escritor
	(is-a Persona)
	(role concrete)
	(single-slot escribio
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Idioma
	(is-a USER)
	(role concrete)
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot inverse_of_lenguaje
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Personaje "CaracterÃ­sitcas del personaje"
	(is-a USER)
	(role concrete)
	(single-slot Nombre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Sexualidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot a%C3%B1os
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_principal_en
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot genero_sexual
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot participa_como_secundario_en
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Animo "Estado de animo"
	(is-a USER)
	(role concrete)
	(single-slot estado_animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Publico
	(is-a USER)
	(role concrete)
	(single-slot Identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tiempo
	(is-a USER)
	(role concrete)
	(single-slot identificador
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot libros_del_genero
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))


;;****************
;;* DEFFUNCTIONS *
;;****************
(defmesssage-handler Libro caracteristics primary ()
     (printout "Las características del libro recomendado son:")
     (printout "Titulo:"  ?self:Title)
)

(deffunction imprime-todo (?v)
  (if (> (length$ ?v) 0) then
   (loop-for-count (?i 1 (length ?v))
	 (printout t (nth$ ?i ?v) crlf)
   )
 )
)

(deffunction ask-question-interval-2 (?question)
	(printout t ?question crlf)
	(bind ?answer2 (readline))
	(bind ?answer (str-explode ?answer2))
	(bind ?var1 (nth$ 1 ?answer))
	(bind ?var2 (nth$ 2 ?answer))
	(while   (and (and (neq (length$ ?answer) 2) (or (not (integerp ?var1)) (not (integerp ?var2))) ) (< ?var1 ?var2)) do
		(printout t ?question)
		(bind ?answer (read))
		(bind ?var (nth$ 1 ?answer))
		(bind ?var2 (nth$ 2 ?answer))
	)
	(return ?answer)
)

(deffunction ask-question-number (?question)
   (printout t ?question)
   (bind ?answer (read))
   (while (not (integerp ?answer)) do
      (printout t ?question)
      (bind ?answer (read)))
   (return ?answer)
)

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE 
       else FALSE))



;;;;;;;;;;;;; REGLAS DE ABSTRACCION ;;;;;;;;;;;;;;;;;;;;;;

    (defrule size-book
   	(declare (salience 19))	
	=> 
	(bind ?response (ask-question-number "How many pages will the book has? (Doesn't matter -1)  "))
	(if (< ?response 400) then (assert (size_book little-book))
	else if (= ?response -1) then (assert (size_book no-care))
	else (assert (size-book long-book))
    )
    )
;	(defrule language
;	(declare (salience 21))
;	=>
;	(bind ?response (ask-question "En que idioma prefieres que este escrito la version original del libro(Español, ingles, no me importa)")

	(defrule time-book
	(declare (salience 21))
	=>
	(bind ?response (ask-question "En que epoca quieres que se desarolle la historia?(pasado,presente,futuro, no_importa)" past present future no-care))
	(if (eq ?response past) then (assert (time_book past))
	else if (eq ?response present) then (assert (time_book present))
	else if (eq ?response future) then (assert (time_book future))
	else then (assert (time_book no-care))
	)
	)
	(defrule level-book
	(declare (salience 20))
	=>
	(bind ?response (ask-question "Dificultad del libro?(pasado,presente,futuro, no_importa)" easy medium hard no-care))
	(if (eq ?response past) then (assert (level_book easy))
	else if (eq ?response present) then (assert (level_book medium))
	else if (eq ?response future) then (assert (level_book hard))
	else then (assert (level_book no-care))
	)
	)
	
	(defrule price-book
	(declare (salience 18))
	=>
	(bind ?response (ask-question-interval-2 "Precio del libro?(pasado,presente,futuro, no_importa)" ))
	(imprime-todo ?response)
	)
	


;;;;;;;;;;;; REGLAS DE ASOCIACION ;;;;;;;;;;;;;;;;
	
(defrule size_book ""
    (size_book long-book) 
	=> (bind ?libro (find-instance ((?inst Libro)) (> ?inst:number_of_pages 10)))
	(send ?libro caracteristics)
    )
	
	
