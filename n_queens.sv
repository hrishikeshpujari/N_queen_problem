class queen #(int T);
  rand int Q[T];

  constraint queen_position_constraint{
    foreach(Q[i])
      Q[i] inside {[1:T]};
  }

  constraint to_have_unique_queen_position{
     unique {Q};
  }
  
  constraint to_make_sure_queens_are_not_in_adjacent_home_diagonally{
    foreach(Q[i])
      foreach(Q[j])
        if(i!=j)
          !((Q[i]-Q[j]) inside {(i-j), (j-i)});
  }

endclass

module n_queen_problem;

  initial begin

    queen #(10) a;
    queen #(4) b;
    a = new();
    b = new();
   
    repeat(2) begin
		a.randomize();
		$display("a.Q = %p", qc1.Q);
		b.randomize();
		$display("a.Q = %p", qc2.Q);
	end

    
   

  end

endmodule