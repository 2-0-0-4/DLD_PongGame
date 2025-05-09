module pixel_endscreen(
    input clk_d, // pixel clock
    input [9:0] pixel_x,
    input [9:0] pixel_y,
    input video_on,
    input result, 
//    input home,
    input win, 
    input lose,
//    input btn, // New input for selecting pattern
    output reg [11:0] rgb = 12'hF00  // Default color is white
);
reg btn = 1'b1;
always @(posedge clk_d) begin
    // Default color (black)
    rgb <= 12'hF00; // Default color is white

//    // Pixel coordinates for each letter of "PLAYER1" when btn is 0
//    if (home == 1'b1) begin
//        // Conditions for displaying "PLAYER1" pattern
//        // Modify these conditions as needed
//        if (
//            // H conditions
////            (pixel_x >= 130 && pixel_x <= 150 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 150 && pixel_x <= 190 && pixel_y >= 155 && pixel_y <= 175)||
////            (pixel_x >= 190 && pixel_x <= 210 && pixel_y >= 80 && pixel_y <= 250)||
//           //S
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 410 && pixel_x <= 420 && pixel_y >= 280 && pixel_y <= 330)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 330 && pixel_y <= 340)||
//                (pixel_x >= 470 && pixel_x <= 480 && pixel_y >= 340 && pixel_y <= 390)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 390 && pixel_y <= 400)||
                
//         // C
//            (pixel_x >= 100 && pixel_x <= 180 && pixel_y >= 100 && pixel_y <= 110) || // Top horizontal line
//            (pixel_x >= 90 && pixel_x <= 100 && pixel_y >= 110 && pixel_y <= 190) ||  // Left vertical line
//            (pixel_x >= 100 && pixel_x <= 180 && pixel_y >= 190 && pixel_y <= 200) ||   // Bottom horizontal line

//        //O
//            (pixel_x >= 230 && pixel_x <= 250 && pixel_y >= 80 && pixel_y <= 250)||
//            (pixel_x >= 290 && pixel_x <= 310 && pixel_y >= 80 && pixel_y <= 250)||
//            (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 80 && pixel_y <= 100)||
//            (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 230 && pixel_y <= 250)||
////        //M
////            (pixel_x >= 330 && pixel_x <= 350 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 390 && pixel_x <= 410 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 350 && pixel_x <= 390 && pixel_y >= 80 && pixel_y <= 100)||
////            (pixel_x >= 360 && pixel_x <= 380 && pixel_y >= 100 && pixel_y <= 250)||
////R 
//                (pixel_x>=200 && pixel_x<=210 && pixel_y>=400 && pixel_y<=460)||
//                (pixel_x>=210 && pixel_x<=250 && pixel_y>=400 && pixel_y<=410)||
//                (pixel_x>=210 && pixel_x<=250 && pixel_y>=425 && pixel_y<=435)||
//                (pixel_x>=250 && pixel_x<=260 && pixel_y>=410 && pixel_y<=425)||
//                (pixel_x>=250 && pixel_x<=260 && pixel_y>=435 && pixel_y<=460)||
//        //E
//            (pixel_x >= 430 && pixel_x <= 450 && pixel_y >= 80 && pixel_y <= 250)||
//            (pixel_x >= 450 && pixel_x <= 520 && pixel_y >= 80 && pixel_y <= 100)||
//            (pixel_x >= 450 && pixel_x <= 510 && pixel_y >= 155 && pixel_y <= 175)||
//            (pixel_x >= 450 && pixel_x <= 520 && pixel_y >= 230 && pixel_y <= 250)||
////            begin
////            red<=4'h0;
////            green<=4'h0;
////            blue<=4'h0;
////            end
        
////            else
//             //W
//                (pixel_x >= 140 && pixel_x <= 150 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 170 && pixel_x <= 180 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 200 && pixel_x <= 210 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 140 && pixel_x <= 210 && pixel_y >= 390 && pixel_y <= 400)||
//            //I
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 390 && pixel_y <= 400)||
//                (pixel_x >= 260 && pixel_x <= 270 && pixel_y >= 280 && pixel_y <= 390)||
//            //N
//                (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 300 && pixel_x <= 310 && pixel_y >= 280 && pixel_y <= 400)||
//                (pixel_x >= 380 && pixel_x <= 390 && pixel_y >= 280 && pixel_y <= 400)||
//            //S
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 410 && pixel_x <= 420 && pixel_y >= 280 && pixel_y <= 330)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 330 && pixel_y <= 340)||
//                (pixel_x >= 470 && pixel_x <= 480 && pixel_y >= 340 && pixel_y <= 390)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 390 && pixel_y <= 400)||
// //           //!
// //               (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 260 && pixel_y <= 310)||
// //               (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 320 && pixel_y <= 330)||
//            //!
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 270 && pixel_y <= 380)||
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 390 && pixel_y <= 400)
//                ) begin
//            // Text color (light pink)
//            rgb <= {4'hF,4'hF,4'hF}; // High red, green, and blue (light pink)
//        end
//    end

