(define (domain template)
    (:requirements :strips :typing :equality)
    (:types 
        pos tile - object
        player wall button block - tile
    )
    (:predicates
        (grid ?p - pos)
        
        (up ?p1 - pos ?p2 - pos)
        (down ?p1 - pos ?p2 - pos)
        (left ?p1 - pos ?p2 - pos)
        (right ?p1 - pos ?p2 - pos)
        
        (at ?t - tile ?p - pos)
    )
    (:action move
        :parameters (?p - player ?from - pos ?to - pos)
        :precondition (and
            (at ?p ?from)
            (or 
                (up ?from ?to)
                (down ?from ?to)
                (left ?from ?to)
                (right ?from ?to)
            )
            (not (exists (?t - tile) (at ?t ?to)))
        )
        :effect (and (at ?p ?to) (not (at ?p ?from)))
    )
    ; (:action move-block
    ;     :parameters (?p - block ?from - pos ?to - pos)
    ;     :precondition (and
    ;         (at ?p ?from)
    ;         (or 
    ;             (up ?from ?to)
    ;             (down ?from ?to)
    ;             (left ?from ?to)
    ;             (right ?from ?to)
    ;         )
    ;         (not (exists (?t - tile) (at ?t ?to)))
    ;     )
    ;     :effect (and (at ?p ?to) (not (at ?p ?from)))
    ; )
    (:action push
        :parameters (
            ?ply - player ?ply-from - pos ?ply-to - pos 
            ?blk - block ?blk-to - pos
        )
        :precondition (and 
            (at ?ply ?ply-from)
            (at ?blk ?ply-to)
            (or 
                (and (up ?ply-from ?ply-to) (up ?ply-to ?blk-to))
                (and (down ?ply-from ?ply-to) (down ?ply-to ?blk-to))
                (and (left ?ply-from ?ply-to) (left ?ply-to ?blk-to))
                (and (right ?ply-from ?ply-to) (right ?ply-to ?blk-to))
            )
        )
        :effect (and
            
            (not (at ?ply ?ply-from))
            (not (at ?blk ?ply-to))
            (at ?ply ?ply-to)
            (at ?blk ?blk-to)
        )
    )
)