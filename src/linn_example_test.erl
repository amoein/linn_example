-module(linn_example_test).

-author("amoein").

-behaviour(gen_server).

%% API
-export([start_link/1]).

%% gen_server callbacks
-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3
]).

-record(state, {}).

%%%===================================================================
%%% API
%%%===================================================================
-spec start_link([]) ->
    {ok, Pid :: pid()} | ignore | {error, Reason :: term()}.
start_link(_Ops) ->
    gen_server:start_link(?MODULE, [], []).

%%%===================================================================
%%% gen_server callbacks
%%%===================================================================

init([]) ->
    {ok, #state{}}.
handle_call(_Request, _From, State) ->
    {reply, ok, State}.
handle_cast(_Request, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
