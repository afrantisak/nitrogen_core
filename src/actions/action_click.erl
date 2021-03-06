% vim: sw=4 ts=4 et ft=erlang
% Nitrogen Web Framework for Erlang
% Copyright (c) 2014 Jesse Gumm
% See MIT-LICENSE for licensing information.

-module (action_click).
-include("wf.hrl").
-export([
	render_action/1
]).

render_action(Record) ->
    Target = Record#click.target,
    wf:f(<<"var o = obj('~s'); if(o && typeof(o.click) == 'function') {o.focus(); o.click();} ">>,[Target]).
