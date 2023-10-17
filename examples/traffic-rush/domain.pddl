(define (domain template)
    (:requirements :strips :typing)
    (:types 
        pos tile - object
    )
    (:predicates
        (position ?p - pos)
        
        (up ?p1 - pos ?p2 - pos)
        (down ?p1 - pos ?p2 - pos)
        (left ?p1 - pos ?p2 - pos)
        (right ?p1 - pos ?p2 - pos)
        
        (at ?t - tile ?p - pos)
        
        (group-2 ?t1 - tile ?t2 - tile)
        (group-3 ?t1 - tile ?t2 - tile ?t3 - tile)
        
        (blue ?t - tile)
        (red ?t - tile)
        (yellow ?t - tile)
        (green ?t - tile)
        (wall ?t - tile)
    )
    (:action move-2
        :parameters (
            ?t1 ?t2 - tile 
            ?p1 ?p2 ?p3 - pos
        )
        :precondition (and
            (or (group-2 ?t1 ?t2) (group-2 ?t2 ?t1))
            (at ?t1 ?p1)
            (at ?t2 ?p2)
            (or
                (and (up ?p1 ?p2) (up ?p2 ?p3))
                (and (down ?p1 ?p2) (down ?p2 ?p3))
                (and (left ?p1 ?p2) (left ?p2 ?p3))
                (and (right ?p1 ?p2) (right ?p2 ?p3))
            )
            (not (exists (?t - tile) (at ?t ?p3)))
        )
        :effect (and
            (at ?t1 ?p2) (not (at ?t1 ?p1))
            (at ?t2 ?p3) (not (at ?t2 ?p2))
        )
    )
    (:action move-3
        :parameters (
            ?t1 ?t2 ?t3 - tile 
            ?p1 ?p2 ?p3 ?p4 - pos
        )
        :precondition (and
            (or (group-3 ?t1 ?t2 ?t3) (group-3 ?t3 ?t2 ?t1))
            (at ?t1 ?p1)
            (at ?t2 ?p2)
            (at ?t3 ?p3)
            (or
                (and (up ?p1 ?p2) (up ?p2 ?p3) (up ?p3 ?p4))
                (and (down ?p1 ?p2) (down ?p2 ?p3) (down ?p3 ?p4))
                (and (left ?p1 ?p2) (left ?p2 ?p3) (left ?p3 ?p4))
                (and (right ?p1 ?p2) (right ?p2 ?p3) (right ?p3 ?p4))
            )
            (not (exists (?t - tile) (at ?t ?p4)))
        )
        :effect (and
            (at ?t1 ?p2) (not (at ?t1 ?p1))
            (at ?t2 ?p3) (not (at ?t2 ?p2))
            (at ?t3 ?p4) (not (at ?t3 ?p3))
        )
    )
)