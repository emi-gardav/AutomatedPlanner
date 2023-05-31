(define (problem win-match)
  (:domain TICTACTOE)
  (:objects
    cross circle npc - player ;Símbolos
    A1 A2 A3 A4 A5 A6 A7 A8 A9 - location ;Casillas
  )
  (:init

     ;Soluciones verticales ganadoras:
     (connected A1 A4 A7)
     (connected A2 A5 A8)
     (connected A3 A6 A9)

     ;Soluciones diagonales ganadoras:
     (connected A1 A5 A9)
     (connected A3 A5 A7)

     ;Soluciones horizontales ganadoras:
     (connected A1 A2 A3)
     (connected A4 A5 A6)
     (connected A7 A8 A9)
     
     ;Casillas libres
     (unplaced A2)
     (unplaced A3)
     (unplaced A4)
     (unplaced A5)
     (unplaced A6)
     (unplaced A1)
	
     ;Casillas ocupadas
     (at circle A9) 
     (at circle A8) 
     (at circle A7) 
  )

  (:goal (and (line cross) (line npc)))
)