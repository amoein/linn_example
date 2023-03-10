-module(linn_example_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    application:ensure_started(linn),
    linn_example_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.
