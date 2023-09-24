(define (domain grid)

    (:requirements
        :strips
        :typing
    )

    (:types
        entity pos - object
        movable tile - entity
        wall - tile
    )

    (:predicates
        (up ?p1 - pos ?p2 - pos)
        (down ?p1 - pos ?p2 - pos)
        (left ?p1 - pos ?p2 - pos)
        (right ?p1 - pos ?p2 - pos)
        (position ?p - pos)
        (at ?x - entity ?p - pos)
        (at_above ?x - entity ?p - pos)
        (blocked ?x - pos)
    )

    (:action move_flat_to_flat
        :parameters (
            ?x1 - movable ?x2 - movable
            ?from1 - pos ?from2 - pos
            ?to1 - pos ?to2 - pos
        )
        :precondition (
            and 
                (not (blocked ?to1)) 
                (not (blocked ?to2))
                (or 
                    (and
                        (at ?x1 ?from1)
                        (at ?x2 ?from2)
                        (up ?from1 ?from2)
                        (or
                            (and (left ?from1 ?to1) (left ?from2 ?to2))
                            (and (right ?from1 ?to1) (right ?from2 ?to2))
                        )
                        
                    )
                    (and
                        (at ?x1 ?from1)
                        (at ?x2 ?from2)
                        (left ?from1 ?from2)
                        (or
                            (and (up ?from1 ?to1) (up ?from2 ?to2))
                            (and (down ?from1 ?to1) (down ?from2 ?to2))
                        )
                        
                    )
            )
        )
        :effect (and 
            (at ?x1 ?to1) (not (at ?x1 ?from1))
            (at ?x2 ?to2) (not (at ?x2 ?from2))
        )
    )
    
    
    (:action move_flat_to_vert
        :parameters (
            ?x1 - movable ?x2 - movable
            ?from1 - pos ?from2 - pos
            ?to - pos
        )
        :precondition (
            or 
                (and
                    (not (blocked ?to))
                    (at ?x1 ?from1)
                    (at ?x2 ?from2)
                    (up ?from1 ?from2)
                    (or
                        (up ?from2 ?to)
                        (up ?to ?from1)
                    )
                )
                (and
                    (not (blocked ?to))
                    (at ?x1 ?from1)
                    (at ?x2 ?from2)
                    (left ?from1 ?from2)
                    (or
                        (left ?from2 ?to)
                        (left ?to ?from1)
                    )
                )
        )
        :effect (and 
            (at ?x1 ?to) (not (at ?x1 ?from1))
            (at_above ?x2 ?to) (not (at ?x2 ?from2))
        )
    )
    
    (:action move_vert_to_flat
        :parameters (
            ?x1 - movable ?x2 - movable
            ?from - pos
            ?to1 - pos ?to2 - pos
        )
        :precondition (
            and 
                (not (blocked ?to1))
                (not (blocked ?to1))
                (at ?x1 ?from)
                (at_above ?x2 ?from)
                (or 
                    (and (up ?from ?to1) (up ?to1 ?to2))
                    (and (down ?from ?to1) (down ?to1 ?to2))
                    (and (left ?from ?to1) (left ?to1 ?to2))
                    (and (right ?from ?to1) (right ?to1 ?to2))
                )
        )
        :effect (and 
            (at ?x1 ?to1) (not (at ?x1 ?from))
            (at ?x2 ?to2) (not (at_above ?x2 ?from))
        )
    )
)