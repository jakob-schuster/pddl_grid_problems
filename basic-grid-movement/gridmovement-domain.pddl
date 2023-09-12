(define (domain gridMovement)

    (:requirements
        :strips
    )

    (:predicates
        (pos ?p)
        (tile ?t)
        (entity ?p)
        (at ?e ?p)
        (connected ?x ?y)
    )

    (:action move
        :parameters (?e ?from ?to)
        :precondition (and 
            (entity ?e)
            (at ?e ?from)
            (pos ?to) 
            (connected ?from ?to)
        )
        :effect (and (not (at ?e ?from)) (at ?e ?to))
    )
)