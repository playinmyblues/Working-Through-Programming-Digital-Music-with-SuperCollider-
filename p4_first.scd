/* These programs are taken from the book "Programming digital music with SuperCollder," by Peter Fitton. I am reading
it on my Kindle reader. This first program plays a sine wave. My program naming system is as follows:
p4_first.scd ----------- where "p" stands for page, The number "4" is the 4th page. "first" is is the actual name of the program. I often include a concept or some sort of particular aspect of the programming language at this point as well. But I might just use the program name as provided in the book.
*/

(
{
	ar sinewave;
	sinewavve = SinOsc.ar(freq:440, phase:0, mul:1, add:0);
}.play   // The book has a ; at the end of play. It does not work with it in place. I think I recall this particular
)        // quirk with SC when I was learning it before.

// To run this program you can highlight the whole section and press Ctrl-Enter. On a Mac, it would be Cmd-Enter.
// Alternatively, you can write it one line at a time, press Ctrl-Enter after each line and it should run. I was going
// to describe it the way it was in the book which was to go to the line and press Ctrl-Enter and do that line by line.
// However, I went to the line with var sinewave and pressed Ctrl-Enter and it highlighted the whole block of code,
// all of everything typed on each line between the encasing parentheses and ran it. I did it again and it sounded
// different. Maybe it was two sinewaves out of phase.
// Ctrl-. will stop the sound.

// The block of code between the pair of encasing parentheses is called a region and is considered all associated. It
// is a group of related statements.

// A piar of curly brackets, {}, ancases a function, to produce an output.

// a variable name begins with a lower case letter. A name that begins with a caprital letter is a class. SinOsc is a
// class.

// SC has 26 global varaibles, named a to z. You can use them and access them anywhere in a program. You need to avoid
// using s as it automatically represents the server.

// All other variables have local scope. They can only be accessed within the code block in which they are declared.
// Note that this IDE kind of is an interpreter. You can type bits of code and run it as described above, without
// having to assign it to a variable and it will run. See the line of code below.
{SinOsc.ar(freq:220, phase:0, mul:1, add:0);}.play
// The line of code below will also run but output into the Post Window. If the Post Window is not already up, select
// it.
2 + 2

// UGen - stands for Unit Generator. UGen's can operate at three rates: 1) audio rate, ar, 2) kr for control rate, and
// 3) ir for initialization rate.
// 1) ar is the default audio rate in SC which is 44.1Khz. The audio rate is also called the sample rate becasue its
// value is determined by the sampling rate frequency.
// 2) kr, control rate is the default control rate of SC. It is 1/64 of the audio rate, approx. 690Hz, 44,100Hz/64.
// 3) ir, initialization rate means once only, at the time of initialization. A class that does not change its value
// should operate at initialization rate.

// You can play audio different ways: play a function and play a synth. Later we will look at playing an event

// The way above actually creates a function. You can play that function by using the line of code below and running
// it the same way you would run the block of code, a function, above.
// This is kind of a review but there are some subtle differences to the syntax of the example below and the one
// above. Note the () encapsulating the whole thing, that the {} encapsulate the function but that is all on one line
// below. The the function is called and there is a semi-colon after play that is needed.
(
	var sinewave;
    sinewave = {SinOsc.ar(freq:440, phase:0, mul:1, add:0)};
    sinewave.play;
)

