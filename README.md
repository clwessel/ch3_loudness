# Data variable index

* **Participant**: Unique ID for each study participant
* **session**: Unique ID for each experimental session a participant took part in.
* **level**: Difference in ms between the standard and comparator in a given trial.
* **repetition**: Unique ID for each repetition of a given staircase a participant took part in.
* **trial_index**: Unique ID for each type of staircase (based on its combination of independent variables).
* **trial_num**: Number of trials passed in a gievn staircase.
* **first**: Energy in dB of the standard tone.
* **second**: Energy in dB of the comparator tone.
* **random**: Roving added to the standard and comparator.
* **adjust**: Correction added to standard and comparator if dB value is out of bounds.
* **envelope_1**: Amplitude envelope of the standard tone.
* **envelope_2**: Amplitude envelope of the comparator tone.
* **n_reversal**: Total number of reversals that have occurred in a given staircase.
* **c_reversal**: Number of *consecutive* reversals that have occurred in a given staircase.
* **c_stop**: Number of *consecutive* reversals that have occurred in a given staircase *at the lowest step size* (thereby fulfilling the stop rule in Experiment 3).
* **l_reversal**: Was this trial a reversal?
* **t_step_size_up**: How large are upward steps on this trial? (in dB)
* **t_step_size_down**: How large are downward steps on this trial? (in dB)
* **stim_order**: Was the standard or comparator presented first (SC for the former, CS for the latter).
* **resp**: Did the participant say the comparator was longer on a given trial? (0 for no, 1 for yes).
* **block**: Which experimental block is the participant in currently?
* **trials.thisN**: Total number of trials that have passed across the entire experiment.
* **direction**: Did the comparator start above or below the standard in this staircase?
* **type**: Is the tone comparison homogenous or heterogenous?
* **Time**: Amount of time participant took to complete the experiment.
* **start_id**: Unique ID representing proportional magnitude of standard tone duration.
* **Gender**: Participant gender.
* **age**: Participant age.
