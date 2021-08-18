;--------------------------------|
; Arquivo CMD - Terry (KoF2k3)   |
; criado por Ixnaydk             |
;--------------------------------|
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "burning_artillery"
command = ~D,DB,B,D,DF,F,x+b
time = 35

[Command]
name = "wolf_power"
command = ~D,DF,F,D,DB,B,y+b
time = 35

[Command]
name = "power_explosion"
command = ~D,DF,F,D,DB,B,x+a
time = 35

[Command]
name = "power_stream"
command = ~D,DB,B,D,DF,F,x+y
time = 35

[Command]
name = "triple_geyser"
command = ~D,DB,B,D,DB,B,x+y
time = 35

[Command]
name = "high_angle_triple_geyser"
command = ~D,DB,B,D,DB,B,a+b
time = 35

[Command]
name = "raising_beat"
command = ~D,DF,F,D,DF,F,a+b
time = 35

[Command]
name = "heat_up_geyser"
command = ~D,DF,F,D,DF,F,x+y
time = 35

[Command]
name = "high_angle_geyser"
command = ~D,DB,B,D,DB,B,a
time = 25

[Command]
name = "high_angle_geyser_b"
command = ~D,DB,B,D,DB,B,b
time = 25

[Command]
name = "power_geyser"
command = ~D,DB,B,D,DB,B,x
time = 25

[Command]
name = "power_geyser_y"
command = ~D,DB,B,D,DB,B,y
time = 25

[Command]
name = "buster_wolf"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "buster_wolf_b"
command = ~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "power_charge"
command = ~B,DB,D,DF,F,a
time = 25

[Command]
name = "power_charge_b"
command = ~B,DB,D,DF,F,b
time = 25

[Command]
name = "power_dunk"
command = ~F,D,DF,a
time = 15

[Command]
name = "power_dunk_b"
command = ~F,D,DF,b
time = 15

[Command]
name = "power_wave"
command = ~D,DF,F,x
time = 15

[Command]
name = "power_wave_y"
command = ~D,DF,F,y
time = 15

[Command]
name = "round_wave_a"
command = ~D,DF,F,a
time = 15

[Command]
name = "round_wave_b"
command = ~D,DF,F,/b
time = 15

[Command]
name = "crack_shoot"
command = ~D,DB,B,a
time = 15

[Command]
name = "crack_shoot_b"
command = ~D,DB,B,b
time = 15

[Command]
name = "burn_knuckle"
command = ~D,DB,B,x
time = 15

[Command]
name = "burn_knuckle_y"
command = ~D,DB,B,y
time = 15

[Command]
name = "continua"
command = F,F,a
time = 15

[Command]
name = "continua"
command = F,F,b
time = 15

[Command]
name = "FF"     
command = F,F
time = 10

[Command]
name = "BB"     
command = B,B
time = 10

[Command]
name = "max_dunk"
command = a+b
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "back"
command = B
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "segurara"
command = /a
time = 1

[Command]
name = "segurarb"
command = /b
time = 1

[Command]
name = "soltarb"
command = ~b
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2" 
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Statedef -1]
;-----------------------------|
;Winane AI's Helper Check     |
;-----------------------------|

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;-----------------------|
;Estados da IA - Defesa |
;-----------------------|
[State -1]
type = ChangeState
value = 130
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType != A && EnemyNear,MoveType = A && EnemyNear, StateType != C && Ctrl)

[State -1]
type = ChangeState
value = 131
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType != A && EnemyNear,MoveType = A && EnemyNear,StateType = C && Ctrl)

[State -1]
type = ChangeState
value = 132
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType = A && EnemyNear,MoveType = A && EnemyNear,StateType != C && Ctrl)

;--------------------|
;Chute Forte Aéreo   |
;--------------------|
[State -1, Chute Forte Aéreo]
type = ChangeState
value = 415
triggerall = (Var(59) > 0&&StateType = A&&Ctrl)
trigger1 = Random <= 800

