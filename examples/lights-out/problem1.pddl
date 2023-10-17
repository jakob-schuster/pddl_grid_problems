(define (problem flippuzzle-1)
    (:domain flippuzzle)
    (:objects 
        pos_1_1 pos_1_2 pos_1_3 
        pos_2_1 pos_2_2 pos_2_3 
        pos_3_1 pos_3_2 pos_3_3 edge_1 edge_2 - tile
    )
    
    (:init 
        
        (position pos_1_1)
        (position pos_1_2)
        (position pos_1_3)
        (position pos_2_1)
        (position pos_2_2)
        (position pos_2_3)
        (position pos_3_1)
        (position pos_3_2)
        (position pos_3_3)
        
        
        (adj pos_1_1 pos_2_1)
        (adj pos_1_1 pos_1_2)
        (adj pos_1_2 pos_2_2)
        (adj pos_1_2 pos_1_3)
        (adj pos_1_2 pos_1_1)
        (adj pos_1_3 pos_2_3)
        (adj pos_1_3 pos_1_2)
        (adj pos_2_1 pos_3_1)
        (adj pos_2_1 pos_2_2)
        (adj pos_2_1 pos_1_1)
        (adj pos_2_2 pos_3_2)
        (adj pos_2_2 pos_2_3)
        (adj pos_2_2 pos_1_2)
        (adj pos_2_2 pos_2_1)
        (adj pos_2_3 pos_3_3)
        (adj pos_2_3 pos_1_3)
        (adj pos_2_3 pos_2_2)
        (adj pos_3_1 pos_3_2)
        (adj pos_3_1 pos_2_1)
        (adj pos_3_2 pos_3_3)
        (adj pos_3_2 pos_2_2)
        (adj pos_3_2 pos_3_1)
        (adj pos_3_3 pos_2_3)
        (adj pos_3_3 pos_3_2)
        
        (adj pos_1_1 edge_1)
        (adj pos_1_2 edge_1)
        (adj pos_1_3 edge_1)
        (adj pos_2_1 edge_1)
        (adj pos_2_3 edge_1)
        (adj pos_3_1 edge_1)
        (adj pos_3_2 edge_1)
        (adj pos_3_3 edge_1)
        
        (adj pos_1_1 edge_2)
        (adj pos_1_3 edge_2)
        (adj pos_3_1 edge_2)
        (adj pos_3_3 edge_2)
        
        (on pos_1_1) 
        (on pos_2_3) 
        (on pos_3_1) 
        (on pos_3_3)
    )
    (:goal 
        (and 
            (on pos_1_1)
            (on pos_1_2)
            (on pos_1_3)
            (on pos_2_1)
            (on pos_2_2)
            (on pos_2_3)
            (on pos_3_1)
            (on pos_3_2)
            (on pos_3_3)
        )
    )
)