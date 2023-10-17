(define (problem flippuzzle-1)
    (:domain flippuzzle)
    
    (:objects 
        a b c d e f g h i
        ed1 ed2
        node1-1 node1-2 node1-3 node2-1 node2-2 node2-3 node3-1 node3-2 node3-3
    )
    
    (:init 
        (tile a) (tile b) (tile c) 
        (tile d) (tile e) (tile f) 
        (tile g) (tile h) (tile i)
        (edge ed1) (edge ed2)
        (position node1-1) (position node1-2) (position node1-3) 
        (position node2-1) (position node2-2) (position node2-3)
        (position node3-1) (position node3-2) (position node3-3)
        (at a node1-1) (at b node1-2) (at c node1-3) 
        (at d node2-1) (at e node2-2) (at f node2-3)
        (at g node3-1) (at h node3-2) (at i node3-3)
        (adj a b) (adj a d) (adj a ed1) (adj a ed2) ; corners have two edges
        (adj b a) (adj b c) (adj b e) (adj b ed1)   ; 1 edge
        (adj c b) (adj c f) (adj c ed1) (adj c ed2) ; corners have two edges
        (adj d a) (adj d e) (adj d g) (adj d ed1)   ; 1 edge
        (adj e b) (adj e d) (adj e f) (adj e h)     ; centre piece - no edges
        (adj f c) (adj f e) (adj f i) (adj f ed1)   ; 1 edge
        (adj g d) (adj g h) (adj g ed1) (adj g ed2) ; corners have two edges
        (adj h e) (adj h g) (adj h i) (adj h ed1)   ; 1 edge
        (adj i f) (adj i h) (adj i ed1) (adj i ed2) ; corners have two edges
        
        (on a) (on f) (on g) (on i)
    )
    
    (:goal 
        (and 
            (on a) (on b) (on c) (on d) (on e) (on f) (on g) (on h) (on i)
        )
    )
)