REBAR=$(shell which rebar || echo ./rebar)

all: compile

./rebar:
	wget https://github.com/downloads/basho/rebar/rebar
	chmod +x ./rebar

compile: $(REBAR)
	@$(REBAR) compile

clean: $(REBAR)
	@$(REBAR) clean

test: $(REBAR) compile
	@$(REBAR) eunit