;--------------------|
;Burning Artillery   |
;--------------------|
[State -1, Burning Artillery]
type = ChangeState
value = 3150
triggerall = (Var(59)=0&&Var(14)=1&&Var(17)>0)
triggerall = (Power>=3000)
triggerall = (NumHelper(1005)=0&&NumHelper(1008)=0&&NumHelper(1011)=0)
triggerall = (Command="burning_artillery"&&StateType!=A)
trigger1 = (StateType=S&&Ctrl)

;-------------|
;Wolf Power   |
;-------------|
[State -1, Wolf Power]
type = ChangeState
value = 3100
triggerall = (Var(59)=0&&Var(14)=0&&Var(15)=0&&Var(17)>0)
triggerall = (Power>=1000&&Life<=450)
triggerall = (Command="wolf_power"&&StateType!=A)
trigger1 = Ctrl

;------------------|
;Power Explosion   |
;------------------|
[State -1, Power Explosion]
type = ChangeState
value = 3080
triggerall = (Var(59)=0&&Var(14)=1&&Var(17)>0)
triggerall = (Power>=2000&&Life<=450)
triggerall = (NumHelper(1005)=0&&NumHelper(1008)=0&&NumHelper(1011)=0)
triggerall = (Command="power_explosion"&&StateType!=A)
trigger1 = (StateType=S&&Ctrl)

