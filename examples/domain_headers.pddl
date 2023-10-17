;;; TO ADD TO EACH DOMAIN FILE ONCE MERGED

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Lights Out
;;; Lights Out game playing domain
;;;
;;; Authored by "Team 103", Unimelb 2023 Sem 2
;;; 
;;; Description:
;;; Lights Out, or "Flippuzzle" as we have referred to it a few times, is a grid 
;;; based puzzle game where a player aims to flip the tiles on a square board 
;;; until they are all in an 'off' or 'on' state depending on the game. 
;;; The catch is, when a tile is flipped all adjacent neighbour tiles will also 
;;; toggle state in a 'plus' like shape. The current PDDL solver can solve all
;;; possible 3x3 sized boards, however cannot solve 5x5 due to timing out.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Traffic Rush
;;; Traffic Rush game playing domain
;;;
;;; Authored by "Team 103", Unimelb 2023 Sem 2
;;;
;;; Description:
;;; Traffic Rush, or "Rush Hour" as the actually sold game is known, is a grid 
;;; based puzzle game in which there exists a set of objects of varying tile
;;; length, called cars, which can only be moved around along one axis of the 2D
;;; grid. The aim of the game is to move the cars around to allow one key car to
;;; reach a goal position. 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Sokoban
;;; Sokoban game playing domain
;;;
;;; Authored by "Team 103", Unimelb 2023 Sem 2
;;;
;;; Description:
;;; Sokoban is a 2D grid based Japanese puzzle game, designed in 1981. Its title 
;;; translates to 'warehouse keeper'. The player controls a character who must 
;;; push every box onto every storage location. The boxes can be pushed, but not
;;; pulled; the challenge is to think several steps ahead, and avoid getting 
;;; stuck in a state from which it is impossible to progress.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Bloxorz
;;; Bloxorz game playing domain
;;;
;;; Authored by "Team 103", Unimelb 2023 Sem 2
;;;
;;; Description:
;;; Bloxorz is traditionally a pseudo 3D puzzle game where a 2 by 1 rectangular
;;; prisim flips and rotates around a tighly designed 2D course to orient itself
;;;	correctly to fall into a 1 by 1 hole. The trick with representing this as a 
;;; 2D grid based problem is finding the optimal way to model the block standing
;;; vertically and then represent this visually.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