//    if (win == 1'b1)  begin
//        // Conditions for displaying WIN pattern
//        // Modify these conditions as needed
//        if (    (pixel_x >= 140 && pixel_x <= 150 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 170 && pixel_x <= 180 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 200 && pixel_x <= 210 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 140 && pixel_x <= 210 && pixel_y >= 390 && pixel_y <= 400)||
//            //I
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 390 && pixel_y <= 400)||
//                (pixel_x >= 260 && pixel_x <= 270 && pixel_y >= 280 && pixel_y <= 390)||
//            //N
//                (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 300 && pixel_x <= 310 && pixel_y >= 280 && pixel_y <= 400)||
//                (pixel_x >= 380 && pixel_x <= 390 && pixel_y >= 280 && pixel_y <= 400)||
////            //S
////                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 270 && pixel_y <= 280)||
////                (pixel_x >= 410 && pixel_x <= 420 && pixel_y >= 280 && pixel_y <= 330)||
////                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 330 && pixel_y <= 340)||
////                (pixel_x >= 470 && pixel_x <= 480 && pixel_y >= 340 && pixel_y <= 390)||
////                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 390 && pixel_y <= 400)||
// //           //!
// //               (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 260 && pixel_y <= 310)||
// //               (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 320 && pixel_y <= 330)||
//            //!
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 270 && pixel_y <= 380)||
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 390 && pixel_y <= 400)
//                ) begin
//                rgb<={4'hF,4'hF,4'hF};
//                end
//      end
//////        A
////            if ((pixel_x >= 130 && pixel_x <= 150 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 190 && pixel_x <= 210 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 150 && pixel_x <= 190 && pixel_y >= 155 && pixel_y <= 175)||
////            (pixel_x >= 150 && pixel_x <= 190 && pixel_y >= 80 && pixel_y <= 100)||
//////        W
////            (pixel_x >= 230 && pixel_x <= 310 && pixel_y >= 230 && pixel_y <= 250)||
////            (pixel_x >= 230 && pixel_x <= 250 && pixel_y >= 80 && pixel_y <= 230)||
////            (pixel_x >= 260 && pixel_x <= 280 && pixel_y >= 80 && pixel_y <= 230)||
////            (pixel_x >= 290 && pixel_x <= 310 && pixel_y >= 80 && pixel_y <= 230)||
//////        A
////            (pixel_x >= 330 && pixel_x <= 350 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 390 && pixel_x <= 410 && pixel_y >= 80 && pixel_y <= 250)||
////            (pixel_x >= 350 && pixel_x <= 390 && pixel_y >= 80 && pixel_y <= 100)||
////            (pixel_x >= 350 && pixel_x <= 390 && pixel_y >= 155 && pixel_y <= 175)||
//////        Y
////            (pixel_x >= 420 && pixel_x <= 440 && pixel_y >= 80 && pixel_y <= 155)||
////            (pixel_x >= 500 && pixel_x <= 520 && pixel_y >= 80 && pixel_y <= 155)||
////            (pixel_x >= 420 && pixel_x <= 520 && pixel_y >= 155 && pixel_y <= 175)||
////            (pixel_x >= 460 && pixel_x <= 480 && pixel_y >= 175 && pixel_y <= 250)
////            ) begin
////            rgb<={4'hF,4'hF,4'hF};
////            end
//    end
//    if (lose == 1'b1 && result == 4'b1111) begin 
//       if (   
//            //W
//                (pixel_x >= 140 && pixel_x <= 150 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 170 && pixel_x <= 180 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 200 && pixel_x <= 210 && pixel_y >= 270 && pixel_y <= 400)||
//                (pixel_x >= 140 && pixel_x <= 210 && pixel_y >= 390 && pixel_y <= 400)||
//            //I
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 390 && pixel_y <= 400)||
//                (pixel_x >= 260 && pixel_x <= 270 && pixel_y >= 280 && pixel_y <= 390)||
//            //N
//                (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 300 && pixel_x <= 310 && pixel_y >= 280 && pixel_y <= 400)||
//                (pixel_x >= 380 && pixel_x <= 390 && pixel_y >= 280 && pixel_y <= 400)||
//            //S
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 270 && pixel_y <= 280)||
//                (pixel_x >= 410 && pixel_x <= 420 && pixel_y >= 280 && pixel_y <= 330)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 330 && pixel_y <= 340)||
//                (pixel_x >= 470 && pixel_x <= 480 && pixel_y >= 340 && pixel_y <= 390)||
//                (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 390 && pixel_y <= 400)||
                
