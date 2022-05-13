module CNN_DUT
(
//////////////////////////////////////////////////////////////////////////////////
//Clock and Reset Schema
//////////////////////////////////////////////////////////////////////////////////
input             clk             ,
input             reset           ,

//////////////////////////////////////////////////////////////////////////////////
//Control Signals
//////////////////////////////////////////////////////////////////////////////////
input             go              ,
output reg        busy            ,

//////////////////////////////////////////////////////////////////////////////////
//Input Matrix and Weight Adressing
//////////////////////////////////////////////////////////////////////////////////
output reg [11:0] Matrix_Address  ,
output reg [11:0] Weight_Address  ,

//////////////////////////////////////////////////////////////////////////////////
//Input and Weight Matrix Data
//////////////////////////////////////////////////////////////////////////////////
input      [15:0] Read_Matrix_Data,
input      [15:0] Read_Weight_Data,

//////////////////////////////////////////////////////////////////////////////////
//Write Output Signals
//////////////////////////////////////////////////////////////////////////////////
output reg        Write_Enable    ,
output reg [11:0] Write_Address   ,
output reg [15:0] Write_Data
);

//////////////////////////////////////////////////////////////////////////////////
//Read Data and Address Enables
//////////////////////////////////////////////////////////////////////////////////
reg               Read_Address_Enable;
reg               Read_Data_Enable;

//////////////////////////////////////////////////////////////////////////////////
//FSM State Signals
//////////////////////////////////////////////////////////////////////////////////
reg [2:0]         FSM_Current_State;
reg [2:0]         FSM_Next_State;

//////////////////////////////////////////////////////////////////////////////////
//Input Matrix & Weight Data Registers
//////////////////////////////////////////////////////////////////////////////////
reg [15:0]        Input_Data;
reg [8:0]         Weight_Data;

//////////////////////////////////////////////////////////////////////////////////
//Enable for Outputs to be Written
//////////////////////////////////////////////////////////////////////////////////
reg               Output_Enable;

//////////////////////////////////////////////////////////////////////////////////
//Enable to Start Convolution
//////////////////////////////////////////////////////////////////////////////////
reg               Conv_Enable;

//////////////////////////////////////////////////////////////////////////////////
//XNOR Calculation Registers
//////////////////////////////////////////////////////////////////////////////////
reg [8:0]         filter1;
reg [8:0]         filter2;
reg [8:0]         filter3;
reg [8:0]         filter4;

//////////////////////////////////////////////////////////////////////////////////
//Sign of Convolution Filters
//////////////////////////////////////////////////////////////////////////////////
reg signed [8:0]  result1;
reg signed [8:0]  result2;
reg signed [8:0]  result3;
reg signed [8:0]  result4;

//////////////////////////////////////////////////////////////////////////////////
//Result to be Written as 1 or 0
//////////////////////////////////////////////////////////////////////////////////
reg               Conv_Result1;
reg               Conv_Result2;
reg               Conv_Result3;
reg               Conv_Result4;

//////////////////////////////////////////////////////////////////////////////////
//FSM States- One Hot Encoding Schema
//////////////////////////////////////////////////////////////////////////////////
parameter [2:0]   FSM_S0    = 3'b001;
parameter [2:0]   FSM_S1    = 3'b010;
parameter [2:0]   FSM_S2    = 3'b100;

//////////////////////////////////////////////////////////////////////////////////
//Convolution Output to be Concatenated and Padded
//////////////////////////////////////////////////////////////////////////////////
wire [15:0]       Output_Conv;

//////////////////////////////////////////////////////////////////////////////////
//Integer Used for Bit Iterations
//////////////////////////////////////////////////////////////////////////////////
integer           i;

//////////////////////////////////////////////////////////////////////////////////
//FSM State Transition Block
//////////////////////////////////////////////////////////////////////////////////
always@(posedge clk or negedge reset)
    begin
        if(!reset) begin      //If Active Low Reset Transition to State Zero
            FSM_Current_State <= FSM_S0;
        end
        else begin            //Otherwise Transition to Next State on Rising Edge
            FSM_Current_State <= FSM_Next_State; 
        end
    end

//////////////////////////////////////////////////////////////////////////////////
// FSM to Dictate Control Signals
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin

//////////////////////////////////////////////////////////////////////////////////
// Always Output Address in State Zero then Read in Data and Set Busy High 
// when Go Asserted
//////////////////////////////////////////////////////////////////////////////////
  casex (FSM_Current_State)
    FSM_S0: begin
      Read_Address_Enable       = 1'b1;
      Read_Data_Enable          = 1'b0;
      busy                      = 1'b0;
      Conv_Enable               = 1'b0;
      Output_Enable             = 1'b0;
      FSM_Next_State            = FSM_S0;
        if(go) begin            //Read In Data
          Read_Address_Enable   = 1'b0;
          Read_Data_Enable      = 1'b1;
          FSM_Next_State        = FSM_S1;
        end
    end

