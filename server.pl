#!/usr/bin/env swipl

:- use_module(library(http/http_server)).

:- initialization(main).

:- http_handler(root(.), test_route, [methods([get])]).

test_route(Request) :-
    http_reply_file('./blabla.html', [], Request).

main(_) :-
   http_server([port(6363)]).