//           //!
//                (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 260 && pixel_y <= 310)||
//                (pixel_x >= 405 && pixel_x <= 415 && pixel_y >= 320 && pixel_y <= 330)||
//            //!
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 270 && pixel_y <= 380)||
//                (pixel_x >= 500 && pixel_x <= 510 && pixel_y >= 390 && pixel_y <= 400)
//                ) 
//                begin
//                rgb<={4'hF,4'hF,4'hF};
//                end
//      end       
//      else begin
//    if (
//        //L
//            (pixel_x >= 140 && pixel_x <= 150 && pixel_y >= 270 && pixel_y <= 400)||
//            (pixel_x >= 140 && pixel_x <= 200 && pixel_y >= 390 && pixel_y <= 400)||
//        //O
//            (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 270 && pixel_y <= 280)||
//            (pixel_x >= 230 && pixel_x <= 240 && pixel_y >= 270 && pixel_y <= 400)||
//            (pixel_x >= 280 && pixel_x <= 290 && pixel_y >= 270 && pixel_y <= 400)||
//            (pixel_x >= 230 && pixel_x <= 290 && pixel_y >= 390 && pixel_y <= 400)||
//        //S
//            (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 270 && pixel_y <= 280)||
//            (pixel_x >= 300 && pixel_x <= 310 && pixel_y >= 280 && pixel_y <= 330)||
//            (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 330 && pixel_y <= 340)||
//            (pixel_x >= 380 && pixel_x <= 390 && pixel_y >= 340 && pixel_y <= 390)||
//            (pixel_x >= 300 && pixel_x <= 390 && pixel_y >= 390 && pixel_y <= 400)||
//        //T
//            (pixel_x >= 410 && pixel_x <= 480 && pixel_y >= 270 && pixel_y <= 280)||
//            (pixel_x >= 440 && pixel_x <= 450 && pixel_y >= 280 && pixel_y <= 400)
//        ) 
//        begin
//            rgb <= {4'hF,4'hF,4'hF}; // Display "LOST"
//        end
//end

