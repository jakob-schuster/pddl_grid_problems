(define (problem flippuzzle-1)
(:domain flippuzzle)
(:objects a b c d e 
            f g h i j 
            k l m n o 
            p q r s t 
            u v w x y
            ed1 ed2
            
            node1-1 node1-2 node1-3 node1-4 node1-5
            node2-1 node2-2 node2-3 node2-4 node2-5
            node3-1 node3-2 node3-3 node3-4 node3-5
            node4-1 node4-2 node4-3 node4-4 node4-5
            node5-1 node5-2 node5-3 node5-4 node5-5
)
(:init (tile a) (tile b) (tile c) (tile d) (tile e) 
        (tile f) (tile g) (tile h) (tile i) (tile j) 
        (tile k) (tile l) (tile m) (tile n) (tile o)
        (tile p) (tile q) (tile r) (tile s) (tile t)
        (tile u) (tile v) (tile w) (tile x) (tile y)
        (edge ed1) (edge ed2)
        
        (position node1-1) (position node1-2) (position node1-3) (position node1-4) (position node1-5)
        (position node2-1) (position node2-2) (position node2-3) (position node2-4) (position node2-5)
        (position node3-1) (position node3-2) (position node3-3) (position node3-4) (position node3-5) 
        (position node4-1) (position node4-2) (position node4-3) (position node4-4) (position node4-5) 
        (position node5-1) (position node5-2) (position node5-3) (position node5-4) (position node5-5) 
        (at a node1-1) (at b node1-2) (at c node1-3) (at d node1-4) (at e node1-5)
        (at f node2-1) (at g node2-2) (at h node2-3) (at i node2-4) (at j node2-5)
        (at k node3-1) (at l node3-2) (at m node3-3) (at n node3-4) (at o node3-5)
        (at p node4-1) (at q node4-2) (at r node4-3) (at s node4-4) (at t node4-5)
        (at u node5-1) (at v node5-2) (at w node5-3) (at x node5-4) (at y node5-5)
        
        ; board set-up
        (adj a b) (adj a f) (adj a ed1) (adj a ed2) ; corners have two edges
        (adj b a) (adj b c) (adj b g) (adj b ed1)   ; 1 edge
        (adj c b) (adj c d) (adj c h) (adj c ed1)   ; 1 edge
        (adj d c) (adj d e) (adj d i) (adj d ed1)   ; 1 edge
        (adj e d) (adj e j) (adj e ed1) (adj e ed2) ; corners have two edges
        
        (adj f a) (adj f g) (adj f k) (adj f ed1)   ; 1 edge
        (adj g b) (adj g f) (adj g h) (adj g l) 
        (adj h c) (adj h g) (adj h i) (adj h m)  
        (adj i d) (adj i h) (adj i j) (adj i n) 
        (adj j e) (adj j i) (adj j o) (adj j ed1)   ; 1 edge
        
        (adj k f) (adj k l) (adj k p) (adj k ed1)   ; 1 edge
        (adj l g) (adj l k) (adj l m) (adj l q) 
        (adj m h) (adj m l) (adj m n) (adj m r)  
        (adj n i) (adj n m) (adj n o) (adj n s) 
        (adj o j) (adj o n) (adj o t) (adj o ed1)   ; 1 edge
        
        (adj p k) (adj p q) (adj p u) (adj p ed1)   ; 1 edge
        (adj q l) (adj q p) (adj q r) (adj q v) 
        (adj r m) (adj r q) (adj r s) (adj r w)  
        (adj s n) (adj s r) (adj s t) (adj s x) 
        (adj t o) (adj t s) (adj t y) (adj t ed1)   ; 1 edge
        
        (adj u p) (adj u v) (adj u ed1) (adj u ed2) ; corners have two edges
        (adj v q) (adj v u) (adj v w) (adj v ed1)   ; 1 edge
        (adj w r) (adj w v) (adj w x) (adj w ed1)   ; 1 edge
        (adj x s) (adj x w) (adj x y) (adj x ed1)   ; 1 edge
        (adj y t) (adj y x) (adj y ed1) (adj y ed2) ; corners have two edges
        
        ; (on e) 
        ; (on f) (on h) 
        ; (on k) (on m)
        ; (on s) (on t)
        ; (on v) (on w) (on y)
)
(:goal (and 
            (on y) (on t) (on x)
            ; (on a) (on b) (on c) (on d) (on e) 
            ; (on f) (on g) (on h) (on i) (on j)
            ; (on k) (on l) (on m) (on n) (on o)
            ; (on p) (on q) (on r) (on s) (on t)
            ; (on u) (on v) (on w) (on x) (on y)
        )
)

)