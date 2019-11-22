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
     (send (nth$ ?i ?v) print)
	 (printout t crlf)
   )
 )
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
    (defrule number-of-pages
   	(declare (salience 20))	
	=> 
	(bind ?response (ask-question-number "How many pages will the book has? (Doesn't matter -1)  "))
	(if (> ?response 300) then (assert (size-book little-book))
	else if (= ?response -1) then (assert (size-book no-care))
	else (assert (size-book long-book))
    )
    )
	


;;;;;;;;;;;; REGLAS DE ASOCIACION ;;;;;;;;;;;;;;;;
	
(defrule size_book ""
    (size-book long-book) 
	=> (bind ?libro (find-instance ((?inst Libro)) (> ?inst:number_of_pages 10)))
	(send ?libro caracteristics)
    )
	
	
