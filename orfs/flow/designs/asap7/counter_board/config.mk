export PLATFORM               = asap7

export DESIGN_NAME            = counter_board

export VERILOG_FILES          = $(FLOW_HOME)/../../verilog/rtl/counter_board.v
export SDC_FILE               = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc

export DIE_AREA               = 0 0 10 10
export CORE_AREA              = 1 1 9 9
export PLACE_DENSITY          = 0.50

# a smoketest for this option, there are a
# few last gasp iterations
export SKIP_LAST_GASP ?= 1