//////////////////////////////////////////////////////////////////////////////////
// Start Convolution and Set Output Enable to Write Next Cycle
//////////////////////////////////////////////////////////////////////////////////
    FSM_S1: begin
      Read_Address_Enable       = 1'b0;
      Read_Data_Enable          = 1'b0;
      busy                      = 1'b1;
      Conv_Enable               = 1'b1;
      Output_Enable             = 1'b1;
      FSM_Next_State            = FSM_S2;
    end

//////////////////////////////////////////////////////////////////////////////////
// Wait Until Write Done then Set Busy Low When in State Zero
//////////////////////////////////////////////////////////////////////////////////
    FSM_S2:begin 
      Read_Address_Enable       = 1'b0;
      Read_Data_Enable          = 1'b0;
      busy                      = 1'b1;
      Conv_Enable               = 1'b1;
      Output_Enable             = 1'b0;
      FSM_Next_State            = FSM_S0;
    end
  
//////////////////////////////////////////////////////////////////////////////////
//Default to Prevent Latch
//////////////////////////////////////////////////////////////////////////////////
    default : begin
      Read_Address_Enable       = 1'b0;
      Read_Data_Enable          = 1'b0;
      busy                      = 1'b0;
      Conv_Enable               = 1'b0;
      Output_Enable             = 1'b0;
      FSM_Next_State            = FSM_S0;
    end
  endcase
end

