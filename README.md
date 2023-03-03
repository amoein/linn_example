# Linn Example
Running Example of Linn

## Installation

```bash

rebar3 compile

``` 

## Usage

```erlang

rebar3 shell

```

### Way 1

If you look at the `src/linn_example.erl` file, you will see that there is a `add_new_pool/0` function. This function is called by the `linn:add_pool`.

```erlang

```erlang   
1> linn_example:add_new_pool().
{ok,<0.192.0>}

2> linn_example:get_pid().
{ok,<0.204.0>}  
```

### Way 2
If you look at the `src/linn_example_sup.erl` file, You will see that there is a `linn:add_pool` function supervisor `init/1`. 
For get new process `linn_example_sup:get_pid/0` is going to use.

```erlang
3> linn_example_sup:get_pid().
{ok,<0.198.0>}
```
