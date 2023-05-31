;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; TicTacToe PDDL Domain
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain TICTACTOE)
  (:requirements :strips :typing)
  (:types player location)
  (:predicates (at ?p - player ?l - location)
		   (unplaced ?l - location)
		   (connected ?l1 - location ?l2 - location ?l3 - location)
             (line ?p - player)
		   (draw)
  )

  (:action PLACING
     :parameters (?p - player ?l - location)
     :precondition (and (unplaced ?l))
     :effect (and (at ?p ?l) (not (unplaced ?l)))
  )
  
  (:action LINE
     :parameters (?p - player ?l1 - location ?l2 - location ?l3 - location)
     :precondition (and (at ?p ?l1) (at ?p ?l2) (at ?p ?l3) (connected ?l1 ?l2 ?l3))
     :effect (line ?p)
  )

  ;;;(:action DRAW
     ;;;:parameters (?p - player ?l - location)
     ;;;:precondition (and (not (line ?p)) (not (unplaced ?l)))
     ;;;:effect (draw)
  ;;;)
)