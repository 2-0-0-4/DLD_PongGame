
Pong Toss Game
Afeera Umair, Aliza Fatima, Hamayel Mashkoor, Maria Aqeel, Zainab Zahid

Overview
The Pong Toss Game is an arcade-style game implemented on an FPGA using Verilog. Players throw balls into cups with IR sensors to score points. The game features real-time score tracking on a VGA display, a countdown timer, and auditory feedback from a buzzer.

Key Features
IR Sensors: Detect ball placement in cups to update score.
VGA Display: Shows the score, cups, and end-game result.
Finite State Machine (FSM): Manages game flow from start to end.
Buzzer: Signals the end of the game.

Game Flow
Initialization: The system is set up, and the game waits for player input.
Gameplay: Players throw balls into cups, and the score is updated in real-time.
End of Game: After two minutes, the game ends, displaying the result and sounding the buzzer.
