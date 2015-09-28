The UIDatePicker class implements an object that uses multiple rotating wheels to allow users to select dates and times. iPhone examples of a date picker are the Timer and Alarm (Set Alarm) panes of the Clock application. You may also use a date picker as a countdown timer.

When properly configured, a UIDatePicker object sends an action message when a user finishes rotating one of the wheels to change the date or time; the associated control event is UIControlEventValueChanged. A UIDatePicker object presents the countdown timer but does not implement it; the application must set up an NSTimer object and update the seconds as they’re counted down.
