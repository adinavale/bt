// A class for the binary tree homework problem.
//

class btclass;
 btclass lpt;
 btclass gpt;
 real value;

 function automatic void add(input btclass nn);
   begin
     if(nn.value < value) begin
       if(lpt) lpt.add(nn); else lpt=nn;
     end else begin
       if(gpt) gpt.add(nn); else gpt=nn;
     end
     return;
   end
 endfunction

 function automatic void printascending;
   begin
    if (lpt) begin
      lpt.printascending();
    end

    $display(value);

    if (gpt) begin
       gpt.printascending();
    end

    return;
   end
 endfunction
 
 function automatic void printdescending;
   begin
    if (gpt) begin
      gpt.printdescending(); 
    end

    $display(value);

    if begin
      (lpt) lpt.printdescending();
    end
    return;
   end
 endfunction


 function new(input real vl);
   begin
     value=vl;
     lpt=null;
     gpt=null;
   end
 endfunction

endclass

