.PHONY: clean format format-check

format:	 
	 rebar3 fmt

format-check:	 	 
	 rebar3 fmt --check

clean:
	rebar3 clean