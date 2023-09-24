(define (problem template1)
    (:domain grid)
    (:objects
        pos1_1 pos1_2 pos1_3 pos1_4 pos1_5 pos1_6 pos1_7 pos1_8 pos1_9 pos1_10 
        pos2_1 pos2_2 pos2_3 pos2_4 pos2_5 pos2_6 pos2_7 pos2_8 pos2_9 pos2_10 
        pos3_1 pos3_2 pos3_3 pos3_4 pos3_5 pos3_6 pos3_7 pos3_8 pos3_9 pos3_10 
        pos4_1 pos4_2 pos4_3 pos4_4 pos4_5 pos4_6 pos4_7 pos4_8 pos4_9 pos4_10 
        pos5_1 pos5_2 pos5_3 pos5_4 pos5_5 pos5_6 pos5_7 pos5_8 pos5_9 pos5_10 
        pos6_1 pos6_2 pos6_3 pos6_4 pos6_5 pos6_6 pos6_7 pos6_8 pos6_9 pos6_10 
        - pos
        mov_player1 mov_player2 - movable
    )
    (:init
        
    (at mov_player1 pos2_1)
    (at_above mov_player2 pos2_1)
    
    (position pos1_1)
    (position pos1_2)
    (position pos1_3)
    (position pos1_4)
    (position pos1_5)
    (position pos1_6)
    (position pos1_7)
    (position pos1_8)
    (position pos1_9)
    (position pos1_10)
    (position pos2_1)
    (position pos2_2)
    (position pos2_3)
    (position pos2_4)
    (position pos2_5)
    (position pos2_6)
    (position pos2_7)
    (position pos2_8)
    (position pos2_9)
    (position pos2_10)
    (position pos3_1)
    (position pos3_2)
    (position pos3_3)
    (position pos3_4)
    (position pos3_5)
    (position pos3_6)
    (position pos3_7)
    (position pos3_8)
    (position pos3_9)
    (position pos3_10)
    (position pos4_1)
    (position pos4_2)
    (position pos4_3)
    (position pos4_4)
    (position pos4_5)
    (position pos4_6)
    (position pos4_7)
    (position pos4_8)
    (position pos4_9)
    (position pos4_10)
    (position pos5_1)
    (position pos5_2)
    (position pos5_3)
    (position pos5_4)
    (position pos5_5)
    (position pos5_6)
    (position pos5_7)
    (position pos5_8)
    (position pos5_9)
    (position pos5_10)
    (position pos6_1)
    (position pos6_2)
    (position pos6_3)
    (position pos6_4)
    (position pos6_5)
    (position pos6_6)
    (position pos6_7)
    (position pos6_8)
    (position pos6_9)
    (position pos6_10)
    (right pos1_1 pos2_1)
    (up pos1_1 pos1_2)
    (right pos1_2 pos2_2)
    (down pos1_2 pos1_1)
    (up pos1_2 pos1_3)
    (right pos1_3 pos2_3)
    (down pos1_3 pos1_2)
    (up pos1_3 pos1_4)
    (right pos1_4 pos2_4)
    (down pos1_4 pos1_3)
    (up pos1_4 pos1_5)
    (right pos1_5 pos2_5)
    (down pos1_5 pos1_4)
    (up pos1_5 pos1_6)
    (right pos1_6 pos2_6)
    (down pos1_6 pos1_5)
    (up pos1_6 pos1_7)
    (right pos1_7 pos2_7)
    (down pos1_7 pos1_6)
    (up pos1_7 pos1_8)
    (right pos1_8 pos2_8)
    (down pos1_8 pos1_7)
    (up pos1_8 pos1_9)
    (right pos1_9 pos2_9)
    (down pos1_9 pos1_8)
    (up pos1_9 pos1_10)
    (right pos1_10 pos2_10)
    (down pos1_10 pos1_9)
    (left pos2_1 pos1_1)
    (right pos2_1 pos3_1)
    (up pos2_1 pos2_2)
    (left pos2_2 pos1_2)
    (right pos2_2 pos3_2)
    (down pos2_2 pos2_1)
    (up pos2_2 pos2_3)
    (left pos2_3 pos1_3)
    (right pos2_3 pos3_3)
    (down pos2_3 pos2_2)
    (up pos2_3 pos2_4)
    (left pos2_4 pos1_4)
    (right pos2_4 pos3_4)
    (down pos2_4 pos2_3)
    (up pos2_4 pos2_5)
    (left pos2_5 pos1_5)
    (right pos2_5 pos3_5)
    (down pos2_5 pos2_4)
    (up pos2_5 pos2_6)
    (left pos2_6 pos1_6)
    (right pos2_6 pos3_6)
    (down pos2_6 pos2_5)
    (up pos2_6 pos2_7)
    (left pos2_7 pos1_7)
    (right pos2_7 pos3_7)
    (down pos2_7 pos2_6)
    (up pos2_7 pos2_8)
    (left pos2_8 pos1_8)
    (right pos2_8 pos3_8)
    (down pos2_8 pos2_7)
    (up pos2_8 pos2_9)
    (left pos2_9 pos1_9)
    (right pos2_9 pos3_9)
    (down pos2_9 pos2_8)
    (up pos2_9 pos2_10)
    (left pos2_10 pos1_10)
    (right pos2_10 pos3_10)
    (down pos2_10 pos2_9)
    (left pos3_1 pos2_1)
    (right pos3_1 pos4_1)
    (up pos3_1 pos3_2)
    (left pos3_2 pos2_2)
    (right pos3_2 pos4_2)
    (down pos3_2 pos3_1)
    (up pos3_2 pos3_3)
    (left pos3_3 pos2_3)
    (right pos3_3 pos4_3)
    (down pos3_3 pos3_2)
    (up pos3_3 pos3_4)
    (left pos3_4 pos2_4)
    (right pos3_4 pos4_4)
    (down pos3_4 pos3_3)
    (up pos3_4 pos3_5)
    (left pos3_5 pos2_5)
    (right pos3_5 pos4_5)
    (down pos3_5 pos3_4)
    (up pos3_5 pos3_6)
    (left pos3_6 pos2_6)
    (right pos3_6 pos4_6)
    (down pos3_6 pos3_5)
    (up pos3_6 pos3_7)
    (left pos3_7 pos2_7)
    (right pos3_7 pos4_7)
    (down pos3_7 pos3_6)
    (up pos3_7 pos3_8)
    (left pos3_8 pos2_8)
    (right pos3_8 pos4_8)
    (down pos3_8 pos3_7)
    (up pos3_8 pos3_9)
    (left pos3_9 pos2_9)
    (right pos3_9 pos4_9)
    (down pos3_9 pos3_8)
    (up pos3_9 pos3_10)
    (left pos3_10 pos2_10)
    (right pos3_10 pos4_10)
    (down pos3_10 pos3_9)
    (left pos4_1 pos3_1)
    (right pos4_1 pos5_1)
    (up pos4_1 pos4_2)
    (left pos4_2 pos3_2)
    (right pos4_2 pos5_2)
    (down pos4_2 pos4_1)
    (up pos4_2 pos4_3)
    (left pos4_3 pos3_3)
    (right pos4_3 pos5_3)
    (down pos4_3 pos4_2)
    (up pos4_3 pos4_4)
    (left pos4_4 pos3_4)
    (right pos4_4 pos5_4)
    (down pos4_4 pos4_3)
    (up pos4_4 pos4_5)
    (left pos4_5 pos3_5)
    (right pos4_5 pos5_5)
    (down pos4_5 pos4_4)
    (up pos4_5 pos4_6)
    (left pos4_6 pos3_6)
    (right pos4_6 pos5_6)
    (down pos4_6 pos4_5)
    (up pos4_6 pos4_7)
    (left pos4_7 pos3_7)
    (right pos4_7 pos5_7)
    (down pos4_7 pos4_6)
    (up pos4_7 pos4_8)
    (left pos4_8 pos3_8)
    (right pos4_8 pos5_8)
    (down pos4_8 pos4_7)
    (up pos4_8 pos4_9)
    (left pos4_9 pos3_9)
    (right pos4_9 pos5_9)
    (down pos4_9 pos4_8)
    (up pos4_9 pos4_10)
    (left pos4_10 pos3_10)
    (right pos4_10 pos5_10)
    (down pos4_10 pos4_9)
    (left pos5_1 pos4_1)
    (right pos5_1 pos6_1)
    (up pos5_1 pos5_2)
    (left pos5_2 pos4_2)
    (right pos5_2 pos6_2)
    (down pos5_2 pos5_1)
    (up pos5_2 pos5_3)
    (left pos5_3 pos4_3)
    (right pos5_3 pos6_3)
    (down pos5_3 pos5_2)
    (up pos5_3 pos5_4)
    (left pos5_4 pos4_4)
    (right pos5_4 pos6_4)
    (down pos5_4 pos5_3)
    (up pos5_4 pos5_5)
    (left pos5_5 pos4_5)
    (right pos5_5 pos6_5)
    (down pos5_5 pos5_4)
    (up pos5_5 pos5_6)
    (left pos5_6 pos4_6)
    (right pos5_6 pos6_6)
    (down pos5_6 pos5_5)
    (up pos5_6 pos5_7)
    (left pos5_7 pos4_7)
    (right pos5_7 pos6_7)
    (down pos5_7 pos5_6)
    (up pos5_7 pos5_8)
    (left pos5_8 pos4_8)
    (right pos5_8 pos6_8)
    (down pos5_8 pos5_7)
    (up pos5_8 pos5_9)
    (left pos5_9 pos4_9)
    (right pos5_9 pos6_9)
    (down pos5_9 pos5_8)
    (up pos5_9 pos5_10)
    (left pos5_10 pos4_10)
    (right pos5_10 pos6_10)
    (down pos5_10 pos5_9)
    (left pos6_1 pos5_1)
    (up pos6_1 pos6_2)
    (left pos6_2 pos5_2)
    (down pos6_2 pos6_1)
    (up pos6_2 pos6_3)
    (left pos6_3 pos5_3)
    (down pos6_3 pos6_2)
    (up pos6_3 pos6_4)
    (left pos6_4 pos5_4)
    (down pos6_4 pos6_3)
    (up pos6_4 pos6_5)
    (left pos6_5 pos5_5)
    (down pos6_5 pos6_4)
    (up pos6_5 pos6_6)
    (left pos6_6 pos5_6)
    (down pos6_6 pos6_5)
    (up pos6_6 pos6_7)
    (left pos6_7 pos5_7)
    (down pos6_7 pos6_6)
    (up pos6_7 pos6_8)
    (left pos6_8 pos5_8)
    (down pos6_8 pos6_7)
    (up pos6_8 pos6_9)
    (left pos6_9 pos5_9)
    (down pos6_9 pos6_8)
    (up pos6_9 pos6_10)
    (left pos6_10 pos5_10)
    (down pos6_10 pos6_9)

    )
    (:goal
        (or
            (and 
                (at mov_player1 pos5_5)
                (at_above mov_player2 pos5_5))
            (and 
                (at mov_player2 pos5_5)
                (at_above mov_player1 pos5_5))
        )
    )
)