if (win == 1'b1) begin
    // "YOU" Display (Top)
    if (
       // Y
        (pixel_x >= 120 && pixel_x <= 140 && pixel_y >= 80 && pixel_y <= 155) || 
        (pixel_x >= 200 && pixel_x <= 220 && pixel_y >= 80 && pixel_y <= 155) ||
        (pixel_x >= 120 && pixel_x <= 220 && pixel_y >= 155 && pixel_y <= 175) ||
        (pixel_x >= 160 && pixel_x <= 180 && pixel_y >= 175 && pixel_y <= 250) ||
        
         // (pixel_x >= 230 && pixel_x <= 250 && pixel_y >= 80 && pixel_y <= 250)||
//            (pixel_x >= 290 && pixel_x <= 310 && pixel_y >= 80 && pixel_y <= 250)||
//            (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 80 && pixel_y <= 100)||
//            (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 230 && pixel_y <= 250)||

        // O
        (pixel_x >= 250 && pixel_x <= 270 && pixel_y >= 80 && pixel_y <= 250) || 
        (pixel_x >= 300 && pixel_x <= 320 && pixel_y >= 80 && pixel_y <= 250) || 
        (pixel_x >= 270 && pixel_x <= 300 && pixel_y >= 80 && pixel_y <= 100) || 
        (pixel_x >= 270 && pixel_x <= 300 && pixel_y >= 230 && pixel_y <= 250) ||

//    // O
//        (pixel_x >= 230 && pixel_x <= 250 && pixel_y >= 80 && pixel_y <= 250)||
//        (pixel_x >= 290 && pixel_x <= 310 && pixel_y >= 80 && pixel_y <= 250)||
//        (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 80 && pixel_y <= 100)||
//        (pixel_x >= 250 && pixel_x <= 290 && pixel_y >= 230 && pixel_y <= 250)||
        
        // U
        (pixel_x >= 330 && pixel_x <= 350 && pixel_y >= 80 && pixel_y <= 240) ||
        (pixel_x >= 410 && pixel_x <= 430 && pixel_y >= 80 && pixel_y <= 240) ||
        (pixel_x >= 330 && pixel_x <= 430 && pixel_y >= 240 && pixel_y <= 250)
    ) begin
        rgb <= {4'hF, 4'hF, 4'hF}; // White for "YOU"
    end

    // "WIN" Display (Bottom)
    else if (
        // W
        (pixel_x >= 120 && pixel_x <= 140 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 160 && pixel_x <= 180 && pixel_y >= 300 && pixel_y <= 370) ||
        (pixel_x >= 200 && pixel_x <= 220 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 120 && pixel_x <= 220 && pixel_y >= 380 && pixel_y <= 400) ||

        // I
        (pixel_x >= 240 && pixel_x <= 300 && pixel_y >= 300 && pixel_y <= 310) ||
        (pixel_x >= 270 && pixel_x <= 280 && pixel_y >= 310 && pixel_y <= 390) ||
        (pixel_x >= 240 && pixel_x <= 300 && pixel_y >= 390 && pixel_y <= 400) ||

        // N
        (pixel_x >= 320 && pixel_x <= 340 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 400 && pixel_x <= 420 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 340 && pixel_x <= 400 && pixel_y >= 300 && pixel_y <= 320)
    ) begin
        rgb <= {4'hF, 4'hF, 4'hF}; // White for "WIN"
    end
end else begin
    // "YOU" Display (Top)
    if (
    
       // Y
        (pixel_x >= 120 && pixel_x <= 140 && pixel_y >= 80 && pixel_y <= 155) || 
        (pixel_x >= 200 && pixel_x <= 220 && pixel_y >= 80 && pixel_y <= 155) ||
        (pixel_x >= 120 && pixel_x <= 220 && pixel_y >= 155 && pixel_y <= 175) ||
        (pixel_x >= 160 && pixel_x <= 180 && pixel_y >= 175 && pixel_y <= 250) ||
       // O
        (pixel_x >= 250 && pixel_x <= 270 && pixel_y >= 80 && pixel_y <= 250) || 
        (pixel_x >= 300 && pixel_x <= 320 && pixel_y >= 80 && pixel_y <= 250) || 
        (pixel_x >= 270 && pixel_x <= 300 && pixel_y >= 80 && pixel_y <= 100) || 
        (pixel_x >= 270 && pixel_x <= 300 && pixel_y >= 230 && pixel_y <= 250) ||

        // U
        (pixel_x >= 330 && pixel_x <= 350 && pixel_y >= 80 && pixel_y <= 240) ||
        (pixel_x >= 410 && pixel_x <= 430 && pixel_y >= 80 && pixel_y <= 240) ||
        (pixel_x >= 330 && pixel_x <= 430 && pixel_y >= 240 && pixel_y <= 250)
        
    ) begin
        rgb <= {4'hF, 4'hF, 4'hF}; // White for "YOU"
    end

    // "LOSE" Display (Bottom)
    else if (
        // L
        (pixel_x >= 120 && pixel_x <= 140 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 120 && pixel_x <= 180 && pixel_y >= 380 && pixel_y <= 400) ||

        // O
        (pixel_x >= 200 && pixel_x <= 260 && pixel_y >= 300 && pixel_y <= 310) ||
        (pixel_x >= 200 && pixel_x <= 220 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 240 && pixel_x <= 260 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 200 && pixel_x <= 260 && pixel_y >= 390 && pixel_y <= 400) ||

        // S
        (pixel_x >= 280 && pixel_x <= 340 && pixel_y >= 300 && pixel_y <= 310) ||
        (pixel_x >= 280 && pixel_x <= 300 && pixel_y >= 300 && pixel_y <= 340) ||
        (pixel_x >= 280 && pixel_x <= 340 && pixel_y >= 330 && pixel_y <= 340) ||
        (pixel_x >= 320 && pixel_x <= 340 && pixel_y >= 340 && pixel_y <= 390) ||
        (pixel_x >= 280 && pixel_x <= 340 && pixel_y >= 390 && pixel_y <= 400) ||

        // E
        (pixel_x >= 360 && pixel_x <= 380 && pixel_y >= 300 && pixel_y <= 400) ||
        (pixel_x >= 360 && pixel_x <= 420 && pixel_y >= 300 && pixel_y <= 310) ||
        (pixel_x >= 360 && pixel_x <= 420 && pixel_y >= 330 && pixel_y <= 340) ||
        (pixel_x >= 360 && pixel_x <= 420 && pixel_y >= 390 && pixel_y <= 400)
    ) begin
        rgb <= {4'hF, 4'hF, 4'hF}; // White for "LOSE"
    end
end

end // always ka end hai ye

endmodule
