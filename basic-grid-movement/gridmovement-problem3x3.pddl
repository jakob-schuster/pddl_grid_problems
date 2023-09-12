(define (problem moveit)
    (:domain gridMovement)
    
    (:objects 
        player 
        loc1_1 loc1_2 loc1_3 loc2_1 loc2_2 loc2_3 loc3_1 loc3_2 loc3_3
        t1 t2 t3 t4 t5 t6 t7 t8 t9
    )
    (:init
        (entity player)
        
        (tile t1)
        (tile t2)
        (tile t3)
        (tile t4)
        (tile t5)
        (tile t6)
        (tile t7)
        (tile t8)
        (tile t9)
        
        (pos loc1_1)        
        (pos loc1_2)
        (pos loc1_3)
        (pos loc2_1)
        (pos loc2_2)
        (pos loc2_3)
        (pos loc3_1)
        (pos loc3_2)
        (pos loc3_3)
        
;; make sure these are constants or objects:
;; loc1_1 loc1_2 loc1_3 loc2_1 loc2_2 loc2_3 loc3_1 loc3_2 loc3_3

        (connected loc1_1 loc2_1)
        (connected loc1_1 loc1_2)
        (connected loc1_2 loc2_2)
        (connected loc1_2 loc1_3)
        (connected loc1_3 loc2_3)
        (connected loc2_1 loc3_1)
        (connected loc2_1 loc2_2)
        (connected loc2_2 loc3_2)
        (connected loc2_2 loc2_3)
        (connected loc2_3 loc3_3)
        (connected loc3_1 loc3_2)
        (connected loc3_2 loc3_3)
        
        (at t1 loc1_1)
        (at t2 loc1_2)
        (at t3 loc1_3)
        (at t4 loc2_1)
        (at t5 loc2_2)
        (at t6 loc2_3)
        (at t7 loc3_1)
        (at t8 loc3_2)
        (at t9 loc3_3)
        
        (at player loc1_1)
    )
    (:goal (at player loc3_3))
)