;---------------|
;Power Stream   |
;---------------|
[State -1, Power Stream]
type = ChangeState
value = 3040
triggerall = (Var(59) = 0&&Power >= 3000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "power_stream"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;----------------|
;Triple Geyser   |
;----------------|
[State -1, Triple Geyser]
type = ChangeState
value = 3020
triggerall = (Var(59) = 0&&Power >= 3000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "triple_geyser"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)
trigger3 = (MoveContact&&Time>11&&StateNo=210)

;---------------------------|
;High Angle Triple Geyser   |
;---------------------------|
[State -1, High Angle Triple Geyser]
type = ChangeState
value = 3060
triggerall = (Var(59) = 0&&Power >= 3000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "high_angle_triple_geyser"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;---------------|
;Raising Beat   |
;---------------|
[State -1, Raising Beat]
type = ChangeState
value = 3050
triggerall = (Var(59) = 0&&Power >= 2000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "raising_beat"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>3&&StateNo=300)

;-----------------|
;Heat Up Geyser   |
;-----------------|
[State -1, Heat Up Geyser]
type = ChangeState
value = 3070
triggerall = (Var(59) = 0&&Power >= 2000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "heat_up_geyser"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;--------------------|
;High Angle Geyser   |
;--------------------|
[State -1, High Angle Geyser]
type = ChangeState
value = 3030
triggerall = (Var(59) = 0&&Power >= 1000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = ((Command = "high_angle_geyser"||Command = "high_angle_geyser_b")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;---------------|
;Power Geyser   |
;---------------|
[State -1, Power Geyser]
type = ChangeState
value = 3010
triggerall = (Var(59) = 0&&Power >= 1000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = ((Command = "power_geyser"||Command = "power_geyser_y")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)
trigger3 = (MoveContact&&Time>3&&StateNo=310)
trigger4 = (MoveContact&&Time>11&&StateNo=210)

;--------------|
;Buster Wolf   |
;--------------|
[State -1, Buster Wolf]
type = ChangeState
value = 3000
triggerall = (Var(59) = 0&&Power >= 1000)
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = ((Command = "buster_wolf"||Command = "buster_wolf_b")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>3&&StateNo=300)
trigger3 = (MoveContact&&Time>11&&StateNo=210)

;---------------|
;Power Charge   |
;---------------|
[State -1, Power Charge]
type = ChangeState
value = 1080
triggerall = Var(59) = 0
triggerall = ((Command = "power_charge"||Command = "power_charge_b")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)
trigger3 = (MoveContact&&Time>11&&StateNo=210)

;---------------------|
;Power Dunk - Fraco   |
;---------------------|
[State -1, Power Dunk - Fraco]
type = ChangeState
value = 1060
triggerall = Var(59) = 0
triggerall = (Command = "power_dunk"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;---------------------|
;Power Dunk - Forte   |
;---------------------|
[State -1, Power Dunk - Forte]
type = ChangeState
value = 1062
triggerall = Var(59) = 0
triggerall = (Command = "power_dunk_b"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;---------------------|
;Power Wave - Fraco   |
;---------------------|
[State -1, Power Wave - Fraco]
type = ChangeState
value = 1000
triggerall = Var(59) = 0
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "power_wave"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;---------------------|
;Power Wave - Forte   |
;---------------------|
[State -1, Power Wave - Forte]
type = ChangeState
value = 1007
triggerall = Var(59) = 0
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "power_wave_y"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;---------------------|
;Round Wave - Fraco   |
;---------------------|
[State -1, Round Wave - Fraco]
type = ChangeState
value = 1010
triggerall = Var(59) = 0
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = (Command = "round_wave_a"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;---------------------|
;Round Wave - Forte   |
;---------------------|
[State -1, Round Wave - Forte]
type = ChangeState
value = 1012
triggerall = Var(59) = 0
triggerall = (NumHelper(1005) = 0&&NumHelper(1008) = 0&&NumHelper(1011) = 0)
triggerall = ((Command = "round_wave_b"&&Command = "segurarb")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;----------------------|
;Crack Shoot - Fraco   |
;----------------------|
[State -1, Crack Shoot - Fraco]
type = ChangeState
value = 1040
triggerall = Var(59) = 0
triggerall = (Command = "crack_shoot"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)

;----------------------|
;Crack Shoot - Forte   |
;----------------------|
[State -1, Crack Shoot - Forte]
type = ChangeState
value = 1045
triggerall = Var(59) = 0
triggerall = (Command = "crack_shoot_b"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)

;-----------------------|
;Burn Knuckle - Fraco   |
;-----------------------|
[State -1, Burn Knuckle - Fraco]
type = ChangeState
value = 1020
triggerall = Var(59) = 0
triggerall = (Command = "burn_knuckle"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;-----------------------|
;Burn Knuckle - Forte   |
;-----------------------|
[State -1, Burn Knuckle - Forte]
type = ChangeState
value = 1022
triggerall = Var(59) = 0
triggerall = (Command = "burn_knuckle_y"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;-----------|
;Max Dunk   |
;-----------|
[State -1, Max Dunk]
type = ChangeState
value = 1100
triggerall = (Var(59) = 0&&Var(14) = 1)
triggerall = (Command = "max_dunk"&&StateType != A)
trigger1 = (StateType = S&&Ctrl)
trigger2 = (MoveContact&&Time>11&&StateNo=210)

;--------------|
;Charge Kick   |
;--------------|
[State -1, Charge Kick]
type = ChangeState
value = 240
triggerall = Var(59) = 0
triggerall = (StateNo=100&&((Command="b"&&Command!="holddown")&&StateType != A))
trigger1 = (StateType = S&&Ctrl)

;---------|
;Correr   |
;---------|
[State -1, Correr]
type = ChangeState
value = 100
triggerall = Var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;----------------|
;Pulo Pra Tras   |
;----------------|
[State -1, Pulo Pra Tras]
type = ChangeState
value = 105
triggerall = Var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------|
;Just Defense   |
;---------------|
[State -1, Just Defense]
type = HitOverRide
triggerall = Command = "back"
trigger1 = (Ctrl&&StateType!=A)
trigger2 = StateNo = 150
trigger3 = StateNo = 600
attr = SA,NA,SA,HA,NP,SP,HP
stateno = 600
time = ifelse((StateNo=600),4,6)
ignorehitpause = 1

;-------------|
;Provocação   |
;-------------|
[State -1, Provocação]
type = ChangeState
value = 195
;triggerall = Var(59) = 0
triggerall = ((Command = "start"&&Command != "holddown")&&StateType != A)
trigger1 = (StateType = S&&Ctrl)

;-------------|
;Soco Fraco   |
;-------------|
[State -1, Soco Fraco]
type = ChangeState
value = 200
triggerall = Var(59) = 0
triggerall = ((Command = "x"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X >= 10&&Ctrl)

;-------------------|
;Soco Fraco Perto   |
;-------------------|
[State -1, Soco Fraco Perto]
type = ChangeState
value = 205
triggerall = Var(59) = 0
triggerall = ((Command = "x"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X < 10&&Ctrl)

;-------------|
;Soco Forte   |
;-------------|
[State -1, Soco Forte]
type = ChangeState
value = 210
triggerall = Var(59) = 0
triggerall = ((Command = "y"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X >= 15&&Ctrl)
trigger2 = (StateNo = 200&&Movecontact)
trigger3 = (StateNo = 205&&MoveContact)

;-------------------|
;Soco Forte Perto   |
;-------------------|
[State -1, Soco Forte Perto]
type = ChangeState
value = 215
triggerall = Var(59) = 0
triggerall = ((Command = "y"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X < 15&&Ctrl)
trigger2 = (StateNo = 200&&Movecontact)
trigger3 = (StateNo = 205&&MoveContact)

;--------------|
;Chute Fraco   |
;--------------|
[State -1, Chute Fraco]
type = ChangeState
value = 220
triggerall = Var(59) = 0
triggerall = ((Command = "a"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X >= 10&&Ctrl)
trigger2 = (MoveContact&&Time>6&&StateNo=200)

;--------------------|
;Chute Fraco Perto   |
;--------------------|
[State -1, Chute Fraco Perto]
type = ChangeState
value = 225
triggerall = Var(59) = 0
triggerall = ((Command = "a"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X < 10&&Ctrl)

;--------------|
;Chute Forte   |
;--------------|
[State -1, Chute Forte]
type = ChangeState
value = 230
triggerall = Var(59) = 0
triggerall = ((Command = "b"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X >= 21&&Ctrl)

;--------------------|
;Chute Forte Perto   |
;--------------------|
[State -1, Chute Forte Perto]
type = ChangeState
value = 235
triggerall = Var(59) = 0
triggerall = ((Command = "b"&&Command != "holddown")&&StateType != A)
trigger1 = (P2BodyDist X < 21&&Ctrl)

;----------------------|
;Soco Fraco Abaixado   |
;----------------------|
[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 300
triggerall = Var(59) = 0
triggerall = ((Command = "x"&&Command = "holddown")&&StateType = C)
trigger1 = Ctrl

;----------------------|
;Soco Forte Abaixado   |
;----------------------|
[State -1, Soco Forte Abaixado]
type = ChangeState
value = 305
triggerall = Var(59) = 0
triggerall = ((Command = "y"&&Command = "holddown")&&StateType = C)
trigger1 = Ctrl
trigger2 = (StateNo=300&&MoveContact)

;-----------------------|
;Chute Fraco Abaixado   |
;-----------------------|
[State -1, Chute Fraco Abaixado]
type = ChangeState
value = 310
triggerall = Var(59) = 0
triggerall = ((Command = "a"&&Command = "holddown")&&StateType = C)
trigger1 = Ctrl

;-----------------------|
;Chute Forte Abaixado   |
;-----------------------|
[State -1, Chute Forte Abaixado]
type = ChangeState
value = 315
triggerall = Var(59) = 0
triggerall = ((Command = "b"&&Command = "holddown")&&StateType = C)
trigger1 = Ctrl
trigger2 = (StateNo=310&&MoveContact)

;-------------------|
;Soco Fraco Aéreo   |
;-------------------|
[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 400
triggerall = Var(59) = 0
triggerall = ((Command = "x"&&Command != "holddown")&&StateType = A)
trigger1 = Ctrl

;-------------------|
;Soco Forte Aéreo   |
;-------------------|
[State -1, Soco Forte Aéreo]
type = ChangeState
value = 405
triggerall = Var(59) = 0
triggerall = ((Command = "y"&&Command != "holddown")&&StateType = A)
trigger1 = Ctrl

;--------------------|
;Chute Fraco Aéreo   |
;--------------------|
[State -1, Chute Fraco Aéreo]
type = ChangeState
value = 410
triggerall = Var(59) = 0
triggerall = ((Command = "a"&&Command != "holddown")&&StateType = A)
trigger1 = Ctrl

;--------------------|
;Chute Forte Aéreo   |
;--------------------|
[State -1, Chute Forte Aéreo]
type = ChangeState
value = 415
triggerall = Var(59) = 0
triggerall = ((Command = "b"&&Command != "holddown")&&StateType = A)
trigger1 = Ctrl