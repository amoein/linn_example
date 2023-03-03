-module(linn_example_sup).

-behaviour(supervisor).

%% API
-export([start_link/0, get_pid/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

-include_lib("linn/include/linn.hrl").

%%====================================================================
%% API functions
%%====================================================================
start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================
init([]) ->
    Opts = #option{
        pool_id = linn_test,
        handler_module = linn_example_test,
        handler_func = start_link,
        handler_func_arity = [],
        process_count = 4
    },
    linn:add_pool(Opts),
    {ok, {{one_for_all, 0, 1}, []}}.

%%====================================================================
%% Internal functions
%%====================================================================
get_pid() ->
    linn:get_process(linn_test).
