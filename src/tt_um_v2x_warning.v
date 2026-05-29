module tt_um_v2x_warning(
    input  [7:0] ui_in,
    output [7:0] uo_out,
    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,
    input        ena,
    input        clk,
    input        rst_n
);

wire collision_warning;
wire alert_signal;

collision_detector detector (
    .vehicle1_pos(vehicle1_pos),
    .vehicle2_pos(vehicle2_pos),
    .collision_warning(collision_warning)
);

v2v_controller controller (
    .collision_warning(collision_warning),
    .alert_signal(alert_signal)
);

assign uo_out = {7'b0000000, alert_signal};

assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

endmodule
