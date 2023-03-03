-module(linn_example).

-export([add_new_pool/0, get_pid/0]).

-include_lib("linn/include/linn.hrl").

add_new_pool()->
    Opts = #option{
    pool_id = linn_test_2,
    handler_module = linn_example_test,
    handler_func = start_link,
    handler_func_arity = [],
    process_count = 4
    },    
linn:add_pool(Opts).

get_pid() ->
    linn:get_process(linn_test_2).