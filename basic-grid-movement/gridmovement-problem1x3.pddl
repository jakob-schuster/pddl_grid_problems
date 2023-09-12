(define (problem moveit)
    (:domain gridMovement)
    
    (:objects 
        player 
        loc1_1 loc1_2 loc1_3
        tile1_1 tile1_2 tile1_3
    )
    (:init
        (entity player)
        
        (pos loc1_1)
        (pos loc1_2)
        (pos loc1_3)
        
        (connected loc1_1 loc1_2)
        (connected loc1_2 loc1_3)
        
        (at tile1_1 loc1_1)
        (at tile1_2 loc1_2)
        (at tile1_3 loc1_3)
        
        (at player loc1_1)
    )
    (:goal (at player loc1_3))
)

