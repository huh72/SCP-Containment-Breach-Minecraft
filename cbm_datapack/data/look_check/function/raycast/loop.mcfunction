scoreboard players add .iterations lookcheck 1
particle end_rod
$say distance- $(distanceBetweenCheck)

$execute positioned ^ ^ ^$(distanceBetweenCheck) if score .iterations lookcheck <= .requestedIterations lookcheck run function look_check:raycast/loop with storage cb:lookcheck