//////////////////////////////////////////////////////////////////////////////////
//Weight and Matrix Read Addressing Registers
//////////////////////////////////////////////////////////////////////////////////
always@(posedge clk) begin
  if (Read_Address_Enable == 1'b1) begin
    Matrix_Address <= 12'b0;
    Weight_Address <= 12'b0;
  end
  else if (Read_Address_Enable == 1'b0) begin
    Matrix_Address <= Matrix_Address;
    Weight_Address <= Weight_Address;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Matrix & Weight Input Registers
//////////////////////////////////////////////////////////////////////////////////
always@(posedge clk) begin
  if (Read_Data_Enable == 1'b1) begin
      Input_Data  <= Read_Matrix_Data;
      Weight_Data <= Read_Weight_Data[8:0];
    end
  else if(Read_Data_Enable == 1'b0) begin
      Input_Data  <= Input_Data;
      Weight_Data <= Weight_Data;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//XNOR'ing For Each Respective Filter
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  filter1 = 9'b0;
  filter2 = 9'b0;
  filter3 = 9'b0;
  filter4 = 9'b0;
  if (Conv_Enable) begin

    //////////////////////////////////////////////////////////////////////////////////
    //Filter 1 XNOR'ing
    //////////////////////////////////////////////////////////////////////////////////
    filter1[0] = ~(Input_Data[0]  ^ Weight_Data[0]);
    filter1[1] = ~(Input_Data[1]  ^ Weight_Data[1]);
    filter1[2] = ~(Input_Data[2]  ^ Weight_Data[2]);
    filter1[3] = ~(Input_Data[4]  ^ Weight_Data[3]);
    filter1[4] = ~(Input_Data[5]  ^ Weight_Data[4]);
    filter1[5] = ~(Input_Data[6]  ^ Weight_Data[5]);
    filter1[6] = ~(Input_Data[8]  ^ Weight_Data[6]);
    filter1[7] = ~(Input_Data[9]  ^ Weight_Data[7]);
    filter1[8] = ~(Input_Data[10] ^ Weight_Data[8]);
    
    //////////////////////////////////////////////////////////////////////////////////
    //Filter 2 XNOR'ing
    //////////////////////////////////////////////////////////////////////////////////
    filter2[0] = ~(Input_Data[1]  ^ Weight_Data[0]);
    filter2[1] = ~(Input_Data[2]  ^ Weight_Data[1]);
    filter2[2] = ~(Input_Data[3]  ^ Weight_Data[2]);
    filter2[3] = ~(Input_Data[5]  ^ Weight_Data[3]);
    filter2[4] = ~(Input_Data[6]  ^ Weight_Data[4]);
    filter2[5] = ~(Input_Data[7]  ^ Weight_Data[5]);
    filter2[6] = ~(Input_Data[9]  ^ Weight_Data[6]);
    filter2[7] = ~(Input_Data[10] ^ Weight_Data[7]);
    filter2[8] = ~(Input_Data[11] ^ Weight_Data[8]);
        
    //////////////////////////////////////////////////////////////////////////////////
    //Filter 3 XNOR'ing
    //////////////////////////////////////////////////////////////////////////////////
    filter3[0] = ~(Input_Data[4]  ^ Weight_Data[0]);
    filter3[1] = ~(Input_Data[5]  ^ Weight_Data[1]);
    filter3[2] = ~(Input_Data[6]  ^ Weight_Data[2]);
    filter3[3] = ~(Input_Data[8]  ^ Weight_Data[3]);
    filter3[4] = ~(Input_Data[9]  ^ Weight_Data[4]);
    filter3[5] = ~(Input_Data[10] ^ Weight_Data[5]);
    filter3[6] = ~(Input_Data[12] ^ Weight_Data[6]);
    filter3[7] = ~(Input_Data[13] ^ Weight_Data[7]);
    filter3[8] = ~(Input_Data[14] ^ Weight_Data[8]);
    
    //////////////////////////////////////////////////////////////////////////////////
    //Filter 4 XNOR'ing
    //////////////////////////////////////////////////////////////////////////////////
    filter4[0] = ~(Input_Data[5]  ^ Weight_Data[0]);
    filter4[1] = ~(Input_Data[6]  ^ Weight_Data[1]);
    filter4[2] = ~(Input_Data[7]  ^ Weight_Data[2]);
    filter4[3] = ~(Input_Data[9]  ^ Weight_Data[3]);
    filter4[4] = ~(Input_Data[10] ^ Weight_Data[4]);
    filter4[5] = ~(Input_Data[11] ^ Weight_Data[5]);
    filter4[6] = ~(Input_Data[13] ^ Weight_Data[6]);
    filter4[7] = ~(Input_Data[14] ^ Weight_Data[7]);
    filter4[8] = ~(Input_Data[15] ^ Weight_Data[8]);
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Calculate Filter Convolution Result Value 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
result1 = 9'b0;
if (Conv_Enable) begin
  for(i=0; i <= 8; i=i+1) 
    begin
    if (filter1[i] == 0)
      result1 = result1 - 1'b1;
    else if (filter1[i] == 1)
      result1 = result1 + 1'b1;
    end
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Calculate Filter Convolution Result Value 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  result2 = 9'b0;
  if (Conv_Enable) begin
    for(i=0; i <= 8; i=i+1) begin
      if (filter2[i] == 0)
        result2 = result2 - 1'b1;
      else if (filter2[i] == 1)
        result2 = result2 + 1'b1;
      end
    end
end

//////////////////////////////////////////////////////////////////////////////////
//Calculate Filter Convolution Result Value 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  result3 = 9'b0;
  if (Conv_Enable) begin
    for(i=0; i <= 8; i=i+1) begin
      if (filter3[i] == 0)
        result3 = result3 - 1'b1;
      else if (filter3[i] == 1)
        result3 = result3 + 1'b1;
      end
    end
end

//////////////////////////////////////////////////////////////////////////////////
//Calculate Filter Convolution Result Value 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  result4 = 9'b0;
  if (Conv_Enable) begin
    for(i=0; i <= 8; i=i+1) 
      begin
      if (filter4[i] == 0)
        result4 = result4 - 1'b1;
      else if (filter4[i] == 1)
        result4 = result4 + 1'b1;
      end
    end
end

//////////////////////////////////////////////////////////////////////////////////
//Write a One or Zero if Positive or Negative Result 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  Conv_Result1 = 1'b0;
  if (Conv_Enable) begin
    if (result1 > 0) 
      Conv_Result1 = 1'b1;
    else if(result1 < 0)
      Conv_Result1 = 1'b0;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Write a One or Zero if Positive or Negative Result 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  Conv_Result2 = 1'b0;
  if (Conv_Enable) begin
    if (result2 > 0) 
      Conv_Result2 = 1'b1;
    else if(result2 < 0)
      Conv_Result2 = 1'b0;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Write a One or Zero if Positive or Negative Result 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  Conv_Result3 = 1'b0;
  if (Conv_Enable) begin
    if (result3 > 0) 
      Conv_Result3 = 1'b1;
    else if(result3 < 0)
      Conv_Result3 = 1'b0;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Write a One or Zero if Positive or Negative Result 
//////////////////////////////////////////////////////////////////////////////////
always@(*) begin
  Conv_Result4 = 1'b0;
  if (Conv_Enable) begin
    if (result4 > 0) 
      Conv_Result4 = 1'b1;
    else if(result4 < 0)
      Conv_Result4 = 1'b0;
  end
end

//////////////////////////////////////////////////////////////////////////////////
//Concatenate the Convolution Filters with Padding to Output SRAM 
//////////////////////////////////////////////////////////////////////////////////
assign Output_Conv = {12'b0, Conv_Result4, Conv_Result3, Conv_Result2, Conv_Result1};

//////////////////////////////////////////////////////////////////////////////////
//Write to SRAM 
//////////////////////////////////////////////////////////////////////////////////
always@(posedge clk) begin
  if (Output_Enable == 1)
    begin
      Write_Enable  <= 1'b1;
      Write_Address <= 12'b0;
      Write_Data    <= Output_Conv;
    end
  else
    begin
      Write_Enable  <= 1'b0;
      Write_Address <= Write_Address;
      Write_Data    <= Write_Data;
    end
end

endmodule