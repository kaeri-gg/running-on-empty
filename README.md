# Running on Empty

> A platformer serious game with no way to win, and that's the point.

You play a chronic people-pleaser who takes every task that comes. Each task spikes your pleasure meter because you feel challenged and it's rewarding. But every level tightens the deadlines and piles on more tasks and responsibility, and the timer, the deadline, or the weight of everyone's expectations, never lets you stop. Your health quietly drains, your character slows, and no matter how skillfully you play, the ending is always the same: burnout or emotional collapse. The player's real "choice" is only *how* they arrive at the end, and discovering that there was never a way out is the emotional core of the game.



## Goal

No win, but a definite ending. The player will instinctively try to "beat" the game: take every task, hit every timer (deadline), keep both meters (pleasure and health) healthy. The game is tuned so that this strategy delays the ending but cannot prevent it. Every route the player can take surely results in collapse:

1. **Keep taking tasks**, health gradually drains, the character slows, and timers tighten faster than the player can adapt. Eventually the worn-down character is too slow to reach a task before its deadline expires. The **missed deadline is the collapse**, you don't burn out because you gave up, you burn out because you physically couldn't meet what was demanded fast enough. = game over.
2. **Stop taking tasks to rest (sleep portal) or idle**, the pleasure meter falls to zero. = game over (the player collapses).
3. **Stay in the sleep portal too long**, pleasure drops *and* the timers (deadlines) run out. = game over (the player collapses).

Whatever the player does, the escalation is built to outrun them.



## Core Loop

1. A level begins with a countdown timer (a deadline) and one or more tasks placed across platforms.
2. The player moves across platforms to reach and accept tasks.
3. Accepting a task spikes pleasure (fast); it feels rewarding, pulls the player onward, and gives a short speed boost.
4. Taking tasks quietly drains health and accumulates sleep deprivation, which lowers movement speed over time.
5. The timer and the pleasure meter both tick down together. Standing still (idle) drains pleasure.
6. Each level layers on more tasks and tighter deadlines than the last, as expectations climb higher and higher.
7. The escalation eventually outpaces the player, either a deadline is missed or a meter empties. The game ends in burnout.



## Player States

### 1. Pleasure, the life meter

Pleasure is what keeps the character going. When it reaches **0, the game ends** (the character has nothing left to run on). Pleasure is the trap: it is the meter that makes overwork feel good.

- **Idle / standing still** → pleasure slowly decreases.
- **Sleeping (via the sleep portal)** → pleasure increases very slowly.
- **Taking a task** → pleasure increases fast (2–3×). This is deliberate: it rewards the exact behavior that destroys the character, seducing the player into overwork.
- **High pleasure grants a sprint** → speed briefly jumps (e.g. default 300 → +70 for ~3 sec, then decays back down). The rush of a "yes" literally makes you faster, for a moment.

### 2. Health, the sleep-deprivation meter

Health governs how fast the character can move, and it erodes as tasks pile up without rest.

- **High health** → default speed (300).
- **Low health** → speed drops; the character is visibly worn down and sluggish.
- Health falls as the player takes tasks and skips rest; sleep deprivation compounds over a level.

As health drops, the character becomes slow enough that reaching tasks before their deadlines becomes impossible, which is what eventually triggers the collapse in Route 1.



## Design Intent

The game persuades through system and gameplay, not through slogans. The argument is structural: no amount of skill, optimization, or effort lets you out-work burnout when the demands never stop. The player's frustration at being unable to win is not a bug, it is the same frustration a person feels when they can never do enough, and it is the point.



## Future Implementation (not in current scope)

A **respect** stat (working term), tied to team tasks. Some tasks would require team contribution; if the player takes one but misses the deadline, teammates are forced to cover it, dropping the stat and showing that overcommitting doesn't just hurt the individual, it burdens everyone around them. Noted here as a planned extension, deliberately left out of the current build to keep scope focused.
