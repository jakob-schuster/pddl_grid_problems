;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Lights Out
;;; Lights Out game playing domain
;;;
;;; Authored by "Team 103", Unimelb 2023 Sem 2
;;; 
;;; Description:
;;; Lights Out, or "Flippuzzle" as we have referred to it a few times, is a grid 
;;; based puzzle game where a player aims to flip the tiles on a square board 
;;; until they are all in an 'off' or 'on' state depending on the game. 
;;; The catch is, when a tile is flipped all adjacent neighbour tiles will also 
;;; toggle state in a 'plus' like shape. The current PDDL solver can solve all
;;; possible 3x3 sized boards, however cannot solve 5x5 due to timing out.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain flippuzzle)
    (:requirements :adl :strips :equality)

    (:predicates 
        (tile ?t)
        (edge ?t)
        (position ?p)
        (at ?t ?p)
        (on ?t)
        (adj ?t ?t)
    )
  
    (:action toggleplus
        :parameters (?t ?a1 ?a2 ?a3 ?a4)
                 
                 
        :precondition (
            and
                ; plus operation can only be applied starting from tiles
                (tile ?t) 
                ; check adjacenies are tiles or empty edges
                (or (tile ?a1) (edge ?a1)) (adj ?t ?a1)
                (or (tile ?a2) (edge ?a2)) (adj ?t ?a2)
                (or (tile ?a3) (edge ?a3)) (adj ?t ?a3)
                (or (tile ?a4) (edge ?a4)) (adj ?t ?a4)
                
                ; check adjacencies are all unique
                (not 
                    (or 
                        (= ?a1 ?a2) (= ?a1 ?a3) (= ?a1 ?a4)
                        (= ?a2 ?a3) (= ?a2 ?a4) (= ?a3 ?a4)
                    )
                )
        )
                 
        :effect (
            and 
                ; flip centre tile
                (when (not (on ?t)) (on ?t))
                (when (on ?t) (not (on ?t)))
                
                
                ; check if adjacency is a tile and flip if so
                (when 
                    (and 
                        (tile ?a1) (not (on ?a1))
                    ) 
                    (on ?a1)
                )
                (when (and (tile ?a1) (on ?a1)) (not (on ?a1)))
                
                ; the above check for other plus tiles
                (when (and (tile ?a2) (not (on ?a2))) (on ?a2))
                (when (and (tile ?a2) (on ?a2)) (not (on ?a2)))
                (when (and (tile ?a3) (not (on ?a3))) (on ?a3))
                (when (and (tile ?a3) (on ?a3)) (not (on ?a3)))
                (when (and (tile ?a4) (not (on ?a4))) (on ?a4))
                (when (and (tile ?a4) (on ?a4)) (not (on ?a4)))
        
                ; typing investigation here could make this much much more streamlined, e.g.:
        		;  :effect (forall (?tile - tile_inst) (on ?tile) .....
        )
    )
)
