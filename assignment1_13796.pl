candidate_number(13796).

q1(ailp_start_position(p(X,Y))).

q2a(new_pos(p(1,1),e,p(x1,y1))).
q2b(109).

q3([s,e,w,n]).

q4a([p(1, 4), p(2, 4), p(3, 4), p(4, 4), p(4, 3), p(3, 3), p(2, 3), p(1, 3), p(1, 2)]).
q4b([p(1, 4), p(2, 4), p(3, 4), p(4, 4), p(4, 3), p(3, 3), p(2, 3), p(1, 3), p(1, 2), p(1, 1), p(2, 1), p(2, 2), p(3, 2)]).
q4c([p(1, 4), p(2, 4), p(3, 4), p(4, 4), p(4, 3), p(3, 3), p(2, 3), p(1, 3), p(1, 2), p(2, 2), p(3, 2), p(4, 2), p(4, 1), p(3, 1), p(2, 1), p(1, 1)]).
q4d([p(1, 4), p(2, 4), p(3, 4), p(4, 4), p(4, 3), p(3, 3), p(2, 3), p(1, 3), p(1, 2), p(1, 1), p(2, 1), p(2, 2), p(3, 2), p(4, 2), p(4, 1), p(3, 1)]).

q5_corner_move() :-
	ailp_start_position(p(X,Y)),
	ailp_show_move(p(X,Y),p(4,4)),
	ailp_show_move(p(4,4),p(4,1)),
	ailp_show_move(p(4,1),p(1,1)),
	ailp_show_move(p(1,1),p(X,Y)),
	q5_corner_move().


q5_corner_move2() :-
	%retractall(ailp_grid_size(L)),
	%retractall(ailp_start_position(P)),
	%assert(ailp_start_position(p(1,1))),
	%assert(ailp_grid_size(34)),
	ailp_grid_size(U),
	ailp_start_position(p(X,Y)),
	ailp_show_move(p(X,Y),p(1,U)),
	ailp_show_move(p(1,U),p(U,U)),
	ailp_show_move(p(U,U),p(U,1)),
	ailp_show_move(p(U,1),p(1,1)).

test() :-
	ailp_grid_size(U),
	ailp_start_position(p(X,Y)),
	(X = 1, Y = 1 -> X1 = X,  Y1 = U
	;X = 1, Y=/1 -> X1 = U,  Y1 = Y
	;X /=1, Y = 1 -> X1 is 1, Y1 = Y
	;X /=1, Y /=1 -> X1 = X,  Y1 is 1  
	),
	ailp_show_move(p(X,Y),p(X1,Y1)).



%use ; to create a requery.