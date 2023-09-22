class adder_env;
  adder_agent agent;
  task run();
    agent = new();
    agent.run();
  endtask
endclass
